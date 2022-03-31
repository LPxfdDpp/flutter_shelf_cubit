import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:untitledflutter/themes/my_theme.dart';

part 'theme1_text_styles.dart';

class Theme1 extends MyTheme{
  @override
  MyTextStyles get textStyles => Theme1TextStyles();
}