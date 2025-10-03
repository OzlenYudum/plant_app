import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_bloc.freezed.dart';

// DI ile geçilecek; SharedPreferences veya başka kaynaktan okuyabilirsin.
typedef IsOnboardingCompleted = Future<bool> Function();
typedef SetOnboardingCompleted = Future<void> Function(bool value);

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc({required IsOnboardingCompleted isOnboardingCompleted, required SetOnboardingCompleted setOnboardingCompleted})
      : _isOnboardingCompleted = isOnboardingCompleted,
        _setOnboardingCompleted = setOnboardingCompleted,
        super(const OnboardingState()) {
    on<_Started>(_onStarted);
    on<_PageChanged>(_onPageChanged);
    on<_ContinuePressed>(_onContinuePressed);
    on<_PaywallClosed>(_onPaywallClosed);
    on<_EffectConsumed>(_onEffectConsumed);
  }

  final IsOnboardingCompleted _isOnboardingCompleted;
  final SetOnboardingCompleted _setOnboardingCompleted;

  Future<void> _onStarted(_Started event, Emitter<OnboardingState> emit) async {

  }

  void _onPageChanged(_PageChanged event, Emitter<OnboardingState> emit) {
    emit(state.copyWith(pageIndex: event.index));
  }

  void _onContinuePressed(_ContinuePressed event, Emitter<OnboardingState> emit) {
    if (state.pageIndex < 2) {
      emit(state.copyWith(pageIndex: state.pageIndex + 1));
    } else {
      emit(state.copyWith(effect: OnboardingEffect.navigateToPaywall));
    }
  }

Future<void> _onPaywallClosed(_PaywallClosed event, Emitter<OnboardingState> emit) async {
  await _setOnboardingCompleted(true);
  emit(state.copyWith(
    effect: OnboardingEffect.navigateToHome,
  ));
}
  void _onEffectConsumed(_EffectConsumed event, Emitter<OnboardingState> emit) {
    emit(state.copyWith(effect: null));
  }
}