import 'package:dashboard/dummy/dummy_data.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Image.asset(
            'assets/logo_transparent.png',
            height: MediaQuery.sizeOf(context).height * 0.1,
          ),
          const Text('Menu'),
          Expanded(
            child: Container(
              color: const Color(0xFFFFFFFF),
              child: ListView(
                  shrinkWrap: true,
                  children: menu
                      .map(
                        (tile) => ListTile(
                      title: Text(tile.title),
                      leading: tile.icon,
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => tile.view,));
                      },
                    ),
                  ).toList()),
            ),
          ),
        ],
      ),
    );
  }
}
