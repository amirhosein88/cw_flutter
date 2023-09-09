import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: HomeView(),
    ),
  );
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WATER COUNTER',
          style: TextStyle(fontSize: 22, backgroundColor: Color(0xFF3E76C2)),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF3E76C2),
        //leading: Icon(Icons.list),
        actions: [
          IconButton(
            onPressed: () {
              print('pressed');
            },
            icon: const Icon(Icons.list),
          )
        ],
      ),
      body: SizedBox(
          //color: Colors.yellow,
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 50,
            ),
            Text('drink water now',
                style: TextStyle(
                  fontSize: 50,
                  color: Color(0xFF3E76C2),
                  fontFamily: 'anton',
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/water.png',
                  height: 275,
                  width: 275,
                ),
                Expanded(
                  flex: 1,
                  child: Column(children: [
                    Text(
                      counter.toString(),
                      //'0',
                      style: TextStyle(
                          color: Color(0xFF145588),
                          fontSize: 125,
                          fontFamily: 'anton'),
                    ),
                    Text(
                      'Record: 0',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'anton',
                      ),
                    )
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Row(
            //   children: [
            //     Expanded(
            //         child: TextButton(
            //       onPressed: () {
            //         print('saved pressed');
            //       },
            //       child: Text(
            //         'save',
            //         style: TextStyle(
            //             fontSize: 50,
            //             color: Color(0xFF145588),
            //             fontFamily: 'anton'),
            //       ),
            //     ))
            //   ],
            // ),
            const SizedBox(
              height: 150,
            ),
            Row(children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });

                      //print('saved pressed');
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xFF145588),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        'Add',
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'anton',
                          color: Colors.white,
                        ),
                      ),

                      // style: TextStyle(
                      //     fontSize: 50,
                      //     color: Color(0xFFE30739),
                      //     fontFamily: 'anton'
                      // ),
                    )),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      final date = DateTime.now();
                      // print(date.year);
                      // print(date.month);
                      // print(date.day);
                      // print(date.hour);
                      // print(date.second);

                      print('Record: $counter at ${date.year}-${date.month}-${date.day} ${date.hour}::${date.minute}::${date.second}- ' );

                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xFF145588),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'anton',
                          color: Colors.white,
                        ),
                      ),

                      // style: TextStyle(
                      //     fontSize: 50,
                      //     color: Color(0xFFE30739),
                      //     fontFamily: 'anton'
                      // ),
                    )),
              ),
            ])
          ])),
    );
  }
}
