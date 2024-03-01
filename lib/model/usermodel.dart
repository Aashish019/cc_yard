class UserModel {
  int? code;
  String? reason;
  String? token;
  Data? data;

  UserModel({
    this.code,
    this.reason,
    this.token,
    this.data,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    reason = json['reason'];
    token = json['token'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['reason'] = reason;
    data['token'] = token;
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? userName;
  String? countryDialCode;
  String? phoneNumber;
  bool? isVerifiedUser;
  bool? isActive;
  Null deviceId;
  int? noOfNewsRead;
  Null profilePicture;
  String? userType;
  Null about;
  String? preferredLanguage;

  Data(
      {this.id,
      this.userName,
      this.countryDialCode,
      this.phoneNumber,
      this.isVerifiedUser,
      this.isActive,
      this.deviceId,
      this.noOfNewsRead,
      this.profilePicture,
      this.userType,
      this.about,
      this.preferredLanguage});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    countryDialCode = json['country_dial_code'];
    phoneNumber = json['phone_number'];
    isVerifiedUser = json['is_verified_user'];
    isActive = json['is_active'];
    deviceId = json['device_id'];
    noOfNewsRead = json['no_of_news_read'];
    profilePicture = json['profile_picture'];
    userType = json['user_type'];
    about = json['about'];
    preferredLanguage = json['preferred_language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_name'] = userName;
    data['country_dial_code'] = countryDialCode;
    data['phone_number'] = phoneNumber;
    data['is_verified_user'] = isVerifiedUser;
    data['is_active'] = isActive;
    data['device_id'] = deviceId;
    data['no_of_news_read'] = noOfNewsRead;
    data['profile_picture'] = profilePicture;
    data['user_type'] = userType;
    data['about'] = about;
    data['preferred_language'] = preferredLanguage;
    return data;
  }
}
