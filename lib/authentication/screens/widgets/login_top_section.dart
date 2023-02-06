import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class LoginTopSection extends StatefulWidget {
  const LoginTopSection({super.key});

  @override
  State<LoginTopSection> createState() => _LoginTopSectionState();
}

class _LoginTopSectionState extends State<LoginTopSection> {
  @override
  void initState() {
    super.initState();
  }

  double height = 0.5;
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (p0, isKeyboardVisible) {
        height = isKeyboardVisible ? 0.3 : 0.5;
        return ClipPath(
          clipper: CustomClipperLogin(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: MediaQuery.of(context).size.height * height,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlueAccent.shade200,
            child: Container(),
          ),
        );
      },
    );
  }
}

class CustomClipperLogin extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path1 = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height - 60)
      ..lineTo(size.width, 0);
    return path1;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
