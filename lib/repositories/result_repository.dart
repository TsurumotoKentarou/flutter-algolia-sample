import 'package:algolia/algolia.dart';
import 'package:algoloia_sample/entities/result_item.dart';

abstract class ResultRepository {
  /// search by algolia
  Future<List<ResultItem>> fetch(String name);
}

class ResultRepositoryImpl extends ResultRepository {
  static final Algolia algolia = Algolia.init(
    applicationId: 'Your application id',
    apiKey: 'Your api key',
  );

  /// search by algolia
  Future<List<ResultItem>> fetch(String name) async {
    final String filterString =
        'shumi < 4 AND amami < 2 AND nigami < 2 AND volume < 2 AND kaori < 2';
    AlgoliaQuery query = algolia.instance.index('posts').query(name);
    query = query.filters(filterString);
    return query.getObjects().then((snapshot) {
      return snapshot.hits.map((data) {
        print(data.data);
        final result = ResultItem.fromJson(data.data);
        return result;
      }).toList();
    });
  }
}
