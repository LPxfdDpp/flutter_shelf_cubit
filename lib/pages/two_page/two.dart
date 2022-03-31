import 'package:flutter/material.dart';
import 'package:untitledflutter/themes/my_theme.dart';

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(

        builder:(ctx) => Center(
          child: GestureDetector(
              onTap: (){
                Scaffold.of(ctx).showBottomSheet((ctx) => GestureDetector(
                    onTap: (){
                      MyTheme.changeTheme();
                    },
                  child: Container(
                      height: 100,
                      color: Colors.deepOrangeAccent,
                      child: Text("拉地方lkjsadlf",style: MyTheme.currentTheme.textStyles.ts01,)),
                ));
              },
              child: Text("sdfg",style: MyTheme.currentTheme.textStyles.ts01,)),
        ),
      ),
    );
  }
}
