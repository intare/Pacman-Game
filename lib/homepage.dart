import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int numberInRow = 11;
  int numberOfSquares = numberInRow * 17;

  List<int> barriers = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    22,
    33,
    44,
    55,
    66,
    77,
    78,
    79,
    80,
    81,
    70,
    59,
    61,
    72,
    83,
    84,
    85,
    86,
    87,
    99,
    100,
    101,
    102,
    103,
    114,
    125,
    127,
    116,
    105,
    106,
    107,
    108,
    110,
    121,
    123,
    134,
    145,
    156,
    132,
    143,
    158,
    147,
    148,
    149,
    160,
    129,
    140,
    151,
    162,
    154,
    165,
    176,
    177,
    178,
    179,
    180,
    181,
    182,
    183,
    184,
    185,
    186,
    175,
    164,
    153,
    142,
    121,
    120,
    109,
    87,
    76,
    65,
    43,
    32,
    21,
    24,
    35,
    46,
    57,
    26,
    37,
    38,
    39,
    28,
    30,
    41,
    52,
    63,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(
        children: [
          Expanded(
            flex: 150,
            child: Container(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: numberOfSquares,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: numberInRow),
                itemBuilder: (BuildContext context, int index) {
                  if (barriers.contains(index)) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                          color: Colors.blue,
                          child: Center(
                            child: Text(index.toString()),
                          )),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(index.toString()),
                          )),
                    );
                  }
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Score: ",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Text("P L A Y ",
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
