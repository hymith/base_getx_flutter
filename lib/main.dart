import 'package:base_getx_flutter/ui/views/home_logged_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import '../splash.dart';
import '../ui/routes/route_helper.dart';
import 'package:sizer/sizer.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Sizer(builder: (context, orientation, deviceType) {
      return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: GetMaterialApp(
            title: 'Base Flutter',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              fontFamily: 'Roboto'
            ),
            home: const SafeArea(child: HomeLoggedPage()),
            getPages: RouteHelper.routes,
          ));
    });
  }
}
