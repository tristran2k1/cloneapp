class GuestContact {
  final String name;
  final String phone;
  final String email;

  GuestContact({this.name = "", this.phone = "", this.email = ""});

  factory GuestContact.empty() => GuestContact();

  Map<String, String?> toJson() {
    return {"name": name, "phone": phone, "email": email};
  }

  factory GuestContact.fromJson(Map<String, dynamic> json) {
    return GuestContact(
      name: json['name'] ?? "",
      phone: json['phone'] ?? "",
      email: json['email'] ?? "",
    );
  }
}
