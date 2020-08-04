class SignUpUser{

  String _email;
  String _gender;
  String _how_much_train;
  String _password;
  String _cnf_password;

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get gender => _gender;

  String get cnf_password => _cnf_password;

  set cnf_password(String value) {
    _cnf_password = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get how_much_train => _how_much_train;

  set how_much_train(String value) {
    _how_much_train = value;
  }

  set gender(String value) {
    _gender = value;
  }
}