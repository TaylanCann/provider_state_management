class Twitter {
  Twitter({
    required this.previousCursor,
    required this.previousCursorStr,
    required this.nextCursor,
    required this.users,
    required this.nextCursorStr,
  });
  late final int previousCursor;
  late final String previousCursorStr;
  late final int nextCursor;
  late final List<Users> users;
  late final String nextCursorStr;

  Twitter.fromJson(Map<String, dynamic> json) {
    previousCursor = json['previous_cursor'];
    previousCursorStr = json['previous_cursor_str'];
    nextCursor = json['next_cursor'];
    users = List.from(json['users']).map((e) => Users.fromJson(e)).toList();
    nextCursorStr = json['next_cursor_str'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['previous_cursor'] = previousCursor;
    _data['previous_cursor_str'] = previousCursorStr;
    _data['next_cursor'] = nextCursor;
    _data['users'] = users.map((e) => e.toJson()).toList();
    _data['next_cursor_str'] = nextCursorStr;
    return _data;
  }
}

class Users {
  Users({
    required this.profileSidebarFillColor,
    required this.profileBackgroundTile,
    required this.profileSidebarBorderColor,
    required this.name,
    required this.createdAt,
    required this.profileImageUrl,
    required this.location,
    required this.isTranslator,
    required this.followRequestSent,
    required this.profileLinkColor,
    required this.idStr,
    required this.entities,
    required this.contributorsEnabled,
    required this.favouritesCount,
    this.url,
    required this.defaultProfile,
    this.utcOffset,
    required this.profileImageUrlHttps,
    required this.id,
    required this.listedCount,
    required this.profileUseBackgroundImage,
    required this.followersCount,
    required this.protected,
    required this.lang,
    required this.profileTextColor,
    required this.profileBackgroundColor,
    required this.notifications,
    required this.verified,
    required this.description,
    required this.geoEnabled,
    this.timeZone,
    required this.profileBackgroundImageUrlHttps,
    required this.friendsCount,
    required this.defaultProfileImage,
    required this.statusesCount,
    required this.profileBackgroundImageUrl,
    required this.following,
    required this.screenName,
  });
  late final String profileSidebarFillColor;
  late final bool profileBackgroundTile;
  late final String profileSidebarBorderColor;
  late final String name;
  late final String createdAt;
  late final String profileImageUrl;
  late final String location;
  late final bool isTranslator;
  late final bool followRequestSent;
  late final String profileLinkColor;
  late final String idStr;
  late final Entities entities;
  late final bool contributorsEnabled;
  late final int favouritesCount;
  late final Null url;
  late final bool defaultProfile;
  late final Null utcOffset;
  late final String profileImageUrlHttps;
  late final int id;
  late final int listedCount;
  late final bool profileUseBackgroundImage;
  late final int followersCount;
  late final bool protected;
  late final String lang;
  late final String profileTextColor;
  late final String profileBackgroundColor;
  late final bool notifications;
  late final bool verified;
  late final String description;
  late final bool geoEnabled;
  late final Null timeZone;
  late final String profileBackgroundImageUrlHttps;
  late final int friendsCount;
  late final bool defaultProfileImage;
  late final int statusesCount;
  late final String profileBackgroundImageUrl;
  late final bool following;
  late final String screenName;

  Users.fromJson(Map<String, dynamic> json) {
    profileSidebarFillColor = json['profile_sidebar_fill_color'];
    profileBackgroundTile = json['profile_background_tile'];
    profileSidebarBorderColor = json['profile_sidebar_border_color'];
    name = json['name'];
    createdAt = json['created_at'];
    profileImageUrl = json['profile_image_url'];
    location = json['location'];
    isTranslator = json['is_translator'];
    followRequestSent = json['follow_request_sent'];
    profileLinkColor = json['profile_link_color'];
    idStr = json['id_str'];
    entities = Entities.fromJson(json['entities']);
    contributorsEnabled = json['contributors_enabled'];
    favouritesCount = json['favourites_count'];
    url = null;
    defaultProfile = json['default_profile'];
    utcOffset = null;
    profileImageUrlHttps = json['profile_image_url_https'];
    id = json['id'];
    listedCount = json['listed_count'];
    profileUseBackgroundImage = json['profile_use_background_image'];
    followersCount = json['followers_count'];
    protected = json['protected'];
    lang = json['lang'];
    profileTextColor = json['profile_text_color'];
    profileBackgroundColor = json['profile_background_color'];
    notifications = json['notifications'];
    verified = json['verified'];
    description = json['description'];
    geoEnabled = json['geo_enabled'];
    timeZone = null;
    profileBackgroundImageUrlHttps = json['profile_background_image_url_https'];
    friendsCount = json['friends_count'];
    defaultProfileImage = json['default_profile_image'];
    statusesCount = json['statuses_count'];
    profileBackgroundImageUrl = json['profile_background_image_url'];
    following = json['following'];
    screenName = json['screen_name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['profile_sidebar_fill_color'] = profileSidebarFillColor;
    _data['profile_background_tile'] = profileBackgroundTile;
    _data['profile_sidebar_border_color'] = profileSidebarBorderColor;
    _data['name'] = name;
    _data['created_at'] = createdAt;
    _data['profile_image_url'] = profileImageUrl;
    _data['location'] = location;
    _data['is_translator'] = isTranslator;
    _data['follow_request_sent'] = followRequestSent;
    _data['profile_link_color'] = profileLinkColor;
    _data['id_str'] = idStr;
    _data['entities'] = entities.toJson();
    _data['contributors_enabled'] = contributorsEnabled;
    _data['favourites_count'] = favouritesCount;
    _data['url'] = url;
    _data['default_profile'] = defaultProfile;
    _data['utc_offset'] = utcOffset;
    _data['profile_image_url_https'] = profileImageUrlHttps;
    _data['id'] = id;
    _data['listed_count'] = listedCount;
    _data['profile_use_background_image'] = profileUseBackgroundImage;
    _data['followers_count'] = followersCount;
    _data['protected'] = protected;
    _data['lang'] = lang;
    _data['profile_text_color'] = profileTextColor;
    _data['profile_background_color'] = profileBackgroundColor;
    _data['notifications'] = notifications;
    _data['verified'] = verified;
    _data['description'] = description;
    _data['geo_enabled'] = geoEnabled;
    _data['time_zone'] = timeZone;
    _data['profile_background_image_url_https'] =
        profileBackgroundImageUrlHttps;
    _data['friends_count'] = friendsCount;
    _data['default_profile_image'] = defaultProfileImage;
    _data['statuses_count'] = statusesCount;
    _data['profile_background_image_url'] = profileBackgroundImageUrl;
    _data['following'] = following;
    _data['screen_name'] = screenName;
    return _data;
  }
}

class Entities {
  Entities({
    required this.description,
  });
  late final Description description;

  Entities.fromJson(Map<String, dynamic> json) {
    description = Description.fromJson(json['description']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['description'] = description.toJson();
    return _data;
  }
}

class Description {
  Description({
    required this.urls,
  });
  late final List<dynamic> urls;

  Description.fromJson(Map<String, dynamic> json) {
    urls = List.castFrom<dynamic, dynamic>(json['urls']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['urls'] = urls;
    return _data;
  }
}
