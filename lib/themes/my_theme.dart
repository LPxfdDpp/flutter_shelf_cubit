import 'package:flutter/cupertino.dart';
import 'package:untitledflutter/themes/theme1/theme1.dart';
import 'package:untitledflutter/themes/theme2/theme2.dart';

part 'my_text_styles.dart';

abstract class MyTheme {
  static MyTheme _currentTheme = Theme1();
  static MyTheme get currentTheme => _currentTheme;
  static ValueNotifier myThemeNotifier = ValueNotifier(currentTheme);
  static changeTheme(){
    if(_currentTheme.runtimeType == Theme1){
      _currentTheme = Theme2();
    }else{
      _currentTheme = Theme1();
    }
    myThemeNotifier.value = _currentTheme;
  }

  MyTextStyles get textStyles;
}