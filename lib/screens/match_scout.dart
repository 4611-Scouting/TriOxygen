import 'package:flutter/material.dart';
import 'package:trioxygen/screens/data.dart' show DataView;
import 'package:trioxygen/screens/drawer.dart' show DrawerMe;
import 'package:trioxygen/screens/pit_scout.dart' show PitScout;
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

class MatchScout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Match Scout'),
    
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
          body: TabBarView(
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
      drawer: Drawer(child:DrawerMe()
        ),
      );
  }
}