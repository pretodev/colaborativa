import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../modules/user/viewmodels/viewmodels.dart';
import 'theme/theme.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
    userStatus.selectState.observe(
      (_) => userStatus.state.whenOrNull(
        unauthenticated: () => Modular.to.pushNamedAndRemoveUntil(
          '/send_phone',
          ModalRoute.withName('/'),
        ),
        waitingCode: (preferences) => Modular.to.pushNamedAndRemoveUntil(
          '/confirm_code',
          ModalRoute.withName('/'),
          arguments: preferences,
        ),
        authenticated: () => print('authenticated'),
      ),
    );
    userStatus.checkStatus();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ColaborAtiva',
      theme: AppTheme.instance,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}