import 'package:algoloia_sample/blocs/algolia_bloc.dart';
import 'package:algoloia_sample/blocs/algolia_event.dart';
import 'package:algoloia_sample/blocs/algolia_state.dart';
import 'package:algoloia_sample/entities/result_item.dart';
import 'package:algoloia_sample/repositories/result_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultItems extends StatelessWidget {
  final bloc = AlgoliaBloc(ResultRepositoryImpl(), InitialState());

  TextField _textField() {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Enter a search term',
      ),
      onSubmitted: (value) {
        bloc.add(StartFetchResults(name: value));
      },
    );
  }

  Widget _rowWidget(ResultItem item) {
    return Container(
      height: 50,
      color: Colors.grey,
      child: Row(
        children: [
          Text(
              '${item.name}, shumi:${item.shumi}, ama:${item.amami}, kaji:${item.kajitumi}, niga:${item.nigami}, vol:${item.volume}, kao:${item.kaori}')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlgoliaBloc, AlgoliaState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is FetchResultsSuccess) {
            return Column(
              children: [
                _textField(),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return _rowWidget(state.results[index]);
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 1,
                        );
                      },
                      itemCount: state.results.length),
                )
              ],
            );
          } else {
            return Column(
              children: [
                _textField(),
              ],
            );
          }
        });
  }
}
