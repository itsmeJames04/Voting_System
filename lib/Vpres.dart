import 'package:flutter/material.dart';

class VicePres extends StatefulWidget {
  const VicePres({Key? key}) : super(key: key);

  @override
  State<VicePres> createState() => _VicePresState();
}

class _VicePresState extends State<VicePres> {
  String selected = "";
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "KIM KYLE CORN MARQUEZ",
    },
    {
      "id": 1,
      "value": false,
      "title": "TIMOTHY JARED CAST TANDOC",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vice-President"),
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
                    (Navigator.pushNamed(context, '/sec'));
                    return;
                  }
                }),
          ],
        ),
      ),
    );
  }
}

class Sec extends StatefulWidget {
  const Sec({Key? key}) : super(key: key);

  @override
  State<Sec> createState() => _SecState();
}

class _SecState extends State<Sec> {
  String selected = "";
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "MARJORIE ROSA MAYNIGO",
    },
    {
      "id": 1,
      "value": false,
      "title": "KIM ALEXIS NAVA DE GUZMAN",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Secretary"),
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
                    (Navigator.pushNamed(context, '/subsec'));
                    return;
                  }
                }),
          ],
        ),
      ),
    );
  }
}

class SubSec extends StatefulWidget {
  const SubSec({Key? key}) : super(key: key);

  @override
  State<SubSec> createState() => _SubSecState();
}

class _SubSecState extends State<SubSec> {
  String selected = "";
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "JHYNIECEL PERA MAYNIGO",
    },
    {
      "id": 1,
      "value": false,
      "title": "NICHOLLE CARP ARENAS",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sub-Secretary"),
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
                    (Navigator.pushNamed(context, '/tre'));
                    return;
                  }
                }),
          ],
        ),
      ),
    );
  }
}

class Tre extends StatefulWidget {
  const Tre({Key? key}) : super(key: key);

  @override
  State<Tre> createState() => _TreState();
}

class _TreState extends State<Tre> {
  String selected = "";
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "HANNAH PATRICIA MENO CASTRO",
    },
    {
      "id": 1,
      "value": false,
      "title": "MARISOL CANT DE LEON",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Treasurer"),
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
                    (Navigator.pushNamed(context, '/subtre'));
                    return;
                  }
                }),
          ],
        ),
      ),
    );
  }
}

class SubTre extends StatefulWidget {
  const SubTre({Key? key}) : super(key: key);

  @override
  State<SubTre> createState() => _SubTreState();
}

class _SubTreState extends State<SubTre> {
  String selected = "";
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "DIANNE NICOLE DACANAY TUMANAN",
    },
    {
      "id": 1,
      "value": false,
      "title": "STEFANNY DE VERA DAMACIN ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sub-Treasurer"),
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
                    (Navigator.pushNamed(context, '/audi'));
                    return;
                  }
                }),
          ],
        ),
      ),
    );
  }
}

class Audi extends StatefulWidget {
  const Audi({Key? key}) : super(key: key);

  @override
  State<Audi> createState() => _AudiState();
}

class _AudiState extends State<Audi> {
  List multipleSelected = [];
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "CHRISTINE ANGELINE QUIJ AGUILAR",
    },
    {
      "id": 1,
      "value": false,
      "title": "CZAR JULIUS LUMA LUNA",
    },
    {
      "id": 2,
      "value": false,
      "title": "JEMARIE TULA CRUZ",
    },
    {
      "id": 3,
      "value": false,
      "title": "JAY R HILDA JOVES",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auditor"),
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
                      checkListItems[index]["value"] = value;
                      if (multipleSelected.contains(checkListItems[index])) {
                        multipleSelected.remove(checkListItems[index]);
                      } else {
                        multipleSelected.add(checkListItems[index]);
                      }
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 64.0),
            Text(
              multipleSelected.isEmpty ? "" : multipleSelected.toString(),
              style: const TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            MaterialButton(
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Text('Enter'),
                color: Colors.purple,
                textColor: Colors.white,
                onPressed: () {
                  {
                    (Navigator.pushNamed(context, '/end'));
                    return;
                  }
                }),
          ],
        ),
      ),
    );
  }
}

class End extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('End'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/thanks.png"), fit: BoxFit.fill)),
      ),
    );
  }
}
