import 'package:bankku/shared/theme.dart';
import 'package:bankku/ui/widgets/costum_button.dart';
import 'package:bankku/ui/widgets/costum_form.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(24, 55, 24, 55),
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 100),
              width: 155,
              height: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/logo_black.png'))),
            ),
          ),
          Text(
            "Sign In &\nGrow Your Finance",
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                // EMAIL INPUT
                CostumFormField(
                  text: "Email Address",
                ),
                const SizedBox(
                  height: 16,
                ),
                // PASSWORD INPUT
                CostumFormField(
                  text: "Password",
                  obsecureText: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password",
                    style: blackTextStyle.copyWith(color: blueColor),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CostumButton(text: 'Sign In'),
              ],
            ),
          ),
          const SizedBox(height: 50),
          CustomTextButton(
              text: "Create New Account",
              onpressed: () {
                Navigator.pushNamed(context, '/sign-up');
              }),
        ],
      ),
    );
  }
}
