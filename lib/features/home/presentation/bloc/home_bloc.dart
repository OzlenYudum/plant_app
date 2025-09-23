// lib/features/home/presentation/bloc/home/home_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plant_app/core/ports/external_url_launcher.dart';
import 'package:plant_app/features/home/domain/entities/category.dart';
import 'package:plant_app/features/home/domain/entities/question.dart';
import 'package:plant_app/features/home/domain/repositories/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._repo) : super(const HomeState()) {
    on<_Fetch>(_onFetch);
    on<_Refresh>(_onRefresh);
    on<_SetCurrentIndex>(_onSetCurrentIndex);
    on<_QuestionSelected>(_onQuestionSelected);
  }
  final HomeRepository _repo;

  Future<void> _onFetch(_Fetch e, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      qLoading: true, cLoading: true, qError: null, cError: null,
    ));

    final qFuture = _repo.getQuestions();
    final cFuture = _repo.getCategories();

    List<Question> qs = const [];
    List<Category> cs = const [];
    String? qErr, cErr;

    try { qs = await qFuture; } catch (e) { qErr = e.toString(); }
    try { cs = await cFuture; } catch (e) { cErr = e.toString(); }

    emit(state.copyWith(
      qLoading: false, cLoading: false,
      questions: qs, categories: cs,
      qError: qErr, cError: cErr,
    ));
  }

  Future<void> _onRefresh(_Refresh e, Emitter<HomeState> emit) async {
    add(const HomeEvent.fetch());
  }

  Future<void> _onSetCurrentIndex(_SetCurrentIndex e, Emitter<HomeState> emit) async {
    emit(state.copyWith(currentIndex: e.index));
  }

 Future<void> _onQuestionSelected(_QuestionSelected e, Emitter<HomeState> emit) async {
  emit(state.copyWith(selectedQuestion: e.question));

  final url = e.question.link;
  if (url.isNotEmpty) {
    await openExternal(url);
  }
}
}