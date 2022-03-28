class Employs {
  int? id;
  String? firstName;
  String? lastName;
  String? joinDate;
  String? dateOfBirth;
  int? designationId;
  String? gender;
  int? mobile;
  int? landline;
  String? email;
  String? presentAddress;
  String? permanentAddress;
  String? profilePicture;
  String? resume;
  String? createdAt;
  String? updatedAt;
  String? status;

  Employs({
    this.id,
    this.firstName,
    this.lastName,
    this.joinDate,
    this.dateOfBirth,
    this.designationId,
    this.gender,
    this.mobile,
    this.landline,
    this.email,
    this.presentAddress,
    this.permanentAddress,
    this.profilePicture,
    this.resume,
    this.createdAt,
    this.updatedAt,
    this.status,
  });

  factory Employs.fromJson(Map<String, dynamic> json) => Employs(
        id: json['id'] as int?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        joinDate: json['join_date'] as String?,
        dateOfBirth: json['date_of_birth'] as String?,
        designationId: json['designation_id'] as int?,
        gender: json['gender'] as String?,
        mobile: json['mobile'] as int?,
        landline: json['landline'] as int?,
        email: json['email'] as String?,
        presentAddress: json['present_address'] as String?,
        permanentAddress: json['permanent_address'] as String?,
        profilePicture: json['profile_picture'] as String?,
        resume: json['resume'] as String?,
        createdAt: json['created_at'] as String?,
        updatedAt: json['updated_at'] as String?,
        status: json['status'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'join_date': joinDate,
        'date_of_birth': dateOfBirth,
        'designation_id': designationId,
        'gender': gender,
        'mobile': mobile,
        'landline': landline,
        'email': email,
        'present_address': presentAddress,
        'permanent_address': permanentAddress,
        'profile_picture': profilePicture,
        'resume': resume,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'status': status,
      };
}
