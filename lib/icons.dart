class Link22O_SvgAssets {
  static final Link22O_SvgAssets _instance = Link22O_SvgAssets._internal();

  factory Link22O_SvgAssets() {
    return _instance;
  }

  Link22O_SvgAssets._internal();

  Map<AssetName, String> assets = {
    AssetName.settings: "assets/icons/settings.svg",
    AssetName.vectorBottom: "assets/pics/Vector.svg",
    AssetName.vectorTop: "assets/pics/Vector-1.svg",
    AssetName.vectorSmallBottom: "assets/pics/VectorSmallBottom.svg",
    AssetName.vectorSmallTop: "assets/pics/VectorSmallTop.svg",
    AssetName.back: "assets/icons/back.svg",
    AssetName.video: "assets/icons/video.svg",
    AssetName.read: "assets/icons/read.svg",
    AssetName.profile: "assets/icons/profile.svg",
    AssetName.about: "assets/icons/about.svg",
    AssetName.help: "assets/icons/help.svg",
    AssetName.language: "assets/icons/language.svg",
    AssetName.notif: "assets/icons/notif.svg",
    AssetName.priv: "assets/icons/priv.svg",
    AssetName.stats: "assets/icons/stats.svg",
    AssetName.theme: "assets/icons/theme.svg",
    AssetName.link: "assets/icons/link.svg",
  };
}

enum AssetName {
  settings,
  vectorBottom,
  vectorTop,
  vectorSmallBottom,
  vectorSmallTop,
  back,
  video,
  read,
  profile,
  about,
  help,
  language,
  notif,
  priv,
  stats,
  theme,
  link,
}
