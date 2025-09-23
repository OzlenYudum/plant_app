import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paywall_event.dart';
part 'paywall_state.dart';
part 'paywall_bloc.freezed.dart';

class PaywallBloc extends Bloc<PaywallEvent, PaywallState> {
  PaywallBloc() : super(const PaywallState()) {
    on<_Started>(_onStarted);
    on<_ProductSelected>(_onProductSelected);
  }

  void _onStarted(_Started event, Emitter<PaywallState> emit) {
    // preload if needed
  }

  void _onProductSelected(
    _ProductSelected event,
    Emitter<PaywallState> emit,
  ) {
    emit(state.copyWith(selectedIndex: event.index));
  }
}