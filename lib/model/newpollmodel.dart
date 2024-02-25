class DataPoll {
  Data? data;

  DataPoll({this.data});

  DataPoll.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? topic;
  String? question;
  String? pollType;
  TextOptions? textOptions;
  int? noOfLikes;
  int? noOfDislikes;
  bool? isAnonymous;

  Data(
      {this.topic,
      this.question,
      this.pollType,
      this.textOptions,
      this.noOfLikes,
      this.noOfDislikes,
      this.isAnonymous});

  Data.fromJson(Map<String, dynamic> json) {
    topic = json['topic'];
    question = json['question'];
    pollType = json['poll_type'];
    textOptions = json['text_options'] != null
        ? TextOptions.fromJson(json['text_options'])
        : null;
    noOfLikes = json['no_of_likes'];
    noOfDislikes = json['no_of_dislikes'];
    isAnonymous = json['is_anonymous'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['topic'] = topic;
    data['question'] = question;
    data['poll_type'] = pollType;
    if (textOptions != null) {
      data['text_options'] = textOptions!.toJson();
    }
    data['no_of_likes'] = noOfLikes;
    data['no_of_dislikes'] = noOfDislikes;
    data['is_anonymous'] = isAnonymous;
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
