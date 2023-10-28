
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:influencer_app/app/views/view_splash/view_model/splash_state.dart';
import 'package:influencer_app/app/views/view_splash/view_model/splash_view_model.dart';
import 'package:influencer_app/core/constants/colors_constants/light_theme_constants/light_theme_color_constants.dart';
import 'package:influencer_app/core/extension/context_extension.dart';
import 'package:influencer_app/gen/assets.gen.dart';
import 'view_model/splash_event.dart';

@RoutePage()
class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            SplashViewModel()..add(SplashInitialEvent(context)),
        child: BlocBuilder<SplashViewModel, SplashState>(
          builder: (context, state) {
            return Scaffold(
                body: Container(
              width: context.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  AppLightColorConstants.bgLight,
                  AppLightColorConstants.secondaryColor,
                  AppLightColorConstants.bgAccent
                ],
              )),
              child: Center(
                child: Column(
                  mainAxisAlignment: context.center,
                  crossAxisAlignment: context.ccenter,
                  children: [
                    // SizedBox(
                    //   height: context.height / 40,
                    // ),
                    Image.asset(Assets.images.png.imagePngLogo.path),

                    // Text(
                    //   L10n.of(context)!.influencerapp,
                    //   style: TextStyle(
                    //     fontSize: 25,
                    //     fontFamily: 'Georgia',
                    //   ),
                    //   textAlign: TextAlign.center,
                    // )
                  ],
                ),
              ),
            ));
          },
        ));
  }
}
