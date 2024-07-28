import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'DevOps';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Manjunath'),
        ),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  color: Colors.red,
                  child: SizedBox(
                    // height: double.infinity,
                    //  width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 48, 36, 36),
                            foregroundColor: Colors.red,
                          ),
                          onPressed: () {
                            setState(() {
                              buttonName = 'Deployed';
                            });
                          },
                          child: Text(buttonName),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              buttonName = 'Deployed';
                            });
                          },
                          child: Text(buttonName),
                        ),
                      ],
                    ),
                  ),
                )
              // Second Bar
              : Image.asset('images/Prabhas.png'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.unsubscribe_rounded),
            ),
          ],
          currentIndex: currentIndex = currentIndex,
          onTap: (int index) => setState(() {
            currentIndex = index;
          }),
        ),
      ),
    );
  }
}
