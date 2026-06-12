import 'package:flutter/material.dart';
class TeamEntry extends StatefulWidget {
  const TeamEntry({super.key});

  @override
  State<StatefulWidget> createState() {
    return TeamEntryState();
  }
}
class TeamEntryState extends State<TeamEntry> {
    void onTapDown(BuildContext context, TapDownDetails details) {
    final Offset localOffset = details.localPosition;
    setState(() {
      _children = (Positioned(left: localOffset.dx , top: localOffset.dy, child: Container(width: 10, height: 10, decoration: const BoxDecoration(
            color: Colors.red, shape: BoxShape.circle),),));
    });
  }

  static var controller = TextEditingController();
  Widget? _children;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [Center(child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('First Page')
        ),
        SizedBox(height: 200, width: 400, child:
        TextFormField(
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Enter your name',
              label: Text('Name'),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(width: 1,color: Colors.blue)
            )
          ),
        ),
        ),
      SizedBox(width: 100, height: 100, child: GestureDetector(
        onTapDown: (details) =>  onTapDown(context, details),
        child: Stack(children: [Image.asset("assets/images/FieldImage.png", fit: BoxFit.cover,),?_children])
      ),),


      ],
    ))]);
  }
}

