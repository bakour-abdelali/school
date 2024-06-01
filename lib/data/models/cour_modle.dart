class CourModel {
  String? subscriptionId;
  String? subscriptionCount;
  String? subscriptionDateCreat;
  String? subscriptionExpiryDate;
  String? subscriptionPrise;
  String? studentId;
  String? studentFname;
  String? studentLname;
  String? studentEmail;
  String? studentPhone;
  String? studentDateCreate;
  String? studentPassword;
  String? studentNumber;
  String? studentActive;
  String? studentImage;
  String? studentVerfaicode;
  String? coursId;
  String? coursName;
  String? coursSection;
  String? coursPrice;
  String? coursLevel;
  String? isExpired;

  CourModel(
      {this.subscriptionId,
      this.subscriptionCount,
      this.subscriptionDateCreat,
      this.subscriptionExpiryDate,
      this.subscriptionPrise,
      this.studentId,
      this.studentFname,
      this.studentLname,
      this.studentEmail,
      this.studentPhone,
      this.studentDateCreate,
      this.studentPassword,
      this.studentNumber,
      this.studentActive,
      this.studentImage,
      this.studentVerfaicode,
      this.coursId,
      this.coursName,
      this.coursSection,
      this.coursPrice,
      this.coursLevel,
      this.isExpired});

  CourModel.fromJson(Map<String, dynamic> json) {
    subscriptionId = json['subscription_id'];
    subscriptionCount = json['subscription_count'];
    subscriptionDateCreat = json['subscription_date_creat'];
    subscriptionExpiryDate = json['subscription_expiry_date'];
    subscriptionPrise = json['subscription_prise'];
    studentId = json['student_id'];
    studentFname = json['student_fname'];
    studentLname = json['student_lname'];
    studentEmail = json['student_email'];
    studentPhone = json['student_phone'];
    studentDateCreate = json['student_date_create'];
    studentPassword = json['student_password'];
    studentNumber = json['student_number'];
    studentActive = json['student_active'];
    studentImage = json['student_image'];
    studentVerfaicode = json['student_verfaicode'];
    coursId = json['cours_id'];
    coursName = json['cours_name'];
    coursSection = json['cours_section'];
    coursPrice = json['cours_price'];
    coursLevel = json['cours_level'];
    isExpired = json['is_expired'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subscription_id'] = subscriptionId;
    data['subscription_count'] = subscriptionCount;
    data['subscription_date_creat'] = subscriptionDateCreat;
    data['subscription_expiry_date'] = subscriptionExpiryDate;
    data['subscription_prise'] = subscriptionPrise;
    data['student_id'] = studentId;
    data['student_fname'] = studentFname;
    data['student_lname'] = studentLname;
    data['student_email'] = studentEmail;
    data['student_phone'] = studentPhone;
    data['student_date_create'] = studentDateCreate;
    data['student_password'] = studentPassword;
    data['student_number'] = studentNumber;
    data['student_active'] = studentActive;
    data['student_image'] = studentImage;
    data['student_verfaicode'] = studentVerfaicode;
    data['cours_id'] = coursId;
    data['cours_name'] = coursName;
    data['cours_section'] = coursSection;
    data['cours_price'] = coursPrice;
    data['cours_level'] = coursLevel;
    data['is_expired'] = isExpired;
    return data;
  }
}
