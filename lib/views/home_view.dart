import 'package:advanced_state_management/components/style.dart';
import 'package:advanced_state_management/controllers/home_controller.dart';
import 'package:advanced_state_management/models/item_model.dart';
import 'package:advanced_state_management/views/edit_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: icon.add,
                onPressed: () {
                  showModalBottomSheet<String?>(
                    context: context,
                    builder: (context) => const EditView(),
                  );
                },
              ),
            )
          ],
        ),
        body: Center(
          child: ListenableBuilder(
            listenable: homeController,
            builder: (context, _) => ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) =>
                  themes.items(context,index, items[index]),
            ),
          ),
        ),
      ),
    );
  }
}
