import 'package:flutter/material.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  bool upChance = false;
  bool lowChance = true;
  int current = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (current == 0) {
                        lowChance = upChance;
                        upChance = !upChance;
                      }
                      current = 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: upChance == true
                            ? const Color(0xffF8CB2E)
                            : const Color(0xff1A374D),
                        border: Border.all(),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.3),
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  margin: const EdgeInsets.fromLTRB(5, 5 / 2, 5, 5 / 2),
                  padding: const EdgeInsets.fromLTRB(5 / 2, 0, 5 / 2, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const <Widget>[
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.pause,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.autorenew,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (current == 1) {
                        upChance = lowChance;
                        lowChance = !lowChance;
                      }
                      current = 0;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: lowChance == false
                          ? const Color(0xff1A374D)
                          : const Color(0xffF8CB2E),
                      border: Border.all(),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
