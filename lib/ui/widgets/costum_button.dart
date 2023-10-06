import 'package:bankku/shared/theme.dart';
import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback? onpressed;
  const CostumButton({
    super.key,
    required this.text,
    this.height = 50,
    this.width = double.infinity,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        onPressed: onpressed,
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onpressed;
  const CustomTextButton({
    super.key,
    required this.text,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // onPressed: () {
      //   Navigator.pushNamed(context, '/sign-in');
      // },
      onPressed: onpressed,
      child: Text(
        text,
        style: whiteTextStyle.copyWith(
          color: const Color(0xff696B76),
          fontSize: 16,
        ),
      ),
    );
  }
}
