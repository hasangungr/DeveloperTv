class SearchResultModel {
  //todo törpü
  String? kind;
  String? etag;
  String? nextPageToken;
  String? regionCode;
  PageInfo? pageInfo;
  List<Items>? items;

  SearchResultModel({
    this.kind,
    this.etag,
    this.nextPageToken,
    this.regionCode,
    this.pageInfo,
    this.items,
  });

  factory SearchResultModel.fromJson(Map<String, dynamic> json) {
    return SearchResultModel(
      kind: json['kind'] as String?,
      etag: json['etag'] as String?,
      nextPageToken: json['nextPageToken'] as String?,
      regionCode: json['regionCode'] as String?,
      pageInfo: json['pageInfo'] == null
          ? null
          : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class PageInfo {
  int? totalResults;
  int? resultsPerPage;

  PageInfo({
    this.totalResults,
    this.resultsPerPage,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) {
    return PageInfo(
      totalResults: json['totalResults'] as int?,
      resultsPerPage: json['resultsPerPage'] as int?,
    );
  }
}

class Items {
  String? kind;
  String? etag;
  Id id;
  Snippet? snippet;

  Items({
    this.kind,
    this.etag,
    required this.id,
    this.snippet,
  });

  factory Items.fromJson(Map<String, dynamic> json) {
    return Items(
      kind: json['kind'] as String?,
      etag: json['etag'] as String?,
      id: json['id'] = Id.fromJson(json['id'] as Map<String, dynamic>),
      snippet: json['snippet'] == null
          ? null
          : Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
    );
  }
}

class Id {
  String? kind;
  String? videoId;

  Id({
    this.kind,
    this.videoId,
  });

  factory Id.fromJson(Map<String, dynamic> json) {
    return Id(
      kind: json['kind'] as String?,
      videoId: json['videoId'] as String?,
    );
  }
}

class Snippet {
  String? publishedAt;
  String? channelId;
  String? title;
  String? description;
  Thumbnails? thumbnails;
  String? channelTitle;
  String? liveBroadcastContent;
  String? publishTime;

  Snippet({
    this.publishedAt,
    this.channelId,
    this.title,
    this.description,
    this.thumbnails,
    this.channelTitle,
    this.liveBroadcastContent,
    this.publishTime,
  });

  factory Snippet.fromJson(Map<String, dynamic> json) {
    return Snippet(
      publishedAt: json['publishedAt'] as String?,
      channelId: json['channelId'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnails: json['thumbnails'] == null
          ? null
          : Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      channelTitle: json['channelTitle'] as String?,
      liveBroadcastContent: json['liveBroadcastContent'] as String?,
      publishTime: json['publishTime'] as String?,
    );
  }
}

class Thumbnails {
  Default? defaultProperty;
  Medium? medium;
  High? high;

  Thumbnails({
    this.defaultProperty,
    this.medium,
    this.high,
  });

  factory Thumbnails.fromJson(Map<String, dynamic> json) {
    return Thumbnails(
      defaultProperty: json['default'] == null
          ? null
          : Default.fromJson(json['default'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : Medium.fromJson(json['medium'] as Map<String, dynamic>),
      high: json['high'] == null
          ? null
          : High.fromJson(json['high'] as Map<String, dynamic>),
    );
  }
}

class Default {
  String? url;
  int? width;
  int? height;

  Default({
    this.url,
    this.width,
    this.height,
  });

  factory Default.fromJson(Map<String, dynamic> json) {
    return Default(
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );
  }
}

class Medium {
  String? url;
  int? width;
  int? height;

  Medium({
    this.url,
    this.width,
    this.height,
  });

  factory Medium.fromJson(Map<String, dynamic> json) {
    return Medium(
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );
  }
}

class High {
  String? url;
  int? width;
  int? height;

  High({
    this.url,
    this.width,
    this.height,
  });

  factory High.fromJson(Map<String, dynamic> json) {
    return High(
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );
  }
}
