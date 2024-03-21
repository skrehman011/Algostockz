class User {
  final int id;
  final String password;
  final String lastLogin;
  final String email;
  final String phone;
  final String changingEmail;
  final bool isMember;
  final int discount;
  final double paidTillToday;
  final String lastActivated;
  final String referralCode;
  final String lastVoted;
  final bool isVerified;
  final String authToken;
  final String dateJoined;
  final bool isActive;
  final bool isAdmin;
  final bool isSuperUser;
  final dynamic referredBy;

  User({
    required this.id,
    required this.password,
    required this.lastLogin,
    required this.email,
    required this.phone,
    required this.changingEmail,
    required this.isMember,
    required this.discount,
    required this.paidTillToday,
    required this.lastActivated,
    required this.referralCode,
    required this.lastVoted,
    required this.isVerified,
    required this.authToken,
    required this.dateJoined,
    required this.isActive,
    required this.isAdmin,
    required this.isSuperUser,
    required this.referredBy,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      password: json['password'] as String? ?? '', // handle null password
      lastLogin: json['last_login'] as String? ?? '', // handle null lastLogin
      email: json['email'] as String? ?? '', // handle null email
      phone: json['phone'] as String? ?? '', // handle null phone
      changingEmail: json['changing_email'] as String? ?? '', // handle null changingEmail
      isMember: json['is_member'] as bool? ?? false, // handle null isMember
      discount: json['discount'] as int? ?? 0, // handle null discount
      paidTillToday: json['paid_till_today'] as double? ?? 0.0, // handle null paidTillToday
      lastActivated: json['last_activated'] as String? ?? '', // handle null lastActivated
      referralCode: json['referral_code'] as String? ?? '', // handle null referralCode
      lastVoted: json['last_voted'] as String? ?? '', // handle null lastVoted
      isVerified: json['is_verified'] as bool? ?? false, // handle null isVerified
      authToken: json['auth_token'] as String? ?? '', // handle null authToken
      dateJoined: json['date_joined'] as String? ?? '', // handle null dateJoined
      isActive: json['is_active'] as bool? ?? false, // handle null isActive
      isAdmin: json['is_admin'] as bool? ?? false, // handle null isAdmin
      isSuperUser: json['is_superuser'] as bool? ?? false, // handle null isSuperUser
      referredBy: json['referred_by'], // nullable field, no need to handle null
    );
  }
}
