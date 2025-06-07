import 'package:flutter/material.dart';
import '../models/additive.dart';

class AdditiveCard extends StatelessWidget {
  final Additive additive;
  const AdditiveCard({Key? key, required this.additive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: ListTile(
        title: Text('${additive.code} - ${additive.name}'),
        subtitle: Text('Type: ${additive.type} | Risk: ${additive.risk}'),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
