import 'package:diary/0_welcoming/a_splash%20screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:diary/BottomNavigationBar/BottomNavigationBar.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main()  {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp( MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Responsive Sizer Example',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: splash(),debugShowCheckedModeBanner: false,
        );
      },
      maxTabletWidth: 900, // Optional
    );
  }
}
