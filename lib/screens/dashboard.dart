import 'package:flutter/material.dart';
import 'package:trioxygen/screens/match_scout.dart' show MatchScout;
import 'package:trioxygen/screens/pit_scout.dart' show PitScout;
import 'package:trioxygen/screens/data.dart' show DataView;
import 'package:trioxygen/screens/settings.dart' show Settings;
import 'package:flutter/material.dart';
import 'package:trioxygen/screens/match_scout.dart';
import 'package:trioxygen/state.dart' show CounterProvider;
import 'package:provider/provider.dart';
import 'package:trioxygen/drift.dart';
class Dashboard extends StatelessWidget {
  final AppDatabase database;
  const Dashboard({super.key, required this.database});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(title: const Text('Dashboard'),
      leading: Builder(builder: (context){
        return IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.menu));
      }),
      ),
      body: Center(child: Text('Dashboard')),
      drawer: Drawer(child: ListView(
        padding: EdgeInsets.zero,
        children: [ListTile(
          title: const Text("Match Scout"),
          onTap: (){
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => MatchScout(database: database),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Pit Scout"),
          onTap: (){
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => PitScout(database: database),
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