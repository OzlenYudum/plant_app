part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.started() = _Started;
  const factory OnboardingEvent.pageChanged(int index) = _PageChanged;
  const factory OnboardingEvent.continuePressed() = _ContinuePressed;
  const factory OnboardingEvent.paywallClosed() = _PaywallClosed;
  const factory OnboardingEvent.effectConsumed() = _EffectConsumed;
}