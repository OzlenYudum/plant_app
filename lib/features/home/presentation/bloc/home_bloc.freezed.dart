// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetch value)?  fetch,TResult Function( _Refresh value)?  refresh,TResult Function( _SetCurrentIndex value)?  setCurrentIndex,TResult Function( _QuestionSelected value)?  questionSelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _Refresh() when refresh != null:
return refresh(_that);case _SetCurrentIndex() when setCurrentIndex != null:
return setCurrentIndex(_that);case _QuestionSelected() when questionSelected != null:
return questionSelected(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetch value)  fetch,required TResult Function( _Refresh value)  refresh,required TResult Function( _SetCurrentIndex value)  setCurrentIndex,required TResult Function( _QuestionSelected value)  questionSelected,}){
final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that);case _Refresh():
return refresh(_that);case _SetCurrentIndex():
return setCurrentIndex(_that);case _QuestionSelected():
return questionSelected(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetch value)?  fetch,TResult? Function( _Refresh value)?  refresh,TResult? Function( _SetCurrentIndex value)?  setCurrentIndex,TResult? Function( _QuestionSelected value)?  questionSelected,}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _Refresh() when refresh != null:
return refresh(_that);case _SetCurrentIndex() when setCurrentIndex != null:
return setCurrentIndex(_that);case _QuestionSelected() when questionSelected != null:
return questionSelected(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,TResult Function()?  refresh,TResult Function( int index)?  setCurrentIndex,TResult Function( Question question)?  questionSelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _Refresh() when refresh != null:
return refresh();case _SetCurrentIndex() when setCurrentIndex != null:
return setCurrentIndex(_that.index);case _QuestionSelected() when questionSelected != null:
return questionSelected(_that.question);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,required TResult Function()  refresh,required TResult Function( int index)  setCurrentIndex,required TResult Function( Question question)  questionSelected,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch();case _Refresh():
return refresh();case _SetCurrentIndex():
return setCurrentIndex(_that.index);case _QuestionSelected():
return questionSelected(_that.question);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,TResult? Function()?  refresh,TResult? Function( int index)?  setCurrentIndex,TResult? Function( Question question)?  questionSelected,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _Refresh() when refresh != null:
return refresh();case _SetCurrentIndex() when setCurrentIndex != null:
return setCurrentIndex(_that.index);case _QuestionSelected() when questionSelected != null:
return questionSelected(_that.question);case _:
  return null;

}
}

}

/// @nodoc


class _Fetch implements HomeEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetch()';
}


}




/// @nodoc


class _Refresh implements HomeEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.refresh()';
}


}




/// @nodoc


class _SetCurrentIndex implements HomeEvent {
  const _SetCurrentIndex(this.index);
  

 final  int index;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetCurrentIndexCopyWith<_SetCurrentIndex> get copyWith => __$SetCurrentIndexCopyWithImpl<_SetCurrentIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetCurrentIndex&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'HomeEvent.setCurrentIndex(index: $index)';
}


}

/// @nodoc
abstract mixin class _$SetCurrentIndexCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$SetCurrentIndexCopyWith(_SetCurrentIndex value, $Res Function(_SetCurrentIndex) _then) = __$SetCurrentIndexCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$SetCurrentIndexCopyWithImpl<$Res>
    implements _$SetCurrentIndexCopyWith<$Res> {
  __$SetCurrentIndexCopyWithImpl(this._self, this._then);

  final _SetCurrentIndex _self;
  final $Res Function(_SetCurrentIndex) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_SetCurrentIndex(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _QuestionSelected implements HomeEvent {
  const _QuestionSelected(this.question);
  

 final  Question question;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionSelectedCopyWith<_QuestionSelected> get copyWith => __$QuestionSelectedCopyWithImpl<_QuestionSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionSelected&&(identical(other.question, question) || other.question == question));
}


@override
int get hashCode => Object.hash(runtimeType,question);

@override
String toString() {
  return 'HomeEvent.questionSelected(question: $question)';
}


}

/// @nodoc
abstract mixin class _$QuestionSelectedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$QuestionSelectedCopyWith(_QuestionSelected value, $Res Function(_QuestionSelected) _then) = __$QuestionSelectedCopyWithImpl;
@useResult
$Res call({
 Question question
});




}
/// @nodoc
class __$QuestionSelectedCopyWithImpl<$Res>
    implements _$QuestionSelectedCopyWith<$Res> {
  __$QuestionSelectedCopyWithImpl(this._self, this._then);

  final _QuestionSelected _self;
  final $Res Function(_QuestionSelected) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? question = null,}) {
  return _then(_QuestionSelected(
null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as Question,
  ));
}


}

/// @nodoc
mixin _$HomeState {

 int get currentIndex; bool get qLoading; bool get cLoading; List<Question> get questions; List<Category> get categories; String? get qError; String? get cError; Question? get selectedQuestion;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.qLoading, qLoading) || other.qLoading == qLoading)&&(identical(other.cLoading, cLoading) || other.cLoading == cLoading)&&const DeepCollectionEquality().equals(other.questions, questions)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.qError, qError) || other.qError == qError)&&(identical(other.cError, cError) || other.cError == cError)&&(identical(other.selectedQuestion, selectedQuestion) || other.selectedQuestion == selectedQuestion));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,qLoading,cLoading,const DeepCollectionEquality().hash(questions),const DeepCollectionEquality().hash(categories),qError,cError,selectedQuestion);

@override
String toString() {
  return 'HomeState(currentIndex: $currentIndex, qLoading: $qLoading, cLoading: $cLoading, questions: $questions, categories: $categories, qError: $qError, cError: $cError, selectedQuestion: $selectedQuestion)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 int currentIndex, bool qLoading, bool cLoading, List<Question> questions, List<Category> categories, String? qError, String? cError, Question? selectedQuestion
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentIndex = null,Object? qLoading = null,Object? cLoading = null,Object? questions = null,Object? categories = null,Object? qError = freezed,Object? cError = freezed,Object? selectedQuestion = freezed,}) {
  return _then(_self.copyWith(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,qLoading: null == qLoading ? _self.qLoading : qLoading // ignore: cast_nullable_to_non_nullable
as bool,cLoading: null == cLoading ? _self.cLoading : cLoading // ignore: cast_nullable_to_non_nullable
as bool,questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<Question>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,qError: freezed == qError ? _self.qError : qError // ignore: cast_nullable_to_non_nullable
as String?,cError: freezed == cError ? _self.cError : cError // ignore: cast_nullable_to_non_nullable
as String?,selectedQuestion: freezed == selectedQuestion ? _self.selectedQuestion : selectedQuestion // ignore: cast_nullable_to_non_nullable
as Question?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentIndex,  bool qLoading,  bool cLoading,  List<Question> questions,  List<Category> categories,  String? qError,  String? cError,  Question? selectedQuestion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.currentIndex,_that.qLoading,_that.cLoading,_that.questions,_that.categories,_that.qError,_that.cError,_that.selectedQuestion);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentIndex,  bool qLoading,  bool cLoading,  List<Question> questions,  List<Category> categories,  String? qError,  String? cError,  Question? selectedQuestion)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.currentIndex,_that.qLoading,_that.cLoading,_that.questions,_that.categories,_that.qError,_that.cError,_that.selectedQuestion);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentIndex,  bool qLoading,  bool cLoading,  List<Question> questions,  List<Category> categories,  String? qError,  String? cError,  Question? selectedQuestion)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.currentIndex,_that.qLoading,_that.cLoading,_that.questions,_that.categories,_that.qError,_that.cError,_that.selectedQuestion);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({this.currentIndex = 0, this.qLoading = false, this.cLoading = false, final  List<Question> questions = const <Question>[], final  List<Category> categories = const <Category>[], this.qError, this.cError, this.selectedQuestion = null}): _questions = questions,_categories = categories;
  

@override@JsonKey() final  int currentIndex;
@override@JsonKey() final  bool qLoading;
@override@JsonKey() final  bool cLoading;
 final  List<Question> _questions;
@override@JsonKey() List<Question> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

 final  List<Category> _categories;
@override@JsonKey() List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String? qError;
@override final  String? cError;
@override@JsonKey() final  Question? selectedQuestion;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.qLoading, qLoading) || other.qLoading == qLoading)&&(identical(other.cLoading, cLoading) || other.cLoading == cLoading)&&const DeepCollectionEquality().equals(other._questions, _questions)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.qError, qError) || other.qError == qError)&&(identical(other.cError, cError) || other.cError == cError)&&(identical(other.selectedQuestion, selectedQuestion) || other.selectedQuestion == selectedQuestion));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,qLoading,cLoading,const DeepCollectionEquality().hash(_questions),const DeepCollectionEquality().hash(_categories),qError,cError,selectedQuestion);

@override
String toString() {
  return 'HomeState(currentIndex: $currentIndex, qLoading: $qLoading, cLoading: $cLoading, questions: $questions, categories: $categories, qError: $qError, cError: $cError, selectedQuestion: $selectedQuestion)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 int currentIndex, bool qLoading, bool cLoading, List<Question> questions, List<Category> categories, String? qError, String? cError, Question? selectedQuestion
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,Object? qLoading = null,Object? cLoading = null,Object? questions = null,Object? categories = null,Object? qError = freezed,Object? cError = freezed,Object? selectedQuestion = freezed,}) {
  return _then(_HomeState(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,qLoading: null == qLoading ? _self.qLoading : qLoading // ignore: cast_nullable_to_non_nullable
as bool,cLoading: null == cLoading ? _self.cLoading : cLoading // ignore: cast_nullable_to_non_nullable
as bool,questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<Question>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,qError: freezed == qError ? _self.qError : qError // ignore: cast_nullable_to_non_nullable
as String?,cError: freezed == cError ? _self.cError : cError // ignore: cast_nullable_to_non_nullable
as String?,selectedQuestion: freezed == selectedQuestion ? _self.selectedQuestion : selectedQuestion // ignore: cast_nullable_to_non_nullable
as Question?,
  ));
}


}

// dart format on
