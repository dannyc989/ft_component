import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const ['Dragon Ball', 'Digimon', 'Pokemon', 'Street Fighter'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Tipo 1')),
      body: ListView(children: [
        ...options
            .map((anime) => ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  title: Text(anime),
                ))
            .toList(),
        const Divider(),
      ]),
    );
  }
}
