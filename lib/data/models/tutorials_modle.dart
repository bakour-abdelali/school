class TutorialsModle {
  String? tutorialsId;
  String? tutorialsCourId;
  String? tutorialsTeacherId;
  String? tutorialsTitle;
  String? tutorialsSubtitle;
  String? tutorialsFile;
  String? tutorialsDateCreate;

  TutorialsModle(
      {this.tutorialsId,
      this.tutorialsCourId,
      this.tutorialsTeacherId,
      this.tutorialsTitle,
      this.tutorialsSubtitle,
      this.tutorialsFile,
      this.tutorialsDateCreate});

  TutorialsModle.fromJson(Map<String, dynamic> json) {
    tutorialsId = json['tutorials_id'];
    tutorialsCourId = json['tutorials_cour_id'];
    tutorialsTeacherId = json['tutorials_teacher_id'];
    tutorialsTitle = json['tutorials_title'];
    tutorialsSubtitle = json['tutorials_subtitle'];
    tutorialsFile = json['tutorials_file'];
    tutorialsDateCreate = json['tutorials_date_create'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tutorials_id'] = this.tutorialsId;
    data['tutorials_cour_id'] = this.tutorialsCourId;
    data['tutorials_teacher_id'] = this.tutorialsTeacherId;
    data['tutorials_title'] = this.tutorialsTitle;
    data['tutorials_subtitle'] = this.tutorialsSubtitle;
    data['tutorials_file'] = this.tutorialsFile;
    data['tutorials_date_create'] = this.tutorialsDateCreate;
    return data;
  }
}
