abstract class NewsRemoteDataSource {
  Future<Map<String, dynamic>> getEverything({
    required String title,
    String language = 'us',
  });

  Future<Map<String, dynamic>> getTopHeadlines({
    String countryCode = 'us',
    String category = 'general',
  });
}
