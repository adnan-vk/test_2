import 'package:favourite/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<HomeController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourites"),
      ),
      body: ListView.builder(
        itemCount: pro.favouritesTitle.length,
        itemBuilder: (context, index) {
          final title = pro.favouritesTitle[index];
          final sub = pro.favouritesSub[index];
          return Consumer<HomeController>(
            builder: (context, value, child) => ListTile(
              title: Text(title),
              subtitle: Text(sub),
            ),
          );
        },
      ),
    );
  }
}
