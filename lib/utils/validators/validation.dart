class AppValidator {
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return "Email is Required";
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(email)) {
      return "Invalid email address";
    }

    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return "Password is Required";
    }

    if (password.length < 6) {
      return "Password must be at least 6 characters";
    }

    // check for numbers
    if (password.contains(RegExp(r"[A-Z]"))) {
      return "Password must contain at least one uppercase letter ";
    }
    // check for Letters
    if (password.contains(RegExp(r"[0-9]"))) {
      return "Password must contain at least one number digit ";
    }

    return null;
  }

  static String? validatePhone(String? phone) {
    if (phone == null || phone.isEmpty) {
      return "Phone is Required";
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(phone)) {
      return "Invalid Phone number";
    }

    return null;
  }
}
