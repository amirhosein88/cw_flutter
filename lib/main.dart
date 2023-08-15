import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: HomeView(),
    ),
  );
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                          '0'
                    ,style: TextStyle(
                        color: Color(0xFF145588),
                        fontSize: 125,
                        fontFamily: 'anton'
                      ),
                    ) , Text('Record: 0',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'anton',
                      ),
                      )]),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Expanded(child: TextButton(
                  onPressed:() {} ,
                  child: Text(
                      'add',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color(0xFF145588),
                        fontFamily: 'anton'
                      ),

                  ),
                  ))
              ],)
              
            ],
          ),
        )
    );
  }
}
