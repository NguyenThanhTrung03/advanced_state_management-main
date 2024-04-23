import 'package:advanced_state_management/models/item_model.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  void add(ItemModel item) {
    final lastId = items.length != 0 ? items.last.id : '00';
    int indexId = int.parse('$lastId') + 1;
    String id = indexId < 10 ? '0$indexId' : '$indexId';
    items.add(ItemModel(
      id: id,
      name: '${item.name}',
      description: '${item.description}',
    ));
    notifyListeners();
  }

  void update(int index, ItemModel item) {
    items[index] = item;
    notifyListeners();
  }

  void delete(ItemModel item) {
    items.remove(item);
    notifyListeners();
  }
}

HomeController homeController = HomeController();
