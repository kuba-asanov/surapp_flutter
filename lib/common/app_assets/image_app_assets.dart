class ImageAppAssets {
  const ImageAppAssets();

  String _path(String path) {
    return 'assets/images/$path.png';
  }

  String get logo => _path("logo");
}
