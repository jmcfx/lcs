part of 'advice_bloc.dart';

@freezed
class AdviceEvent with _$AdviceEvent {
  const factory AdviceEvent.adviceRequested() = _Requested;
}