import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const ['Dragon Ball', 'Digimon', 'Pokemon', 'Street Fighter'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 2'),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              // return Text(options[index]);
              return ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.indigo,
                ),
                title: Text(options[index]),
                onTap: () {
                  final anime = options[index];
                  print(anime);
                },
              );
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
