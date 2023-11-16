import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:influencer_app/app/views/view_signin/view/signin_view.dart';
import 'package:influencer_app/app/views/view_signup/view/signup_view.dart';
import 'package:influencer_app/core/constants/colors_constants/light_theme_constants/light_theme_color_constants.dart';
import 'package:influencer_app/core/widgets/custom_scaffold.dart';
import 'package:influencer_app/core/widgets/welcome_button.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Welcome\n',
                            style: TextStyle(
                              fontSize: 45.0,
                              color:
                                  AppLightColorConstants.buttonSecondaryColor,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text:
                                '\nEnter personal details to your employee account',
                            style: TextStyle(
                              color:
                                  AppLightColorConstants.buttonSecondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              // height: 0,
                            ))
                      ],
                    ),
                  ),
                ),
              )),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: SignInView(),
                      color: Colors.transparent,
                      textColor: AppLightColorConstants.buttonSecondaryColor,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                        buttonText: 'Sign up',
                        onTap: SignUpView(),
                        color: AppLightColorConstants.buttonPrimaryColor,
                        textColor: AppLightColorConstants.buttonSecondaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
