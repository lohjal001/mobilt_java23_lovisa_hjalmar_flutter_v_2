import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobilt_java23_lovisa_hjalmar_flutter_v_2/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: "HOME"),
        '/second': (context) => const SecondPage(title: "SecondPage")
      },
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


  @override
  Widget build(BuildContext context) {
    log('error');
    debugPrint("error debugPrint");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Scrollbar(
        thumbVisibility: false, // Show the scrollbar thumb while scrolling
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            const Row(
              children: <Widget>[
                Expanded(
                  child: Image(
                    image: NetworkImage(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Find all of the owls',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10), // Adding some space between items
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(
                      title: "Second page title",
                    ),
                  ),
                );
              },
              child: const Text("Go to Second Page"),
            ),
            Image.asset('assets/images/owlTwo.jpg'),
            Image.asset('assets/images/owlThree.jpg'),
            Image.asset('assets/images/owlFour.jpg'),
            Image.asset('assets/images/owlFive.jpg'),
            TextFormField(
              decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Owl noise',
            ),
          ),
            FilledButton(          onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => Dialog(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/owlTwo.jpg'),
                      const SizedBox(height: 15),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
              child: const Text('Ho ho'),
            ),
        ],
      ),
      ),
    );
  }
}
class TextFormFieldSection extends StatelessWidget {
  const TextFormFieldSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 40.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            contentPadding: EdgeInsets.only(left:20.0),
          ),
        ));
  }
}