
class Patient{
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? password;
  String? report;

  Patient({this.id, this.firstName, this.lastName, this.email, this.phone, this.password, this.report});

  factory Patient.fromJson(Map<String, dynamic> json){
    return Patient(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      phone: json['phone'],
      password: json['password'],
      report: json['report'],
    );
  }

}