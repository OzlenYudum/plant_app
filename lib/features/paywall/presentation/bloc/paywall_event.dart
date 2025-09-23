part of 'paywall_bloc.dart';

@freezed
class PaywallEvent with _$PaywallEvent {
  const factory PaywallEvent.started() = _Started;
  const factory PaywallEvent.productSelected(int index) = _ProductSelected;
}