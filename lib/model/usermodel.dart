class UserModel {
  String? otp;
  String? phoneNumber;

  UserModel({
    this.otp,
    this.phoneNumber,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    otp = json['otp'];
    phoneNumber = json['phone_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['otp'] = otp;
    data['phone_number'] = phoneNumber;
    return data;
  }
}
