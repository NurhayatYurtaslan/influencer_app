import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:influencer_app/app/l10n/app_localizations.dart';
import 'package:influencer_app/app/routes/app_router.gr.dart';
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
  return Stack(
    children: [
      Image.asset(
        image,
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      Column(
        children: [
          const SizedBox(height: 175),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: context.horizontalPaddingHigh,
            child: Text(
              desc,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: context.horizontalPaddingHigh,
            child: Row(
              mainAxisAlignment:
                  pageIndex == 2 ? context.center : context.spaceBetween,
              children: [
                Visibility(
                  visible: pageIndex !=
                      2, // don't show on page with index 2 (last page)
                  child: GestureDetector(
                    onTap: () {
                      context.router.push(const WelcomeScreenRoute());
                    },
                    child: const Text(
                      'Skip',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: AppLightColorConstants.buttonPrimaryColor),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    pageIndex == 2
                        ? context.router.push(const WelcomeScreenRoute())
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
                            color: AppLightColorConstants.buttonPrimaryColor,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Text(
                            L10n.of(context)!.getstarted,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
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
      )
    ],
  );
}
