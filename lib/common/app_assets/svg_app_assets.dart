class SvgAppAssets {
  const SvgAppAssets();

  String _path(String path) {
    return 'assets/icons/$path.svg';
  }

  String get mosque => _path("mosque");
  String get navbar1icon => _path("navbar1icon");
  String get navbar2icon => _path("navbar2icon");
  String get navbar3icon => _path("navbar3icon");
}
