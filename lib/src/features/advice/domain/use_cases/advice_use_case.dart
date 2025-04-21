import 'package:lcs_app/src/features/advice/domain/entities/advice_entity.dart';

class AdviceUseCase {
  Future<AdviceEntity> getAdvice() async {
    
    // the business logic is in the use case....
    //call a repository to get data  or failure
    // proceed with business logic ( manipulate the data  )
    return const AdviceEntity(advice: "this is a new state.....", id: 2);
    
  }
}
 