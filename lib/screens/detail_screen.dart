import 'package:flutter/material.dart';
import '../models/additive.dart';

class DetailScreen extends StatelessWidget {
  final Additive additive;
  const DetailScreen({Key? key, required this.additive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(additive.code)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(additive.name, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 10),
            Text('Type: ${additive.type}'),
            Text('Risk Level: ${additive.risk}'),
            const SizedBox(height: 10),
            Text(additive.description),
          ],
        ),
      ),
    );
  }
}