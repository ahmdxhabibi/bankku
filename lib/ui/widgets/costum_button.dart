import 'package:bankku/shared/theme.dart';
import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  const CostumButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(56),
        color: primaryColor,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Continue',
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
