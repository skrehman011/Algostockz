class UserModel{
  String id,email,firstName,lastName,imageUrl,notificationToken,phone;



//<editor-fold desc="Data Methods">
  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
    required this.notificationToken,
    required this.phone,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          email == other.email &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          imageUrl == other.imageUrl &&
          notificationToken == other.notificationToken &&
          phone == other.phone);

  @override
  int get hashCode =>
      id.hashCode ^
      email.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      imageUrl.hashCode ^
      notificationToken.hashCode ^
      phone.hashCode;

  @override
  String toString() {
    return 'UserModel{' +
        ' id: $id,' +
        ' email: $email,' +
        ' firstName: $firstName,' +
        ' lastName: $lastName,' +
        ' imageUrl: $imageUrl,' +
        ' notificationToken: $notificationToken,' +
        ' phone: $phone,' +
        '}';
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? imageUrl,
    String? notificationToken,
    String? phone,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      imageUrl: imageUrl ?? this.imageUrl,
      notificationToken: notificationToken ?? this.notificationToken,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'email': this.email,
      'firstName': this.firstName,
      'lastName': this.lastName,
      'imageUrl': this.imageUrl,
      'notificationToken': this.notificationToken,
      'phone': this.phone,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      email: map['email'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      imageUrl: map['imageUrl'] as String,
      notificationToken: map['notificationToken'] as String,
      phone: map['phone'] as String,
    );
  }

//</editor-fold>
}