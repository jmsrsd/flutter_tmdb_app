class API {
  final String accessToken;

  API({
    required this.accessToken,
  });

  Map<String, String> get header {
    return {
      'Authorization': 'Bearer $accessToken',
      'Content-Type': 'application/json;charset=utf-8',
    };
  }
}
