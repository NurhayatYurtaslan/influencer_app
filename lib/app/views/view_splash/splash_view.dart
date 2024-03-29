import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:influencer_app/app/views/view_splash/view_model/splash_state.dart';
import 'package:influencer_app/app/views/view_splash/view_model/splash_view_model.dart';
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
              child: Center(
                child: Image.asset(
                  Assets.images.png.imageSplashBg.path,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ));
          },
        ));
  }
}
