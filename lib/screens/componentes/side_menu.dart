import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studio_admin/constants.dart';

import '../../responsive.dart';

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(dirAssetsImages + "logo.png"),
                  ProfileCard()
                ],
              ),
            ),
            DrawerListTile(
                title: "Dashboard",
                svgSrc: dirAssetsIcons + "menu_dashbord.svg",
                press: () {}),
            DrawerListTile(
                title: "Vendas",
                svgSrc: dirAssetsIcons + "menu_venda.svg",
                press: () {}),
            DrawerListTile(
                title: "Compras",
                svgSrc: dirAssetsIcons + "menu_compra.svg",
                press: () {}),
            DrawerListTile(
                title: "Financeiro",
                svgSrc: dirAssetsIcons + "menu_financeiro.svg",
                press: () {}),
            DrawerListTile(
                title: "Fábrica",
                svgSrc: dirAssetsIcons + "menu_fabrica.svg",
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
    this.exibirTitle = true,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final bool exibirTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text((exibirTitle) ? title : "",
          style: TextStyle(color: Colors.white54)),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
        color: secondaryColor,
        //borderRadius: BorderRadiusCircular10(),
        /*border: Border.all(color: Colors.white10)*/
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/profile_pic.png", height: 38),
          //if (!Responsive.isMobile(context))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text("Angelia Joli"),
          ),
          //Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
