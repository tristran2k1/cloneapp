extension ExtString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  // bool get isValidPassword {
  //   final passwordRegExp = RegExp(
  //       r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
  //   return passwordRegExp.hasMatch(this);
  // }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }

  bool get isValidExpiryDate {
    RegExp regex = RegExp(r'^\d{2}/\d{2}$'); // validate dd/mm

    if (!regex.hasMatch(this)) {
      return false;
    }

    // ignore: unnecessary_this
    List<String> parts = this.split('/');
    int? month = int.tryParse(parts[0]);
    int? year = int.tryParse(parts[1]);

    if (month == null || year == null) {
      return false;
    }

    if (month < 1 || month > 12 || year < 0 || year > 99) {
      return false;
    }

    return true;
  }
}

extension ExtStringNull on String? {
  bool get isNotEmpty {
    return this != null && this!.isNotEmpty;
  }
}
