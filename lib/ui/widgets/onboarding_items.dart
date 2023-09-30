import 'package:bankku/shared/theme.dart';
import 'package:bankku/ui/widgets/costum_button.dart';
import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  final String imageUrl;
  const OnboardingItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 80),
        Image.asset(
          imageUrl,
          height: 331,
        ),
        const SizedBox(height: 80),
        Container(
          width: 327,
          height: 294,
          margin: const EdgeInsets.only(
            bottom: 28,
            left: 24,
            right: 24,
          ),
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Grow Your\nFinancial Today',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 26,
              ),
              Text(
                'Our system is helping you to\nachieve a better goal',
                style: greyTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 12,
                    width: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF53C1F9),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 12,
                    width: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF1F1F9),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 12,
                    width: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF1F1F9),
                    ),
                  ),
                  const Spacer(),
                  const CostumButton(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
