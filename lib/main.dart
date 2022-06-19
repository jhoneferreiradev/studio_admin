import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'controllers/MenuController.dart';
import 'screens/main/main_screen.dart';

/* Este main é para definição de MinimumSize*/
/*
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await WindowManager.instance.ensureInitialized();

  WindowManager.instance.waitUntilReadyToShow().then((_) async {
    await windowManager.setMinimumSize(const Size(366, 439));
    await windowManager.center();
    WindowManager.instance.show();
    runApp(MyApp());
  });
}*/
/* Este main é sem definição de MinimumSize*/
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Studio Admin',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: MainScreen(),
      ),
    );
  }
}
