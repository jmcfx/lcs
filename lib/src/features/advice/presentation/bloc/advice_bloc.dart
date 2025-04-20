import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lcs_app/src/features/advice/presentation/widgets/advice_state_category.dart';
part 'advice_event.dart';
part 'advice_state.dart';
part 'advice_bloc.freezed.dart';

class AdviceBloc extends Bloc<AdviceEvent, AdviceState> {
  AdviceBloc() : super(const AdviceState()) {
    on<_Requested>(_onAdviceRequestedEvent);
  }

  void _onAdviceRequestedEvent(
      _Requested event, Emitter<AdviceState> emit) async {
    emit(state.copyWith(adviceState: AdviceStateCategory.loading));
    debugPrint("fake get advice triggered ");
    await Future.delayed(const Duration(seconds: 2));
    debugPrint("got advice");
    emit(state.copyWith(
      adviceLoaded:
         "Formal education will make you a living; self-education will make you a fortune",
      adviceState: AdviceStateCategory.success,
    ));
  }
}
