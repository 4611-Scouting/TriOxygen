import 'package:flutter/material.dart';
import 'package:trioxygen/screens/scout.dart' show Scout;
import 'package:trioxygen/screens/dashboard.dart' show Dashboard;
import 'package:trioxygen/screens/data.dart' show DataView;

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings'),
      leading: Builder(builder: (context){
        return IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.menu));
      }),
      ),
      body: Center(child: Text('Settings')),
      drawer: Drawer(child: ListView(
        padding: EdgeInsets.zero,
        children: [ListTile(
          title: const Text("Scout"),
          onTap: (){
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const Scout(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Dashboard"),
          onTap: (){
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const Dashboard(),
              ),
            );

          },
        ),
        ListTile(
          title: const Text("DataView"),
          onTap: (){
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const DataView(),
              ),
            );

          },
        ),
        ListTile(
          title: const Text("Settings"),
          onTap: (){
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const Settings(),
              ),
            );

          },
        )],
        )
        ),
      );
  }
}