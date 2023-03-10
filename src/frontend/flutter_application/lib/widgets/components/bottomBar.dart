import 'package:flutter/material.dart';
import './configuration.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key, this.hasSettings = false});
  final bool hasSettings;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
//   bool isOpen = true;

  void showModal() {
    // setState(() {
    //   isOpen = !isOpen;
    // });
    showModalBottomSheet(context: context, builder: (_) => Configuration());
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      Text(
        "CHAT GPT",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
      ),
    ];

    if (widget.hasSettings) {
      items.add(Positioned(
          right: 16,
          child: IconButton(
              onPressed: () {
                showModal();
              },
              icon: Icon(Icons.settings))));
    }

    return Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Stack(alignment: Alignment.center, children: items)
        //    Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Transform.translate(
        //           offset: Offset(0, -30),
        //           child: TextButton(
        //             onPressed: () {
        //               toogleBottomBar();
        //             },
        //             child: Image(
        //               image: AssetImage("assets/images/round_logo.png"),
        //               fit: BoxFit.cover,
        //               width: 60,
        //               height: 60,
        //             ),
        //           ),
        //         ),
        //       ]),
        );
  }
}
