import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CuperTinoSample(),
    );
  }
}

class CuperTinoSample extends StatelessWidget {
  const CuperTinoSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Style Pop Sample'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              FocusScope.of(context).unfocus();
              final result1 = await showCupertinoModalPopup(
                  barrierColor: Colors.black.withOpacity(0.7),
                  context: context,
                  builder: (context) => SamplePop());
            },
            child: const Text('show popup')),
      ),
    );
  }
}

class SamplePop extends StatelessWidget {
  const SamplePop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: Material(
            child: Column(
              children: [
                Container(height: 50,color: Colors.grey, alignment: Alignment.center, child: const Text('title')),
                const Expanded(child: SizedBox()),
                Container(height: 250, alignment: Alignment.center, child: const Text('content')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

