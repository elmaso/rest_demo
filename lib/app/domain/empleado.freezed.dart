// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'empleado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Empleado _$EmpleadoFromJson(Map<String, dynamic> json) {
  return _Empleado.fromJson(json);
}

/// @nodoc
class _$EmpleadoTearOff {
  const _$EmpleadoTearOff();

  _Empleado call({required String nombre, required String grupoGerencial}) {
    return _Empleado(
      nombre: nombre,
      grupoGerencial: grupoGerencial,
    );
  }

  Empleado fromJson(Map<String, Object?> json) {
    return Empleado.fromJson(json);
  }
}

/// @nodoc
const $Empleado = _$EmpleadoTearOff();

/// @nodoc
mixin _$Empleado {
  String get nombre => throw _privateConstructorUsedError;
  String get grupoGerencial => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmpleadoCopyWith<Empleado> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmpleadoCopyWith<$Res> {
  factory $EmpleadoCopyWith(Empleado value, $Res Function(Empleado) then) =
      _$EmpleadoCopyWithImpl<$Res>;
  $Res call({String nombre, String grupoGerencial});
}

/// @nodoc
class _$EmpleadoCopyWithImpl<$Res> implements $EmpleadoCopyWith<$Res> {
  _$EmpleadoCopyWithImpl(this._value, this._then);

  final Empleado _value;
  // ignore: unused_field
  final $Res Function(Empleado) _then;

  @override
  $Res call({
    Object? nombre = freezed,
    Object? grupoGerencial = freezed,
  }) {
    return _then(_value.copyWith(
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      grupoGerencial: grupoGerencial == freezed
          ? _value.grupoGerencial
          : grupoGerencial // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmpleadoCopyWith<$Res> implements $EmpleadoCopyWith<$Res> {
  factory _$EmpleadoCopyWith(_Empleado value, $Res Function(_Empleado) then) =
      __$EmpleadoCopyWithImpl<$Res>;
  @override
  $Res call({String nombre, String grupoGerencial});
}

/// @nodoc
class __$EmpleadoCopyWithImpl<$Res> extends _$EmpleadoCopyWithImpl<$Res>
    implements _$EmpleadoCopyWith<$Res> {
  __$EmpleadoCopyWithImpl(_Empleado _value, $Res Function(_Empleado) _then)
      : super(_value, (v) => _then(v as _Empleado));

  @override
  _Empleado get _value => super._value as _Empleado;

  @override
  $Res call({
    Object? nombre = freezed,
    Object? grupoGerencial = freezed,
  }) {
    return _then(_Empleado(
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      grupoGerencial: grupoGerencial == freezed
          ? _value.grupoGerencial
          : grupoGerencial // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Empleado extends _Empleado {
  const _$_Empleado({required this.nombre, required this.grupoGerencial})
      : super._();

  factory _$_Empleado.fromJson(Map<String, dynamic> json) =>
      _$$_EmpleadoFromJson(json);

  @override
  final String nombre;
  @override
  final String grupoGerencial;

  @override
  String toString() {
    return 'Empleado(nombre: $nombre, grupoGerencial: $grupoGerencial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Empleado &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.grupoGerencial, grupoGerencial) ||
                other.grupoGerencial == grupoGerencial));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nombre, grupoGerencial);

  @JsonKey(ignore: true)
  @override
  _$EmpleadoCopyWith<_Empleado> get copyWith =>
      __$EmpleadoCopyWithImpl<_Empleado>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmpleadoToJson(this);
  }
}

abstract class _Empleado extends Empleado {
  const factory _Empleado(
      {required String nombre, required String grupoGerencial}) = _$_Empleado;
  const _Empleado._() : super._();

  factory _Empleado.fromJson(Map<String, dynamic> json) = _$_Empleado.fromJson;

  @override
  String get nombre;
  @override
  String get grupoGerencial;
  @override
  @JsonKey(ignore: true)
  _$EmpleadoCopyWith<_Empleado> get copyWith =>
      throw _privateConstructorUsedError;
}
