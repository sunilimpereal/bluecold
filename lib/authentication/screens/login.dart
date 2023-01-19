import 'package:bluecold/authentication/screens/widgets/input_field.dart';
import 'package:bluecold/authentication/screens/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppInputField(
              label: "Name",
            ),
            AppInputField(
              label: "Mobile",
              textInputType: TextInputType.number,
            ),
            Row(
              children: [
                googleSignIn(),
                signupButton(),
              ],
            )
          ],
        ),
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
            horizontal: 16,
          ),
          shape: const StadiumBorder(),
        ),
        onPressed: () {},
        child: Row(
          children: const [
            Text(
              "Login",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 4,
            ),
            Icon(Icons.keyboard_arrow_right_rounded)
          ],
        ),
      ),
    );
  }

  Widget googleSignIn() {
    return SocialLoginButton(onpressed: () {}, image: "");
  }
}
