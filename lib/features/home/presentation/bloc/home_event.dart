// lib/features/home/presentation/bloc/home/home_event.dart
part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetch() = _Fetch;
  const factory HomeEvent.refresh() = _Refresh;
  const factory HomeEvent.setCurrentIndex(int index) = _SetCurrentIndex;
  const factory HomeEvent.questionSelected(Question question) = _QuestionSelected;
}