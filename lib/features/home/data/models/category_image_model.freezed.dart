// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryImageModel {

 int get id; String get name; String? get alternativeText; String? get caption; int get width; int get height; Map<String, dynamic>? get formats;// null gelebilir → nullable + Map
 String get ext; String get mime; double get size; String get url; String? get previewUrl; String get provider; Map<String, dynamic>? get providerMetadata; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of CategoryImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryImageModelCopyWith<CategoryImageModel> get copyWith => _$CategoryImageModelCopyWithImpl<CategoryImageModel>(this as CategoryImageModel, _$identity);

  /// Serializes this CategoryImageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryImageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.alternativeText, alternativeText) || other.alternativeText == alternativeText)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other.formats, formats)&&(identical(other.ext, ext) || other.ext == ext)&&(identical(other.mime, mime) || other.mime == mime)&&(identical(other.size, size) || other.size == size)&&(identical(other.url, url) || other.url == url)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other.providerMetadata, providerMetadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,alternativeText,caption,width,height,const DeepCollectionEquality().hash(formats),ext,mime,size,url,previewUrl,provider,const DeepCollectionEquality().hash(providerMetadata),createdAt,updatedAt);

@override
String toString() {
  return 'CategoryImageModel(id: $id, name: $name, alternativeText: $alternativeText, caption: $caption, width: $width, height: $height, formats: $formats, ext: $ext, mime: $mime, size: $size, url: $url, previewUrl: $previewUrl, provider: $provider, providerMetadata: $providerMetadata, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CategoryImageModelCopyWith<$Res>  {
  factory $CategoryImageModelCopyWith(CategoryImageModel value, $Res Function(CategoryImageModel) _then) = _$CategoryImageModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? alternativeText, String? caption, int width, int height, Map<String, dynamic>? formats, String ext, String mime, double size, String url, String? previewUrl, String provider, Map<String, dynamic>? providerMetadata, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$CategoryImageModelCopyWithImpl<$Res>
    implements $CategoryImageModelCopyWith<$Res> {
  _$CategoryImageModelCopyWithImpl(this._self, this._then);

  final CategoryImageModel _self;
  final $Res Function(CategoryImageModel) _then;

/// Create a copy of CategoryImageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? alternativeText = freezed,Object? caption = freezed,Object? width = null,Object? height = null,Object? formats = freezed,Object? ext = null,Object? mime = null,Object? size = null,Object? url = null,Object? previewUrl = freezed,Object? provider = null,Object? providerMetadata = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,alternativeText: freezed == alternativeText ? _self.alternativeText : alternativeText // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,formats: freezed == formats ? _self.formats : formats // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,ext: null == ext ? _self.ext : ext // ignore: cast_nullable_to_non_nullable
as String,mime: null == mime ? _self.mime : mime // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,previewUrl: freezed == previewUrl ? _self.previewUrl : previewUrl // ignore: cast_nullable_to_non_nullable
as String?,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,providerMetadata: freezed == providerMetadata ? _self.providerMetadata : providerMetadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryImageModel].
extension CategoryImageModelPatterns on CategoryImageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryImageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryImageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryImageModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryImageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryImageModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryImageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? alternativeText,  String? caption,  int width,  int height,  Map<String, dynamic>? formats,  String ext,  String mime,  double size,  String url,  String? previewUrl,  String provider,  Map<String, dynamic>? providerMetadata,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryImageModel() when $default != null:
return $default(_that.id,_that.name,_that.alternativeText,_that.caption,_that.width,_that.height,_that.formats,_that.ext,_that.mime,_that.size,_that.url,_that.previewUrl,_that.provider,_that.providerMetadata,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? alternativeText,  String? caption,  int width,  int height,  Map<String, dynamic>? formats,  String ext,  String mime,  double size,  String url,  String? previewUrl,  String provider,  Map<String, dynamic>? providerMetadata,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CategoryImageModel():
return $default(_that.id,_that.name,_that.alternativeText,_that.caption,_that.width,_that.height,_that.formats,_that.ext,_that.mime,_that.size,_that.url,_that.previewUrl,_that.provider,_that.providerMetadata,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? alternativeText,  String? caption,  int width,  int height,  Map<String, dynamic>? formats,  String ext,  String mime,  double size,  String url,  String? previewUrl,  String provider,  Map<String, dynamic>? providerMetadata,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CategoryImageModel() when $default != null:
return $default(_that.id,_that.name,_that.alternativeText,_that.caption,_that.width,_that.height,_that.formats,_that.ext,_that.mime,_that.size,_that.url,_that.previewUrl,_that.provider,_that.providerMetadata,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryImageModel implements CategoryImageModel {
  const _CategoryImageModel({required this.id, required this.name, this.alternativeText, this.caption, required this.width, required this.height, final  Map<String, dynamic>? formats, required this.ext, required this.mime, required this.size, required this.url, this.previewUrl, required this.provider, final  Map<String, dynamic>? providerMetadata, required this.createdAt, required this.updatedAt}): _formats = formats,_providerMetadata = providerMetadata;
  factory _CategoryImageModel.fromJson(Map<String, dynamic> json) => _$CategoryImageModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? alternativeText;
@override final  String? caption;
@override final  int width;
@override final  int height;
 final  Map<String, dynamic>? _formats;
@override Map<String, dynamic>? get formats {
  final value = _formats;
  if (value == null) return null;
  if (_formats is EqualUnmodifiableMapView) return _formats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

// null gelebilir → nullable + Map
@override final  String ext;
@override final  String mime;
@override final  double size;
@override final  String url;
@override final  String? previewUrl;
@override final  String provider;
 final  Map<String, dynamic>? _providerMetadata;
@override Map<String, dynamic>? get providerMetadata {
  final value = _providerMetadata;
  if (value == null) return null;
  if (_providerMetadata is EqualUnmodifiableMapView) return _providerMetadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of CategoryImageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryImageModelCopyWith<_CategoryImageModel> get copyWith => __$CategoryImageModelCopyWithImpl<_CategoryImageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryImageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryImageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.alternativeText, alternativeText) || other.alternativeText == alternativeText)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other._formats, _formats)&&(identical(other.ext, ext) || other.ext == ext)&&(identical(other.mime, mime) || other.mime == mime)&&(identical(other.size, size) || other.size == size)&&(identical(other.url, url) || other.url == url)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other._providerMetadata, _providerMetadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,alternativeText,caption,width,height,const DeepCollectionEquality().hash(_formats),ext,mime,size,url,previewUrl,provider,const DeepCollectionEquality().hash(_providerMetadata),createdAt,updatedAt);

@override
String toString() {
  return 'CategoryImageModel(id: $id, name: $name, alternativeText: $alternativeText, caption: $caption, width: $width, height: $height, formats: $formats, ext: $ext, mime: $mime, size: $size, url: $url, previewUrl: $previewUrl, provider: $provider, providerMetadata: $providerMetadata, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CategoryImageModelCopyWith<$Res> implements $CategoryImageModelCopyWith<$Res> {
  factory _$CategoryImageModelCopyWith(_CategoryImageModel value, $Res Function(_CategoryImageModel) _then) = __$CategoryImageModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? alternativeText, String? caption, int width, int height, Map<String, dynamic>? formats, String ext, String mime, double size, String url, String? previewUrl, String provider, Map<String, dynamic>? providerMetadata, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$CategoryImageModelCopyWithImpl<$Res>
    implements _$CategoryImageModelCopyWith<$Res> {
  __$CategoryImageModelCopyWithImpl(this._self, this._then);

  final _CategoryImageModel _self;
  final $Res Function(_CategoryImageModel) _then;

/// Create a copy of CategoryImageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? alternativeText = freezed,Object? caption = freezed,Object? width = null,Object? height = null,Object? formats = freezed,Object? ext = null,Object? mime = null,Object? size = null,Object? url = null,Object? previewUrl = freezed,Object? provider = null,Object? providerMetadata = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_CategoryImageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,alternativeText: freezed == alternativeText ? _self.alternativeText : alternativeText // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,formats: freezed == formats ? _self._formats : formats // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,ext: null == ext ? _self.ext : ext // ignore: cast_nullable_to_non_nullable
as String,mime: null == mime ? _self.mime : mime // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,previewUrl: freezed == previewUrl ? _self.previewUrl : previewUrl // ignore: cast_nullable_to_non_nullable
as String?,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,providerMetadata: freezed == providerMetadata ? _self._providerMetadata : providerMetadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
