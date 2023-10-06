import 'package:bankku/shared/theme.dart';
import 'package:flutter/material.dart';

class CostumFormField extends StatelessWidget {
  final String text;
  final bool obsecureText;
  final TextEditingController? controller;
  const CostumFormField({
    super.key,
    required this.text,
    this.obsecureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obsecureText,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(12),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(14))),
        ),
      ],
    );
  }
}
