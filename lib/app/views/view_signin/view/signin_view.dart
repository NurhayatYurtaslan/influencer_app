import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:influencer_app/app/views/view_signin/viewmodel/signin_event.dart';
import 'package:influencer_app/app/views/view_signin/viewmodel/signin_state.dart';
import 'package:influencer_app/app/views/view_signin/viewmodel/signin_view_model.dart';
import 'package:influencer_app/app/views/view_signup/view/signup_view.dart';
import 'package:influencer_app/core/constants/colors_constants/light_theme_constants/light_theme_color_constants.dart';
import 'package:influencer_app/core/extension/context_extension.dart';
import 'package:influencer_app/gen/assets.gen.dart';

@RoutePage()
class SignInView extends StatelessWidget {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInViewModel(context),
      child:
          BlocBuilder<SignInViewModel, SignInState>(builder: (context, state) {
        return Scaffold(
            body: Stack(children: [
          Image.asset(
            Assets.images.png.imagePngBg.path,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Welcome',
                  textAlign: context.textcenter,
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: AppLightColorConstants.buttonSecondaryColor),
                ),
                Row(
                  children: [
                    const Text(
                      "Don't you have an account?",
                      style: TextStyle(
                          color: AppLightColorConstants.buttonSecondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUpView()));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: AppLightColorConstants.buttonPrimaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                Column(
                  children: [
                    textInput(
                        'E-mail',
                        
                        'E-mail',
                        context,
                        const Icon(Icons.email_outlined),
                        context.read<SignInViewModel>().emailController),
                    textInput(
                        'Password',
                        'Password',
                        context,
                        const Icon(Icons.key),
                        context.read<SignInViewModel>().passwordController),
                    const SizedBox(height: 25),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<SignInViewModel>()
                                  .add(SignInInitialEvent(context));
                            },
                            child: const Text('Giriş Yap')))
                  ],
                )
              ],
            ),
          ),
        ]));
      }),
    );
  }

  Widget textInput(String label, String hintText, BuildContext context,
      Icon isIcon, TextEditingController controller,
      {TextInputType? keyboardType,
      TextInputAction? textInputAction,
      String? Function(String?)? validator}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(label, style: TextStyle(color: AppLightColorConstants.buttonPrimaryColor) ),
        const SizedBox(height: 10),
        SizedBox(
          child: TextFormField(
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: keyboardType ?? TextInputType.text,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 10, left: 10),
                prefixIcon: isIcon,
                hintText: hintText,
                border: const OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}
