// class User {
//   final String name;
//   final String contact;
//   final String description;
//   // final String profilePicture;

//   User({required this.name, required this.contact, required this.description});
// }
class User {
  User({
    required this.name,
    required this.contact,
    required this.description,

  });
  // String id;

  User.fromJson(Map<String, Object?> json)
      : this(
          name: json['name']! as String,
          contact: json['contact']! as String,
          description: json['description']! as String,
          // id: json['id']! as String,
        );

  final String name;
  final String contact;
  final String description;

  Map<String, Object?> toJson() {
    return {
      // 'id': id,
      'name': name,
      'contact': contact,
      'description': description,
    };
  }
}
