import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lcs_app/src/features/advice/domain/entities/advice_entity.dart';
import 'package:lcs_app/src/features/advice/domain/use_cases/advice_use_case.dart';
import 'package:lcs_app/src/features/advice/presentation/widgets/advice_state_category.dart';
part 'advice_event.dart';
part 'advice_state.dart';
part 'advice_bloc.freezed.dart';

class AdviceBloc extends Bloc<AdviceEvent, AdviceState> {
  AdviceBloc() : super(const AdviceState()) {
    on<_Requested>(_onAdviceRequestedEvent);
  }

  final AdviceUseCase adviceUseCase = AdviceUseCase();
  // Auth UseCases...
  // User Login UseCases...
  // User LogOut UseCase....

  void _onAdviceRequestedEvent(
      _Requested event, Emitter<AdviceState> emit) async {
    //emit loading state ...
    emit(state.copyWith(adviceState: AdviceStateCategory.loading));

    final AdviceEntity advice = await adviceUseCase.getAdvice();

    await Future.delayed(const Duration(seconds: 2));
    //emit success state........
    emit(
      state.copyWith(
        adviceLoaded: advice.advice,
        adviceState: AdviceStateCategory.success,
      ),
    );
  }
}
