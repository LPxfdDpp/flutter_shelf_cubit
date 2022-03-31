import 'package:flutter/material.dart';
import 'package:untitledflutter/pages/one_page/one.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:untitledflutter/themes/my_theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('zh')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: ValueListenableBuilder(valueListenable: MyTheme.myThemeNotifier, builder: (_,__,___){

          print("Theme 改变了 "+MyTheme.currentTheme.textStyles.ts01.color.toString());

          return App();
        })
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: One()
    );
  }
}

