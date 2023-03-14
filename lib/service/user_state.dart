import 'package:life_cycle/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserStateServices {
  static const String _nameKey = 'name-key';
  static const String _lastNameKey = 'lastName-key';
  static const String _passwordKey = 'password-key';
  static const String _registerKey = 'register-key';

  Future<bool> isRegister() async {
    final pref = await SharedPreferences.getInstance();

    return pref.getBool(_registerKey) ?? false;
  }

  Future<void> signUp({
    required String name,
    required String lastName,
    required String password,
  }) async {
    // ignore: unused_local_variable
    final pref = SharedPreferences.getInstance();

    // await pref.setString(_nameKey, name);
    // await pref.setString(_lastNameKey, lastName);
    // await pref.setString(_passwordKey, password);
    // await pref.setBool(_registerKey, true);
  }

  Future<bool> signIn({
    required String name,
    required String password,
  }) async {
    final pref = await SharedPreferences.getInstance();

    final cachedName = pref.getString(_nameKey);
    final cachedpassword = pref.getString(_passwordKey);
    if (name == cachedName && password == cachedpassword) {
      await pref.setBool(_registerKey, true);
      return true;
    } else {
      return false;
    }
  }

  Future<UserModel?> getUser() async {
    final pref = await SharedPreferences.getInstance();

    final cachedName = pref.getString(_nameKey);
    final cachedLastName = pref.getString(_lastNameKey);
    final cachedPassword = pref.getString(_passwordKey);

    if (cachedName != null &&
        cachedLastName != null &&
        cachedPassword != null) {
      return UserModel(
        id: '1',
        name: cachedName,
        lastName: cachedLastName,
        password: cachedPassword,
      );
    } else {
      return null;
    }
  }

  Future<void> signOut() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(_registerKey);
  }

  Future<void> delete() async {
    final pref = await SharedPreferences.getInstance();

    await pref.remove(_nameKey);
    await pref.remove(_lastNameKey);
    await pref.remove(_passwordKey);
    await pref.remove(_registerKey);
  }
}

final service = UserStateServices();
