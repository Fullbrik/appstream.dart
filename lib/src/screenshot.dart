import 'utils.dart';

enum AppstreamImageType { source, thumbnail }

class AppstreamImage {
  final AppstreamImageType type;
  final String url;
  final int? width;
  final int? height;
  final String? lang;

  const AppstreamImage(
      {required this.type,
      required this.url,
      this.width,
      this.height,
      this.lang});

  @override
  bool operator ==(other) =>
      other is AppstreamImage &&
      other.type == type &&
      other.url == url &&
      other.width == width &&
      other.height == height &&
      other.lang == lang;

  @override
  String toString() =>
      "$runtimeType(type: $type, url: '$url', width: $width, height: $height, lang: $lang)";
}

class AppstreamScreenshot {
  final List<AppstreamImage> images;
  final Map<String, String> caption;
  final bool isDefault;

  const AppstreamScreenshot(
      {this.images = const [],
      this.caption = const {},
      this.isDefault = false});

  @override
  bool operator ==(other) =>
      other is AppstreamScreenshot &&
      listsEqual(other.images, images) &&
      mapsEqual(other.caption, caption) &&
      other.isDefault == isDefault;

  @override
  String toString() =>
      '$runtimeType(images: $images, caption: $caption, isDefault: $isDefault)';
}
