part of 'advice_bloc.dart';

@freezed
class AdviceState with _$AdviceState {
  const factory AdviceState({
    @Default(AdviceStateCategory.idle) AdviceStateCategory adviceState,
    @Default(false) bool isAdviceLoading,
    final String? adviceLoaded,
    final String? errorMessage,
  }) = _AdviceState;
}
