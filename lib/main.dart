import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Points counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter1 = 0;
  int _counter2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff185291),
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
          elevation: 10.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 35.0),
                          child: AnimatedFlipCounter(
                            duration: const Duration(milliseconds: 500),
                            value: _counter1,
                            textStyle: const TextStyle(
                              fontSize: 120.0,
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              _counter1++;
                            });
                          },
                          color: const Color(0xFFF35D9B),
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 3.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              _counter1 += 2;
                            });
                          },
                          color: const Color(0xFFF35D9B),
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 3.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              _counter1 += 3;
                            });
                          },
                          color: const Color(0xFFF35D9B),
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      thickness: 0.5,
                      color: Colors.grey,
                      endIndent: 70.0,
                      indent: 5.0,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 35.0),
                          child: AnimatedFlipCounter(
                            duration: const Duration(milliseconds: 500),
                            value: _counter2,
                            textStyle: const TextStyle(
                              fontSize: 120.0,
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              _counter2++;
                            });
                          },
                          color: const Color(0xFFF35D9B),
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 3.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              _counter2 += 2;
                            });
                          },
                          color: const Color(0xFFF35D9B),
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 3.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              _counter2 += 3;
                            });
                          },
                          color: const Color(0xFFF35D9B),
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          _counter1 = 0;
                          _counter2 = 0;
                        });
                      },
                      color: const Color(0xFFF35D9B),
                      height: 40.0,
                      minWidth: 150.0,
                      child: const Text(
                        'Reset',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
