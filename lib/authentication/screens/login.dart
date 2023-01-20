import 'package:bluecold/authentication/screens/widgets/input_field.dart';
import 'package:bluecold/authentication/screens/widgets/login_top_section.dart';
import 'package:bluecold/authentication/screens/widgets/social_login_button.dart';
import 'package:bluecold/home/screen/home_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeyboardDismissOnTap(
        child: Center(
          child: Container(
            child: Column(
              children: [
                LoginTopSection(),
                input_section(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget input_section(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppInputField(
            label: "Name",
          ),
          const AppInputField(
            label: "Mobile",
            textInputType: TextInputType.number,
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      googleSignIn(),
                      facebookSignIn(),
                    ],
                  ),
                ),
                signupButton(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget signupButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 14,
          ),
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeNavigation()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Login",
                style: TextStyle(),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(Icons.keyboard_arrow_right_rounded)
            ],
          ),
        ),
      ),
    );
  }

  Widget googleSignIn() {
    return SocialLoginButton(
      onpressed: () {},
      image: "assets/images/google_logo.png",
    );
  }

  Widget facebookSignIn() {
    return SocialLoginButton(
      onpressed: () {},
      image: "assets/images/facebook_logo.png",
    );
  }
}
