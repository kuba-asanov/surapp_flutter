class SvgAppAssets {
  const SvgAppAssets();

  String _path(String path) {
    return 'assets/svg/$path.svg';
  }

  String get logo => _path("img_logo");
}
