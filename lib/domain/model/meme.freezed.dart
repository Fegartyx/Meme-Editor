// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Meme {

 String get id; String get name; String get url; int get width; int get height;@JsonKey(name: 'box_count') int get boxCount; int get captions;
/// Create a copy of Meme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemeCopyWith<Meme> get copyWith => _$MemeCopyWithImpl<Meme>(this as Meme, _$identity);

  /// Serializes this Meme to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meme&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.boxCount, boxCount) || other.boxCount == boxCount)&&(identical(other.captions, captions) || other.captions == captions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,width,height,boxCount,captions);

@override
String toString() {
  return 'Meme(id: $id, name: $name, url: $url, width: $width, height: $height, boxCount: $boxCount, captions: $captions)';
}


}

/// @nodoc
abstract mixin class $MemeCopyWith<$Res>  {
  factory $MemeCopyWith(Meme value, $Res Function(Meme) _then) = _$MemeCopyWithImpl;
@useResult
$Res call({
 String id, String name, String url, int width, int height,@JsonKey(name: 'box_count') int boxCount, int captions
});




}
/// @nodoc
class _$MemeCopyWithImpl<$Res>
    implements $MemeCopyWith<$Res> {
  _$MemeCopyWithImpl(this._self, this._then);

  final Meme _self;
  final $Res Function(Meme) _then;

/// Create a copy of Meme
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? url = null,Object? width = null,Object? height = null,Object? boxCount = null,Object? captions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,boxCount: null == boxCount ? _self.boxCount : boxCount // ignore: cast_nullable_to_non_nullable
as int,captions: null == captions ? _self.captions : captions // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Meme].
extension MemePatterns on Meme {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Meme value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Meme() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Meme value)  $default,){
final _that = this;
switch (_that) {
case _Meme():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Meme value)?  $default,){
final _that = this;
switch (_that) {
case _Meme() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String url,  int width,  int height, @JsonKey(name: 'box_count')  int boxCount,  int captions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Meme() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.width,_that.height,_that.boxCount,_that.captions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String url,  int width,  int height, @JsonKey(name: 'box_count')  int boxCount,  int captions)  $default,) {final _that = this;
switch (_that) {
case _Meme():
return $default(_that.id,_that.name,_that.url,_that.width,_that.height,_that.boxCount,_that.captions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String url,  int width,  int height, @JsonKey(name: 'box_count')  int boxCount,  int captions)?  $default,) {final _that = this;
switch (_that) {
case _Meme() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.width,_that.height,_that.boxCount,_that.captions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Meme implements Meme {
  const _Meme({required this.id, required this.name, required this.url, required this.width, required this.height, @JsonKey(name: 'box_count') required this.boxCount, required this.captions});
  factory _Meme.fromJson(Map<String, dynamic> json) => _$MemeFromJson(json);

@override final  String id;
@override final  String name;
@override final  String url;
@override final  int width;
@override final  int height;
@override@JsonKey(name: 'box_count') final  int boxCount;
@override final  int captions;

/// Create a copy of Meme
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemeCopyWith<_Meme> get copyWith => __$MemeCopyWithImpl<_Meme>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meme&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.boxCount, boxCount) || other.boxCount == boxCount)&&(identical(other.captions, captions) || other.captions == captions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,width,height,boxCount,captions);

@override
String toString() {
  return 'Meme(id: $id, name: $name, url: $url, width: $width, height: $height, boxCount: $boxCount, captions: $captions)';
}


}

/// @nodoc
abstract mixin class _$MemeCopyWith<$Res> implements $MemeCopyWith<$Res> {
  factory _$MemeCopyWith(_Meme value, $Res Function(_Meme) _then) = __$MemeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String url, int width, int height,@JsonKey(name: 'box_count') int boxCount, int captions
});




}
/// @nodoc
class __$MemeCopyWithImpl<$Res>
    implements _$MemeCopyWith<$Res> {
  __$MemeCopyWithImpl(this._self, this._then);

  final _Meme _self;
  final $Res Function(_Meme) _then;

/// Create a copy of Meme
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? url = null,Object? width = null,Object? height = null,Object? boxCount = null,Object? captions = null,}) {
  return _then(_Meme(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,boxCount: null == boxCount ? _self.boxCount : boxCount // ignore: cast_nullable_to_non_nullable
as int,captions: null == captions ? _self.captions : captions // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
