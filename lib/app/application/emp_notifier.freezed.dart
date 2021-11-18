// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emp_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmpStateTearOff {
  const _$EmpStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Validado validado() {
    return const _Validado();
  }

  _Invalidado invalidado() {
    return const _Invalidado();
  }

  _Error error(String? mensaje) {
    return _Error(
      mensaje,
    );
  }
}

/// @nodoc
const $EmpState = _$EmpStateTearOff();

/// @nodoc
mixin _$EmpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() validado,
    required TResult Function() invalidado,
    required TResult Function(String? mensaje) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? validado,
    TResult Function()? invalidado,
    TResult Function(String? mensaje)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? validado,
    TResult Function()? invalidado,
    TResult Function(String? mensaje)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Validado value) validado,
    required TResult Function(_Invalidado value) invalidado,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validado value)? validado,
    TResult Function(_Invalidado value)? invalidado,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validado value)? validado,
    TResult Function(_Invalidado value)? invalidado,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmpStateCopyWith<$Res> {
  factory $EmpStateCopyWith(EmpState value, $Res Function(EmpState) then) =
      _$EmpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmpStateCopyWithImpl<$Res> implements $EmpStateCopyWith<$Res> {
  _$EmpStateCopyWithImpl(this._value, this._then);

  final EmpState _value;
  // ignore: unused_field
  final $Res Function(EmpState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$EmpStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'EmpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() validado,
    required TResult Function() invalidado,
    required TResult Function(String? mensaje) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? validado,
    TResult Function()? invalidado,
    TResult Function(String? mensaje)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? validado,
    TResult Function()? invalidado,
    TResult Function(String? mensaje)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Validado value) validado,
    required TResult Function(_Invalidado value) invalidado,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validado value)? validado,
    TResult Function(_Invalidado value)? invalidado,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validado value)? validado,
    TResult Function(_Invalidado value)? invalidado,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends EmpState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$ValidadoCopyWith<$Res> {
  factory _$ValidadoCopyWith(_Validado value, $Res Function(_Validado) then) =
      __$ValidadoCopyWithImpl<$Res>;
}

/// @nodoc
class __$ValidadoCopyWithImpl<$Res> extends _$EmpStateCopyWithImpl<$Res>
    implements _$ValidadoCopyWith<$Res> {
  __$ValidadoCopyWithImpl(_Validado _value, $Res Function(_Validado) _then)
      : super(_value, (v) => _then(v as _Validado));

  @override
  _Validado get _value => super._value as _Validado;
}

/// @nodoc

class _$_Validado extends _Validado {
  const _$_Validado() : super._();

  @override
  String toString() {
    return 'EmpState.validado()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Validado);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() validado,
    required TResult Function() invalidado,
    required TResult Function(String? mensaje) error,
  }) {
    return validado();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? validado,
    TResult Function()? invalidado,
    TResult Function(String? mensaje)? error,
  }) {
    return validado?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? validado,
    TResult Function()? invalidado,
    TResult Function(String? mensaje)? error,
    required TResult orElse(),
  }) {
    if (validado != null) {
      return validado();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Validado value) validado,
    required TResult Function(_Invalidado value) invalidado,
    required TResult Function(_Error value) error,
  }) {
    return validado(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validado value)? validado,
    TResult Function(_Invalidado value)? invalidado,
    TResult Function(_Error value)? error,
  }) {
    return validado?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validado value)? validado,
    TResult Function(_Invalidado value)? invalidado,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (validado != null) {
      return validado(this);
    }
    return orElse();
  }
}

abstract class _Validado extends EmpState {
  const factory _Validado() = _$_Validado;
  const _Validado._() : super._();
}

/// @nodoc
abstract class _$InvalidadoCopyWith<$Res> {
  factory _$InvalidadoCopyWith(
          _Invalidado value, $Res Function(_Invalidado) then) =
      __$InvalidadoCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidadoCopyWithImpl<$Res> extends _$EmpStateCopyWithImpl<$Res>
    implements _$InvalidadoCopyWith<$Res> {
  __$InvalidadoCopyWithImpl(
      _Invalidado _value, $Res Function(_Invalidado) _then)
      : super(_value, (v) => _then(v as _Invalidado));

  @override
  _Invalidado get _value => super._value as _Invalidado;
}

/// @nodoc

class _$_Invalidado extends _Invalidado {
  const _$_Invalidado() : super._();

  @override
  String toString() {
    return 'EmpState.invalidado()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Invalidado);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() validado,
    required TResult Function() invalidado,
    required TResult Function(String? mensaje) error,
  }) {
    return invalidado();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? validado,
    TResult Function()? invalidado,
    TResult Function(String? mensaje)? error,
  }) {
    return invalidado?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? validado,
    TResult Function()? invalidado,
    TResult Function(String? mensaje)? error,
    required TResult orElse(),
  }) {
    if (invalidado != null) {
      return invalidado();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Validado value) validado,
    required TResult Function(_Invalidado value) invalidado,
    required TResult Function(_Error value) error,
  }) {
    return invalidado(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validado value)? validado,
    TResult Function(_Invalidado value)? invalidado,
    TResult Function(_Error value)? error,
  }) {
    return invalidado?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validado value)? validado,
    TResult Function(_Invalidado value)? invalidado,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (invalidado != null) {
      return invalidado(this);
    }
    return orElse();
  }
}

abstract class _Invalidado extends EmpState {
  const factory _Invalidado() = _$_Invalidado;
  const _Invalidado._() : super._();
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String? mensaje});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$EmpStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? mensaje = freezed,
  }) {
    return _then(_Error(
      mensaje == freezed
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error(this.mensaje) : super._();

  @override
  final String? mensaje;

  @override
  String toString() {
    return 'EmpState.error(mensaje: $mensaje)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.mensaje, mensaje) || other.mensaje == mensaje));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mensaje);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() validado,
    required TResult Function() invalidado,
    required TResult Function(String? mensaje) error,
  }) {
    return error(mensaje);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? validado,
    TResult Function()? invalidado,
    TResult Function(String? mensaje)? error,
  }) {
    return error?.call(mensaje);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? validado,
    TResult Function()? invalidado,
    TResult Function(String? mensaje)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(mensaje);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Validado value) validado,
    required TResult Function(_Invalidado value) invalidado,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validado value)? validado,
    TResult Function(_Invalidado value)? invalidado,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validado value)? validado,
    TResult Function(_Invalidado value)? invalidado,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends EmpState {
  const factory _Error(String? mensaje) = _$_Error;
  const _Error._() : super._();

  String? get mensaje;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
