// lib/features/home/presentation/bloc/home/home_state.dart
part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int currentIndex,
    @Default(false) bool qLoading,
    @Default(false) bool cLoading,
    @Default(<Question>[]) List<Question> questions,
    @Default(<Category>[]) List<Category> categories,
    String? qError,
    String? cError,
    @Default(null) Question? selectedQuestion,
  }) = _HomeState;

}