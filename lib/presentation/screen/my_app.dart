import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hunty/common/utils/localizations.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/screenutil/screenutil.dart';
import 'package:hunty/presentation/route/routes.dart';
import 'package:hunty/presentation/screen/welcome/welcome_screen.dart';
import 'package:hunty/theme/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kColorWhite,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kColorYellow),
        appBarTheme: const AppBarTheme(color: kColorWhite),
        fontFamily: PrimaryFont.fontFamily,
        scaffoldBackgroundColor: kColorWhite,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: PrimaryFont.fontFamily),
      ),
      supportedLocales: Languages.languages.map((e) => Locale(e.code)).toList(),
      locale: const Locale('en'),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: RouteList.initial,
      onGenerateRoute: (RouteSettings settings) {
        final routes = Routes.getRoutes(settings);
        final WidgetBuilder? builder = routes[settings.name];
        return CupertinoPageRoute(settings: settings, builder: builder!);
      },
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
    );
  }
}
