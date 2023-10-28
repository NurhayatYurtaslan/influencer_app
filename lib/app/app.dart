import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:influencer_app/app/routes/app_router.dart';
import 'package:influencer_app/app/theme/light/light_theme_data.dart';
import 'l10n/app_localizations.dart';
// import 'routes/app_router.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      // statusBar kaldırmak için
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    final stateLang = context.findAncestorStateOfType<_AppState>();

    stateLang?.changeLanguage(newLocale);
  }

  static void setTheme(BuildContext context, ThemeData newThemeData) {
    final stateTheme = context.findAncestorStateOfType<_AppState>();

    stateTheme?.changeTheme(newThemeData);
  }

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Locale _locale = const Locale('en', 'En');
  ThemeData _themeData = AppThemeLight.getTheme();

  changeTheme(ThemeData themeData) {
    setState(() {
      try {
        _themeData = themeData;
      } catch (e) {
        if (kDebugMode) {
          debugPrint(e.toString());
        }
        rethrow;
      }
    });
  }

  changeLanguage(Locale locale) {
    setState(() {
      try {
        _locale = locale;
      } catch (e) {
        _locale = const Locale('en', 'US');
        if (kDebugMode) {
          debugPrint(e.toString());
        }
        rethrow;
      }
    });
  }

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return
        // child: ScreenUtilInit(
        MaterialApp.router(
      
      supportedLocales: L10n.supportedLocales,
      localizationsDelegates: L10n.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      theme: _themeData,
      locale: _locale,
      routerConfig: _appRouter.config()
    );
    // ),
  }
}
