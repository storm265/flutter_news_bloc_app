abstract class NewsRemoteDataSource {
  Future<Map<String, dynamic>> getEverything({required String title});

  Future<Map<String, dynamic>> getTopHeadlines({
    String countryCode = 'us',
    String category = 'general',
  });
}
