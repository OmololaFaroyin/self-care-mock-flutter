import 'package:flutter/material.dart';
import 'package:self_care_mock/self_care/self_care.dart';

import 'core/core.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SelfCareScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}
