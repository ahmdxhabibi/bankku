import 'package:bankku/shared/theme.dart';
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(12),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                // PASSWORD INPUT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(12),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14))),
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
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 50,
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(56),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'Create New Account',
              style: whiteTextStyle.copyWith(
                color: const Color(0xff696B76),
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
