// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommonFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommonFailure()';
}


}

/// @nodoc
class $CommonFailureCopyWith<$Res>  {
$CommonFailureCopyWith(CommonFailure _, $Res Function(CommonFailure) __);
}


/// Adds pattern-matching-related methods to [CommonFailure].
extension CommonFailurePatterns on CommonFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NoInternet value)?  noInternet,TResult Function( ServerError value)?  serverError,TResult Function( Timeout value)?  timeout,TResult Function( ParseError value)?  parseError,TResult Function( ValueError value)?  valueError,TResult Function( Other value)?  other,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NoInternet() when noInternet != null:
return noInternet(_that);case ServerError() when serverError != null:
return serverError(_that);case Timeout() when timeout != null:
return timeout(_that);case ParseError() when parseError != null:
return parseError(_that);case ValueError() when valueError != null:
return valueError(_that);case Other() when other != null:
return other(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NoInternet value)  noInternet,required TResult Function( ServerError value)  serverError,required TResult Function( Timeout value)  timeout,required TResult Function( ParseError value)  parseError,required TResult Function( ValueError value)  valueError,required TResult Function( Other value)  other,}){
final _that = this;
switch (_that) {
case NoInternet():
return noInternet(_that);case ServerError():
return serverError(_that);case Timeout():
return timeout(_that);case ParseError():
return parseError(_that);case ValueError():
return valueError(_that);case Other():
return other(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NoInternet value)?  noInternet,TResult? Function( ServerError value)?  serverError,TResult? Function( Timeout value)?  timeout,TResult? Function( ParseError value)?  parseError,TResult? Function( ValueError value)?  valueError,TResult? Function( Other value)?  other,}){
final _that = this;
switch (_that) {
case NoInternet() when noInternet != null:
return noInternet(_that);case ServerError() when serverError != null:
return serverError(_that);case Timeout() when timeout != null:
return timeout(_that);case ParseError() when parseError != null:
return parseError(_that);case ValueError() when valueError != null:
return valueError(_that);case Other() when other != null:
return other(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  noInternet,TResult Function( String? message)?  serverError,TResult Function()?  timeout,TResult Function( String message)?  parseError,TResult Function( String message)?  valueError,TResult Function( String message)?  other,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NoInternet() when noInternet != null:
return noInternet();case ServerError() when serverError != null:
return serverError(_that.message);case Timeout() when timeout != null:
return timeout();case ParseError() when parseError != null:
return parseError(_that.message);case ValueError() when valueError != null:
return valueError(_that.message);case Other() when other != null:
return other(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  noInternet,required TResult Function( String? message)  serverError,required TResult Function()  timeout,required TResult Function( String message)  parseError,required TResult Function( String message)  valueError,required TResult Function( String message)  other,}) {final _that = this;
switch (_that) {
case NoInternet():
return noInternet();case ServerError():
return serverError(_that.message);case Timeout():
return timeout();case ParseError():
return parseError(_that.message);case ValueError():
return valueError(_that.message);case Other():
return other(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  noInternet,TResult? Function( String? message)?  serverError,TResult? Function()?  timeout,TResult? Function( String message)?  parseError,TResult? Function( String message)?  valueError,TResult? Function( String message)?  other,}) {final _that = this;
switch (_that) {
case NoInternet() when noInternet != null:
return noInternet();case ServerError() when serverError != null:
return serverError(_that.message);case Timeout() when timeout != null:
return timeout();case ParseError() when parseError != null:
return parseError(_that.message);case ValueError() when valueError != null:
return valueError(_that.message);case Other() when other != null:
return other(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class NoInternet implements CommonFailure {
  const NoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommonFailure.noInternet()';
}


}




/// @nodoc


class ServerError implements CommonFailure {
  const ServerError({required this.message});
  

 final  String? message;

/// Create a copy of CommonFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerErrorCopyWith<ServerError> get copyWith => _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CommonFailure.serverError(message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerErrorCopyWith<$Res> implements $CommonFailureCopyWith<$Res> {
  factory $ServerErrorCopyWith(ServerError value, $Res Function(ServerError) _then) = _$ServerErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(this._self, this._then);

  final ServerError _self;
  final $Res Function(ServerError) _then;

/// Create a copy of CommonFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(ServerError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class Timeout implements CommonFailure {
  const Timeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Timeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommonFailure.timeout()';
}


}




/// @nodoc


class ParseError implements CommonFailure {
  const ParseError({required this.message});
  

 final  String message;

/// Create a copy of CommonFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParseErrorCopyWith<ParseError> get copyWith => _$ParseErrorCopyWithImpl<ParseError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParseError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CommonFailure.parseError(message: $message)';
}


}

/// @nodoc
abstract mixin class $ParseErrorCopyWith<$Res> implements $CommonFailureCopyWith<$Res> {
  factory $ParseErrorCopyWith(ParseError value, $Res Function(ParseError) _then) = _$ParseErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ParseErrorCopyWithImpl<$Res>
    implements $ParseErrorCopyWith<$Res> {
  _$ParseErrorCopyWithImpl(this._self, this._then);

  final ParseError _self;
  final $Res Function(ParseError) _then;

/// Create a copy of CommonFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ParseError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ValueError implements CommonFailure {
  const ValueError({required this.message});
  

 final  String message;

/// Create a copy of CommonFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueErrorCopyWith<ValueError> get copyWith => _$ValueErrorCopyWithImpl<ValueError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CommonFailure.valueError(message: $message)';
}


}

/// @nodoc
abstract mixin class $ValueErrorCopyWith<$Res> implements $CommonFailureCopyWith<$Res> {
  factory $ValueErrorCopyWith(ValueError value, $Res Function(ValueError) _then) = _$ValueErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ValueErrorCopyWithImpl<$Res>
    implements $ValueErrorCopyWith<$Res> {
  _$ValueErrorCopyWithImpl(this._self, this._then);

  final ValueError _self;
  final $Res Function(ValueError) _then;

/// Create a copy of CommonFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ValueError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Other implements CommonFailure {
  const Other({required this.message});
  

 final  String message;

/// Create a copy of CommonFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherCopyWith<Other> get copyWith => _$OtherCopyWithImpl<Other>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Other&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CommonFailure.other(message: $message)';
}


}

/// @nodoc
abstract mixin class $OtherCopyWith<$Res> implements $CommonFailureCopyWith<$Res> {
  factory $OtherCopyWith(Other value, $Res Function(Other) _then) = _$OtherCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$OtherCopyWithImpl<$Res>
    implements $OtherCopyWith<$Res> {
  _$OtherCopyWithImpl(this._self, this._then);

  final Other _self;
  final $Res Function(Other) _then;

/// Create a copy of CommonFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Other(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
