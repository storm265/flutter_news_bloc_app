abstract class NewsRemoteDataSource {
  Future<Map<String, dynamic>> getEverything({
    required String title,
    String language = 'en',
  });

  Future<Map<String, dynamic>> getTopHeadlines({
    String countryCode = 'us',
    String category = 'general',
  });
}
