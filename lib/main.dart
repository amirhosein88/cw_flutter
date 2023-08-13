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
            children: const[
              SizedBox(
                height: 50,
              ),
            Text(
                'drink water now',
            style: TextStyle(
              fontSize: 50,
              color: Color(0xFF3E76C2),
            )
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  SizedBox(
                    height: 125,
                  ),
                  Text(
                      'widget1',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  ),
                  Text(
                      'widget2',
                    style: TextStyle(
                      fontSize: 25
                    ),

                  )
                ],
              )

        ],
      ),
    )
    );
  }
}
