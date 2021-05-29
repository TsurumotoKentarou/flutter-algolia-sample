import 'package:algoloia_sample/entities/result_item.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class AlgoliaState extends Equatable {
  const AlgoliaState();

    @override
  List<Object> get props => [];
}

class InitialState extends AlgoliaState {}

class FetchResultsSuccess extends AlgoliaState {
  final List<ResultItem> results;

  FetchResultsSuccess([this.results = const []]);

  @override
  List<Object> get props => [this.results];
}

class FetchResultsFailure extends AlgoliaState {
  final Error? error;

  FetchResultsFailure(this.error);

  @override
  List<Object> get props => this.error != null ? [this.error!] : [];
}
