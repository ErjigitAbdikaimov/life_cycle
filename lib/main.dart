import 'package:flutter/material.dart';
import 'package:life_cycle/app/app.dart';

import 'service/user_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isRegistered = await service.isRegister();
  runApp(MyApp(route: isRegistered));
}
