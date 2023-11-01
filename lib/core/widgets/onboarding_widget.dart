import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:influencer_app/app/routes/app_router.gr.dart';
import 'package:influencer_app/app/views/view_signin/view/signin_view.dart';
import 'package:influencer_app/app/views/view_splash/splash_view.dart';
import 'package:influencer_app/core/constants/colors_constants/light_theme_constants/light_theme_color_constants.dart';
import 'package:influencer_app/core/extension/context_extension.dart';

final PageController controller = PageController(initialPage: 0);
// ignore: invalid_annotation_target

Widget onboardingWidget({
  required pageIndex,
  required title,
  required desc,
  required BuildContext context,
  required String image,
}) {
  return Column(
    mainAxisAlignment: context.center,
    children: [
      Image.asset(image),
      const SizedBox(height: 40),
      Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      const SizedBox(height: 10),
      Padding(
        padding: context.horizontalPaddingHigh,
        child: Text(
          desc,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
      const SizedBox(height: 120),
      Padding(
        padding: context.horizontalPaddingHigh,
        child: Row(
          mainAxisAlignment:
              pageIndex == 2 ? context.center : context.spaceBetween,
          children: [
            Visibility(
              visible:
                  pageIndex != 2, // don't show on page with index 2 (last page)
              child: GestureDetector(
                onTap: () {
                  context.router.push(SignUpViewRoute());
                },
                child: const Text(
                  'Skip',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: AppLightColorConstants.buttonPrimaryColor),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                pageIndex == 2
                    ? context.router.push(WelcomeScreenRoute())
                    : controller.animateToPage(pageIndex + 1,
                        duration: context.durationLow,
                        curve: Curves.decelerate);
              },
              child: pageIndex == 2
                  ? Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppLightColorConstants.buttonSecondaryColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppLightColorConstants.buttonPrimaryColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      ),
                    ),
            )
          ],
        ),
      )
    ],
  );
}
