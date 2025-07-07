// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkFailure()';
}


}

/// @nodoc
class $NetworkFailureCopyWith<$Res>  {
$NetworkFailureCopyWith(NetworkFailure _, $Res Function(NetworkFailure) __);
}


/// Adds pattern-matching-related methods to [NetworkFailure].
extension NetworkFailurePatterns on NetworkFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NoInternet value)?  noInternet,TResult Function( _ServerError value)?  serverError,TResult Function( _Timeout value)?  timeout,TResult Function( _Other value)?  other,TResult Function( _Another value)?  another,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoInternet() when noInternet != null:
return noInternet(_that);case _ServerError() when serverError != null:
return serverError(_that);case _Timeout() when timeout != null:
return timeout(_that);case _Other() when other != null:
return other(_that);case _Another() when another != null:
return another(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NoInternet value)  noInternet,required TResult Function( _ServerError value)  serverError,required TResult Function( _Timeout value)  timeout,required TResult Function( _Other value)  other,required TResult Function( _Another value)  another,}){
final _that = this;
switch (_that) {
case _NoInternet():
return noInternet(_that);case _ServerError():
return serverError(_that);case _Timeout():
return timeout(_that);case _Other():
return other(_that);case _Another():
return another(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NoInternet value)?  noInternet,TResult? Function( _ServerError value)?  serverError,TResult? Function( _Timeout value)?  timeout,TResult? Function( _Other value)?  other,TResult? Function( _Another value)?  another,}){
final _that = this;
switch (_that) {
case _NoInternet() when noInternet != null:
return noInternet(_that);case _ServerError() when serverError != null:
return serverError(_that);case _Timeout() when timeout != null:
return timeout(_that);case _Other() when other != null:
return other(_that);case _Another() when another != null:
return another(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  noInternet,TResult Function( Response? response)?  serverError,TResult Function()?  timeout,TResult Function( DioException e)?  other,TResult Function( Object value)?  another,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoInternet() when noInternet != null:
return noInternet();case _ServerError() when serverError != null:
return serverError(_that.response);case _Timeout() when timeout != null:
return timeout();case _Other() when other != null:
return other(_that.e);case _Another() when another != null:
return another(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  noInternet,required TResult Function( Response? response)  serverError,required TResult Function()  timeout,required TResult Function( DioException e)  other,required TResult Function( Object value)  another,}) {final _that = this;
switch (_that) {
case _NoInternet():
return noInternet();case _ServerError():
return serverError(_that.response);case _Timeout():
return timeout();case _Other():
return other(_that.e);case _Another():
return another(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  noInternet,TResult? Function( Response? response)?  serverError,TResult? Function()?  timeout,TResult? Function( DioException e)?  other,TResult? Function( Object value)?  another,}) {final _that = this;
switch (_that) {
case _NoInternet() when noInternet != null:
return noInternet();case _ServerError() when serverError != null:
return serverError(_that.response);case _Timeout() when timeout != null:
return timeout();case _Other() when other != null:
return other(_that.e);case _Another() when another != null:
return another(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _NoInternet implements NetworkFailure {
  const _NoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkFailure.noInternet()';
}


}




/// @nodoc


class _ServerError implements NetworkFailure {
  const _ServerError({this.response});
  

 final  Response? response;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerErrorCopyWith<_ServerError> get copyWith => __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'NetworkFailure.serverError(response: $response)';
}


}

/// @nodoc
abstract mixin class _$ServerErrorCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory _$ServerErrorCopyWith(_ServerError value, $Res Function(_ServerError) _then) = __$ServerErrorCopyWithImpl;
@useResult
$Res call({
 Response? response
});




}
/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(this._self, this._then);

  final _ServerError _self;
  final $Res Function(_ServerError) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = freezed,}) {
  return _then(_ServerError(
response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as Response?,
  ));
}


}

/// @nodoc


class _Timeout implements NetworkFailure {
  const _Timeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Timeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkFailure.timeout()';
}


}




/// @nodoc


class _Other implements NetworkFailure {
  const _Other({required this.e});
  

 final  DioException e;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherCopyWith<_Other> get copyWith => __$OtherCopyWithImpl<_Other>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Other&&(identical(other.e, e) || other.e == e));
}


@override
int get hashCode => Object.hash(runtimeType,e);

@override
String toString() {
  return 'NetworkFailure.other(e: $e)';
}


}

/// @nodoc
abstract mixin class _$OtherCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory _$OtherCopyWith(_Other value, $Res Function(_Other) _then) = __$OtherCopyWithImpl;
@useResult
$Res call({
 DioException e
});




}
/// @nodoc
class __$OtherCopyWithImpl<$Res>
    implements _$OtherCopyWith<$Res> {
  __$OtherCopyWithImpl(this._self, this._then);

  final _Other _self;
  final $Res Function(_Other) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? e = null,}) {
  return _then(_Other(
e: null == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as DioException,
  ));
}


}

/// @nodoc


class _Another implements NetworkFailure {
  const _Another({required this.value});
  

 final  Object value;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnotherCopyWith<_Another> get copyWith => __$AnotherCopyWithImpl<_Another>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Another&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'NetworkFailure.another(value: $value)';
}


}

/// @nodoc
abstract mixin class _$AnotherCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory _$AnotherCopyWith(_Another value, $Res Function(_Another) _then) = __$AnotherCopyWithImpl;
@useResult
$Res call({
 Object value
});




}
/// @nodoc
class __$AnotherCopyWithImpl<$Res>
    implements _$AnotherCopyWith<$Res> {
  __$AnotherCopyWithImpl(this._self, this._then);

  final _Another _self;
  final $Res Function(_Another) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Another(
value: null == value ? _self.value : value ,
  ));
}


}

// dart format on
