part of 'paywall_bloc.dart';

@freezed
abstract class PaywallState with _$PaywallState {
  const factory PaywallState({
    @Default(0) int selectedIndex,
  }) = _PaywallState;
}