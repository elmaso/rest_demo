import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'emp_notifier.freezed.dart';

@freezed
class EmpState with _$EmpState {
  const EmpState._();
  const factory EmpState.initial() = _Initial;
  const factory EmpState.validado() = _Validado;
  const factory EmpState.invalidado() = _Invalidado;
  const factory EmpState.error(String? mensaje) = _Error;
}


class EmpNotifier extends StateNotifier<EmpState>{
  EmpNotifier() : super(const EmpState.initial());

}
