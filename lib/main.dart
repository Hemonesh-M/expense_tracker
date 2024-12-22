import 'package:expense_tracker/theme/custom_themes.dart';
import 'package:expense_tracker/widget/expenses.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';


void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp
  // ]).then((fn){
  runApp(
    MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: CustomThemes().dark,
      theme: CustomThemes().light,
      // darkTheme:const MaterialTheme1(TextTheme()).dark() ,
      // theme: const MaterialTheme1(TextTheme()).light(),
      home: const Expenses(),
    ),
  );
  // });
}
