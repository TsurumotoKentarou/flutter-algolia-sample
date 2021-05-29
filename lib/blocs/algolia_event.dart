import 'package:equatable/equatable.dart';

abstract class AlgoliaEvent extends Equatable {
  const AlgoliaEvent();
}

class StartFetchResults extends AlgoliaEvent {
  final String name;

  StartFetchResults({this.name = ""});

  @override
  List<Object> get props => [this.name];
}
