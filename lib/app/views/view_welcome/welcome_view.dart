import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:influencer_app/app/views/view_signin/view/signin_view.dart';
import 'package:influencer_app/app/views/view_signup/view/signup_view.dart';
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
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text:
                                '\nEnter personal details to your employee account',
                            style: TextStyle(
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
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                        buttonText: 'Sign up',
                        onTap: SignUpView(),
                        color: Color.fromARGB(255, 133, 147, 243),
                        textColor: Color.fromARGB(255, 4, 1, 91)),
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
