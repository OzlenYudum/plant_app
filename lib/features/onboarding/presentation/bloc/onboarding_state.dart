part of 'onboarding_bloc.dart';

enum OnboardingEffect { navigateToHome }

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default(0) int pageIndex,
    @Default(false) bool isPaywallVisible,
    OnboardingEffect? effect,
  }) = _OnboardingState;
}