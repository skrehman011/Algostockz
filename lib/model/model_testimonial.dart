class ModelTestimonial {
  final int id;
  final String name;
  final String email;
  final String message;
  final bool approved;
  final DateTime date;

  ModelTestimonial({
    required this.id,
    required this.name,
    required this.email,
    required this.message,
    required this.approved,
    required this.date,
  });

  factory ModelTestimonial.fromJson(Map<String, dynamic> json) {
    return ModelTestimonial(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      message: json['message'] ?? '',
      approved: json['approved'] ?? false,
      date: json['date'] != null ? DateTime.parse(json['date']) : DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'message': message,
      'approved': approved,
      'date': date.toIso8601String(),
    };
  }
}
