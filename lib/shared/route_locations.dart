class RouteLocations {
  RouteLocations._();

  static const String home = '/';
  static const String detail = '/detail';
  static const String edit = '/edit';
}

extension RouteLocationsExtension on RouteLocations {
  static String get home => 'home-page';
  static String get detail => 'detail-page';
  static String get edit => 'edit-page';
}
