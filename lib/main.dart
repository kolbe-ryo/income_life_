// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';

// Project imports:
import 'di/di.dart';
import 'generated/l10n.dart';
import 'ui/common/app_colors.dart';
import 'ui/top_page/top_page.dart';

void main() {
  setUpDI();
  return runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Income life',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: AppColors.dark,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: const TopPage(),
      navigatorKey: GetIt.I<GlobalKey<NavigatorState>>(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
