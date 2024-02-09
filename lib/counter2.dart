// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Counter1 extends StatelessWidget {
  const Counter1({
    Key? key,
    required this.syrtankelgensan}) : super(key: key);
final int syrtankelgensan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Тапшырма02'),
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
                'сан:$syrtankelgensan',
                textAlign: TextAlign.center,
                style: const TextStyle(height: 1.5,fontSize: 25,color: Colors.deepPurple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
