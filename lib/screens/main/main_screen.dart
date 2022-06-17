import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/MenuController.dart';
import '../../responsive.dart';
import '../componentes/side_menu.dart';
import '../dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //if (Responsive.isDesktop(context))
          //  Expanded(
          //    //representa 1/6 partes
          //    child: SideMenu(),
          //  ),
          Expanded(
            // Representa 5/6 partes
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      ),
    );
  }
}
