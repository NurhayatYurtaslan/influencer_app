import 'package:auto_route/auto_route.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:influencer_app/app/l10n/app_localizations.dart';
import 'package:influencer_app/app/views/view_onboarding/bloc/onboarding_bloc.dart';
import 'package:influencer_app/app/views/view_onboarding/bloc/onboarding_event.dart';
import 'package:influencer_app/app/views/view_onboarding/bloc/onboarding_state.dart';
import 'package:influencer_app/core/constants/colors_constants/light_theme_constants/light_theme_color_constants.dart';
import 'package:influencer_app/core/extension/context_extension.dart';
import 'package:influencer_app/core/widgets/onboarding_widget.dart';
import 'package:influencer_app/gen/assets.gen.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppLightColorConstants.bgLight,
      body: BlocProvider(
        create: (context) => OnboardingBloc(),
        child: BlocBuilder<OnboardingBloc, OnboardingStates>(
          builder: (context, state) {
            return Stack(
              alignment: context.acenter,
              children: [
                PageView(
                  controller: controller,
                  onPageChanged: (value) {
                    state.pageIndex = value;
                    BlocProvider.of<OnboardingBloc>(context)
                        .add(OnboardingEvents());
                  },
                  children: [
                    onboardingWidget(
                      context: context,
                      pageIndex: 0,
                      image: Assets.images.png.imagePngOnboardingOne.path,
                      title: L10n.of(context)!.onbtitleone,
                      desc: L10n.of(context)!.onbdescone,
                    ),
                    onboardingWidget(
                      context: context,
                      image: Assets.images.png.imagePngOnboardingTwo.path,
                      pageIndex: 1,
                      // imageUrl: 'assets/images/page2.png',
                      title: L10n.of(context)!.onbtitletwo,
                      desc: L10n.of(context)!.onbdesctwo,
                    ),
                    onboardingWidget(
                      context: context,
                      image: Assets.images.png.imagePngOnboardingThree.path,
                      pageIndex: 2,
                      // imageUrl: 'assets/images/page3.png',
                      title: L10n.of(context)!.onbtitlethree,
                      desc: L10n.of(context)!.onbdescthree,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 50,
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: BlocProvider.of<OnboardingBloc>(context)
                        .state
                        .pageIndex,
                    decorator: DotsDecorator(
                      color: AppLightColorConstants.buttonSecondaryColor,
                      activeColor: AppLightColorConstants.buttonPrimaryColor,
                      size: const Size.square(9.0),
                      activeSize: const Size(36.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: context.bordercirlow),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
