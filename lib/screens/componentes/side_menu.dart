import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
                title: "Dashboard",
                svgSrc: "assets/icons/menu_dashbord.svg",
                press: () {}),
            DrawerListTile(title: "Produtos", svgSrc: "", press: () {}),
            DrawerListTile(
                title: "Task",
                svgSrc: "assets/icons/menu_task.svg",
                press: () {}),
            DrawerListTile(
                title: "Documents",
                svgSrc: "assets/icons/menu_doc.svg",
                press: () {}),
            DrawerListTile(
                title: "Store",
                svgSrc: "assets/icons/menu_store.svg",
                press: () {}),
            DrawerListTile(
                title: "Notification",
                svgSrc: "assets/icons/menu_notification.svg",
                press: () {}),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
    this.iconLink = 'https://img.icons8.com/wired/344/grocery-shelf.png',
    this.exibirTitle = true,
  }) : super(key: key);

  final String title, svgSrc, iconLink;
  final VoidCallback press;
  final bool exibirTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: (svgSrc != '')
          ? SvgPicture.asset(
              svgSrc,
              color: Colors.white54,
              height: 16,
            )
          : Image.network(iconLink),
      title: Text((exibirTitle) ? title : "",
          style: TextStyle(color: Colors.white54)),
    );
  }
}
