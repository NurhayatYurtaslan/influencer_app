import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:influencer_app/app/routes/app_router.gr.dart';
import 'package:influencer_app/app/views/view_signin/viewmodel/signin_event.dart';
import 'package:influencer_app/app/views/view_signin/viewmodel/signin_state.dart';
import 'package:influencer_app/core/repository/model/auth/signin/signin_request_model.dart';
import 'package:influencer_app/core/repository/service/auth_service.dart';
import 'package:influencer_app/core/widgets/snackbar_widget.dart';

class SignInViewModel extends Bloc<SignInEvent, SignInState> {
  BuildContext context;
  SignInViewModel(
    this.context,
  ) : super(SignInInitialState()) {
    on<SignInInitialEvent>(_initial);
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  AuthService authService = AuthService();

  Future<FutureOr<void>> _initial(
      SignInInitialEvent event, Emitter<SignInState> emit) async {
    try {
      await authService.signIn(SignInRequestModel(
          email: emailController.text.trim(),
          password: passwordController.text.trim()));
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(event.context).showSnackBar(SnackBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: SnackBarWidget.success(
            subTitle: 'Login is successful, you are redirected to the home page...',
          )));
      Future.delayed(const Duration(seconds: 2), () {
        context.router.push(NavBarViewRoute());
      });
    } catch (e, stack) {
      FirebaseCrashlytics.instance.recordError(e, stack, fatal: true);
      FirebaseAuthException exception = e as FirebaseAuthException;
      exception.code == 'invalid-email'
          ? Future.delayed(const Duration(seconds: 2), () {
              ScaffoldMessenger.of(event.context).showSnackBar(SnackBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  content: SnackBarWidget.error(
                    subTitle: 'Your email format is incorrect',
                  )));
            })
          : Future.delayed(const Duration(seconds: 2), () {
              ScaffoldMessenger.of(event.context).showSnackBar(SnackBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  content: SnackBarWidget.error(
                    subTitle: 'Email veya şifre hatalı',
                  )));
            });
    }
  }
}
