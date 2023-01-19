import 'package:flutter/material.dart';

class SocialLoginButton extends StatefulWidget {
  final String image;
  final Function onpressed;
  const SocialLoginButton({
    super.key,
    required this.onpressed,
    required this.image,
  });

  @override
  State<SocialLoginButton> createState() => _SocialLoginButtonState();
}

class _SocialLoginButtonState extends State<SocialLoginButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(100),
        clipBehavior: Clip.hardEdge,
        child: Ink(
          child: InkWell(
            onTap: () {
              widget.onpressed();
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(widget.image),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
