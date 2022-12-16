import 'package:flutter/material.dart';

class Pres extends StatefulWidget {
  const Pres({Key? key}) : super(key: key);

  @override
  State<Pres> createState() => _PresState();
}

class _PresState extends State<Pres> {
  String selected = "";
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "ADRIAN KEN IDOS ROSARIO",
    },
    {
      "id": 1,
      "value": false,
      "title": "JAHNELLE MAE GAMB MENOR",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("President"),
        backgroundColor: Colors.purple[800],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64.0),
        child: Column(
          children: [
            Column(
              children: List.generate(
                checkListItems.length,
                (index) => CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  title: Text(
                    checkListItems[index]["title"],
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  value: checkListItems[index]["value"],
                  onChanged: (value) {
                    setState(() {
                      for (var element in checkListItems) {
                        element["value"] = false;
                      }
                      checkListItems[index]["value"] = value;
                      selected =
                          "${checkListItems[index]["id"]}, ${checkListItems[index]["title"]}, ${checkListItems[index]["value"]}";
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 100),
            MaterialButton(
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Text('Enter'),
                color: Colors.purple,
                textColor: Colors.white,
                onPressed: () {
                  {
                    (Navigator.pushNamed(context, '/vpres'));
                    return;
                  }
                }),
          ],
        ),
      ),
    );
  }
}
