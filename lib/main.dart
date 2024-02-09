import 'package:flutter/material.dart';
import 'package:flutter_sabak4/counter2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int ozgoruuchusan = 0;
  void koshuu() => setState(() {
        ozgoruuchusan++;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Тапшырма01'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black12),
              width: 240,
              height: 40,
              child: Text(
                'сан:$ozgoruuchusan',
                textAlign: TextAlign.center,
                style:  const TextStyle(height: 1.5,fontSize: 25,color: Colors.deepPurple),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ozgoruuchusan--;
                    setState(() {});
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 40),
                ElevatedButton(
                  onPressed: koshuu,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Counter1(syrtankelgensan: ozgoruuchusan),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
