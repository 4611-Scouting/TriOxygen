import 'package:flutter/material.dart';
import 'package:trioxygen/screens/match_scout.dart' show MatchScout;
import 'package:trioxygen/screens/pit_scout.dart' show PitScout;
import 'package:trioxygen/screens/dashboard.dart' show Dashboard;
import 'package:trioxygen/screens/settings.dart' show Settings;
import 'package:trioxygen/screens/data.dart' show DataView;
import 'package:flutter/material.dart';
import 'package:trioxygen/screens/match_scout.dart';
import 'package:trioxygen/state.dart' show CounterProvider;
import 'package:provider/provider.dart';
import 'package:trioxygen/drift.dart';
class DrawerMe extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
return ListView(
        padding: EdgeInsets.zero,
        children: [ListTile(
          title: const Text("Match Scout"),
          onTap: (){
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => MatchScout(),
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
                builder: (context) => PitScout(),
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
                builder: (context) => Dashboard(),
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
                builder: (context) => DataView(),
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
                builder: (context) => Settings(),
              ),
            );

          },
        )],
        );}}