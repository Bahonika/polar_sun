abstract class Api {

  static const String siteRoot = "localhost:8000";
  static const String apiRoot = "/api/";

  String get apiEndpoint;

  String apiPath() => apiRoot+apiEndpoint;

}