class MyGroupModle {
  String? teacherId;
  String? coursId;
  String? lessonDateCreate;
  String? lessonId;
  String? lessonName;
  String? coursName;
  String? coursSection;
  String? coursPrice;
  String? coursLevel;
  String? teacherFname;
  String? teacherLname;
  String? teacherPhone;
  String? teacherEmail;
  String? teacherDateCreate;
  String? teacherPassword;
  String? teacherImage;
  String? teacherModelName;
  String? teacherSalary;
  String? teacherNumber;
  String? groupStudentId;

  MyGroupModle(
      {this.teacherId,
      this.coursId,
      this.lessonDateCreate,
      this.lessonId,
      this.lessonName,
      this.coursName,
      this.coursSection,
      this.coursPrice,
      this.coursLevel,
      this.teacherFname,
      this.teacherLname,
      this.teacherPhone,
      this.teacherEmail,
      this.teacherDateCreate,
      this.teacherPassword,
      this.teacherImage,
      this.teacherModelName,
      this.teacherSalary,
      this.teacherNumber,
      this.groupStudentId});

  MyGroupModle.fromJson(Map<String, dynamic> json) {
    teacherId = json['teacher_id'];
    coursId = json['cours_id'];
    lessonDateCreate = json['lesson_date_create'];
    lessonId = json['lesson_id'];
    lessonName = json['lesson_name'];
    coursName = json['cours_name'];
    coursSection = json['cours_section'];
    coursPrice = json['cours_price'];
    coursLevel = json['cours_level'];
    teacherFname = json['teacher_fname'];
    teacherLname = json['teacher_lname'];
    teacherPhone = json['teacher_phone'];
    teacherEmail = json['teacher_email'];
    teacherDateCreate = json['teacher_date_create'];
    teacherPassword = json['teacher_password'];
    teacherImage = json['teacher_image'];
    teacherModelName = json['teacher_model_name'];
    teacherSalary = json['teacher_salary'];
    teacherNumber = json['teacher_number'];
    groupStudentId = json['group_student_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['teacher_id'] = teacherId;
    data['cours_id'] = coursId;
    data['lesson_date_create'] = lessonDateCreate;
    data['lesson_id'] = lessonId;
    data['lesson_name'] = lessonName;
    data['cours_name'] = coursName;
    data['cours_section'] = coursSection;
    data['cours_price'] = coursPrice;
    data['cours_level'] = coursLevel;
    data['teacher_fname'] = teacherFname;
    data['teacher_lname'] = teacherLname;
    data['teacher_phone'] = teacherPhone;
    data['teacher_email'] = teacherEmail;
    data['teacher_date_create'] = teacherDateCreate;
    data['teacher_password'] = teacherPassword;
    data['teacher_image'] = teacherImage;
    data['teacher_model_name'] = teacherModelName;
    data['teacher_salary'] = teacherSalary;
    data['teacher_number'] = teacherNumber;
    data['group_student_id'] = groupStudentId;
    return data;
  }
}
