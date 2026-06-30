import 'package:flutter/material.dart';
import 'package:trioxygen/screens/data.dart' show DataView;
import 'package:trioxygen/screens/dashboard.dart' show Dashboard;
import 'package:trioxygen/screens/settings.dart' show Settings;

import 'package:trioxygen/screens/scout_pages/team_entry.dart' show TeamEntry;
import 'package:trioxygen/screens/scout_pages/auto_entry.dart' show AutonPage;
import 'package:trioxygen/screens/scout_pages/endgame_entry.dart' show EndgameEntry;
import 'package:trioxygen/screens/scout_pages/teleop_entry.dart' show TeleopPage;
import 'package:trioxygen/screens/scout_pages/submit.dart' show Submit;

class Scout extends StatelessWidget {
  const Scout({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scout'),
    
      leading: Builder(builder: (context){
        return IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.menu));
      }),
      ),
      body: MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "Pre-Match",),
                Tab(text: "Auto",),
                Tab(text: "TeleOp",),
                Tab(text: "Endgame",),
                Tab(text: "Submit",)
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              TeamEntry(),
              AutonPage(),
              TeleopPage(),
              EndgameEntry(),
              Submit()
            ],
          ),
        ),
      ),
    ),
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