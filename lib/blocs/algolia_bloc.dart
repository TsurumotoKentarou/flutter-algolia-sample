import 'package:algoloia_sample/blocs/algolia_event.dart';
import 'package:algoloia_sample/blocs/algolia_state.dart';
import 'package:algoloia_sample/repositories/result_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlgoliaBloc extends Bloc<AlgoliaEvent, AlgoliaState> {
  final ResultRepository repository;

  AlgoliaBloc(this.repository, AlgoliaState initialState) : super(initialState);

  @override
  Stream<AlgoliaState> mapEventToState(AlgoliaEvent event) async* {
    if (event is StartFetchResults) {
      try {
        final list = await this.repository.fetch(event.name);
        if (list.isEmpty) {
          print("該当なし");
        } else {
          print('${list.length}件ヒットしました');
        }
        yield FetchResultsSuccess(list);
      } catch (error) {
        print(error);
        yield FetchResultsFailure(null);
      }
    }
  }
}
