

import 'package:freezed_annotation/freezed_annotation.dart';

part 'empleado.freezed.dart';
part 'empleado.g.dart';

@freezed
class Empleado with _$Empleado {
  const Empleado._();
  const factory Empleado({required String nombre,
 required String grupoGerencial,}) = _Empleado;

  factory Empleado.fromJson(Map<String, dynamic> json) => _$EmpleadoFromJson(json);
}
