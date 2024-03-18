import 'dart:convert';

class ModelTestimonial {
  int id;
  String name;
  String message;

  static List<ModelTestimonial> value = [];

//<editor-fold desc="Data Methods">
  ModelTestimonial({
    required this.id,
    required this.name,
    required this.message,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ModelTestimonial &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          message == other.message);

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ message.hashCode;

  @override
  String toString() {
    return 'ModelTestimonial{' +
        ' id: $id,' +
        ' name: $name,' +
        ' message: $message,' +
        '}';
  }

  ModelTestimonial copyWith({
    int? id,
    String? name,
    String? message,
  }) {
    return ModelTestimonial(
      id: id ?? this.id,
      name: name ?? this.name,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'message': this.message,
    };
  }

  factory ModelTestimonial.fromMap(Map<String, dynamic> map) {
    return ModelTestimonial(
      id: map['id'] as int,
      name: map['name'] as String,
      message: map['message'] as String,
    );
  }

  static fromJson( ) {}

//</editor-fold>
}

