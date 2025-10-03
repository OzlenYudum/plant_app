part of 'onboarding_bloc.dart';

enum OnboardingEffect { navigateToHome, navigateToPaywall }

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default(0) int pageIndex,
    OnboardingEffect? effect,
  }) = _OnboardingState;
}