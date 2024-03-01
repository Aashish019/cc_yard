class AllPollsModel {
  String? topic;
  String? question;
  TextOptions? textOptions;
  String? newsName;
  String? newsNickName;
  String? newsSubtext;
  String? noOfLikes;
  String? comments;

  AllPollsModel({
    this.topic,
    this.question,
    this.textOptions,
    this.newsName,
    this.newsNickName,
    this.newsSubtext,
    this.noOfLikes,
    this.comments,
  });

  AllPollsModel.fromJson(Map<String, dynamic> json) {
    topic = json['topic'];
    question = json['question'];
    textOptions = json['text_options'] != null
        ? TextOptions.fromJson(json['text_options'])
        : null;
    newsName = json['news_name'];
    newsNickName = json['news_nick_name'];
    newsSubtext = json['news_subtext'];
    noOfLikes = json['no_of_likes'];
    comments = json['comments'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['topic'] = topic;
    data['question'] = question;
    if (textOptions != null) {
      data['text_options'] = textOptions!.toJson();
    }
    data['news_name'] = newsName;
    data['newsNickName'] = newsNickName;
    data['news_subtext'] = newsSubtext;
    data['no_of_likes'] = noOfLikes;
    data['comments'] = comments;
    return data;
  }
}

class TextOptions {
  String? s1;
  String? s2;
  String? s3;
  String? s4;

  TextOptions({this.s1, this.s2, this.s3, this.s4});

  TextOptions.fromJson(Map<String, dynamic> json) {
    s1 = json['1'];
    s2 = json['2'];
    s3 = json['3'];
    s4 = json['4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['1'] = s1;
    data['2'] = s2;
    data['3'] = s3;
    data['4'] = s4;
    return data;
  }
}
