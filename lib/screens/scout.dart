import 'package:flutter/material.dart';
import 'package:trioxygen/screens/data.dart' show DataView;
import 'package:trioxygen/screens/dashboard.dart' show Dashboard;
import 'package:trioxygen/screens/settings.dart' show Settings;
import 'package:flutter/material.dart';
import 'package:trioxygen/screens/match_scout.dart';
import 'package:trioxygen/state.dart' show CounterProvider;
import 'package:provider/provider.dart';
import 'package:trioxygen/drift.dart';
import 'package:trioxygen/screens/match_scout_pages/team_entry.dart' show TeamEntry;
import 'package:trioxygen/screens/match_scout_pages/auto_entry.dart' show AutonPage;
import 'package:trioxygen/screens/match_scout_pages/endgame_entry.dart' show EndgameEntry;
import 'package:trioxygen/screens/match_scout_pages/teleop_entry.dart' show TeleopPage;
import 'package:trioxygen/screens/match_scout_pages/submit.dart' show Submit;

class Scout extends StatelessWidget {
  final AppDatabase database;
  const Scout({super.key, required this.database});

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
                builder: (context) => Scout(database: database),
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
                builder: (context) => Dashboard(database: database),
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
                builder: (context) => DataView(database: database),
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
                builder: (context) => Settings(database: database),
              ),
            );

          },
        )],
        )
        ),
      );
  }
}