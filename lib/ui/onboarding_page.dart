import 'package:bankku/shared/theme.dart';
import 'package:bankku/ui/widgets/costum_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController controller = CarouselController();

  List<String> title = [
    "Grow Your\nFinancial Today",
    "Build From\nZero to Freedom",
    "Start Together"
  ];

  List<String> subtitle = [
    "Our system is helping you to\nachieve a better goal",
    "We provide tips for you so that\nyou can adapt easier",
    "We will guide you to where\nyou wanted it too"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          CarouselSlider(
              carouselController: controller,
              items: [
                Image.asset(
                  'assets/onboarding1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/onboarding2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/onboarding3.png',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  initialPage: currentIndex,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index;
                    });
                  })),
          const SizedBox(height: 80),
          Container(
            width: 327,
            height: 294,
            padding: const EdgeInsets.all(24),
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
                  title[currentIndex],
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
                  subtitle[currentIndex],
                  style: greyTextStyle.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: currentIndex == 2 ? 38 : 50,
                ),
                currentIndex == 2
                    ? Column(
                        children: [
                          CostumButton(
                            text: "Get Started",
                            onpressed: () {
                              Navigator.pushNamed(context, '/sign-up');
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextButton(
                            text: "Sign In",
                            onpressed: () {
                              Navigator.pushNamed(context, '/sign-in');
                            },
                          )
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == 0
                                  ? const Color(0xFF53C1F9)
                                  : const Color(0xFFF1F1F9),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == 1
                                  ? const Color(0xFF53C1F9)
                                  : const Color(0xFFF1F1F9),
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
                          CostumButton(
                            text: "Continue",
                            width: 150,
                            onpressed: () {
                              controller.nextPage();
                            },
                          ),
                        ],
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
