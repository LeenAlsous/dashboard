import 'package:dashboard/dummy/dummy_data.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFFFFFFF),
        child: Column(
          children: [
            Image.asset(
              'assets/logo_transparent.png',
              height: MediaQuery.sizeOf(context).height * 0.1,
            ),
            /*TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search anything'
              ),
            ),*/
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            const Text('Menu'),
            Expanded(
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
          ],
        ),
      ),
    );
  }
}
