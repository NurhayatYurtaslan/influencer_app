import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:influencer_app/app/views/view_onboarding/bloc/onboarding_event.dart';
import 'package:influencer_app/app/views/view_onboarding/bloc/onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvents, OnboardingStates> {
  OnboardingBloc() : super(OnboardingStates()) {
    on<OnboardingEvents>((event, emit) {
      return emit(OnboardingStates(pageIndex: state.pageIndex));
    });
  }
}