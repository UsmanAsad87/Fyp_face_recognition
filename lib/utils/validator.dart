var regEx = RegExp(
    r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
RegExp numReg = RegExp(r".*[0-9].*");
RegExp phoneNumReg =
    RegExp(r"^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$");
RegExp letterReg = RegExp(r".*[A-Za-z].*");

String? emailValidator(String? value) {
  if (!regEx.hasMatch(value!)) {
    return 'Enter a valid email address';
  }
  return null;
}

String? uNameValidator(String? value) {
  if (value!.isEmpty) {
    return 'Enter your user name';
  }
  if (value.length > 35) {
    return 'Exceeded 35 characters';
  }
  return null;
}

String? ipValidator(String? value) {
  if ('.'.allMatches(value!).length!=3) {
    return 'Wrong format';
  }
  if (value.length < 10 ) {
    return 'can not have less than 7 characters';
  }
  if (value.length > 15 ) {
    return 'can not have more than 12 characters';
  }
  return null;
}
String? portValidator(String? value) {
  if (value!.length > 5 ) {
    return 'can not have more than 5 characters';
  }
  return null;
}

String? phoneValidator(String? value) {
  // if (!phoneNumReg.hasMatch(value!)) {
  //   return 'Enter a valid phone number';
  // } else
  if (value!.length > 12) {
    return 'Enter a valid phone number';
  }
  return null;
}
