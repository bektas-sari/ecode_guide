import 'package:flutter/material.dart';
import '../models/additive.dart';
import '../data/additives.dart';
import '../widgets/additive_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Additive> _additives;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _additives = additiveData.map((e) => Additive.fromMap(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final filtered = _additives.where((a) {
      final q = _searchQuery.toLowerCase();
      return a.code.toLowerCase().contains(q) || a.name.toLowerCase().contains(q);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Additives Guide'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search by E-code or name...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (val) => setState(() => _searchQuery = val),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (ctx, i) {
                final item = filtered[i];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailScreen(additive: item),
                    ),
                  ),
                  child: AdditiveCard(additive: item),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
