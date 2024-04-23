class ItemModel {
  final String? id;
  String? name;
  String? description;
  ItemModel({this.id, this.name, this.description});
}

ItemModel itemModel =
    ItemModel(id: '01', name: 'Item 1', description: 'Description 1');
ItemModel itemModel2 =
    ItemModel(id: '02', name: 'Item 2', description: 'Description 2');
ItemModel itemModel3 =
    ItemModel(id: '03', name: 'Item 3', description: 'Description 3');

List<ItemModel> items = [itemModel, itemModel2, itemModel3];
