import 'package:advanced_state_management/controllers/home_controller.dart';
import 'package:advanced_state_management/models/item_model.dart';
import 'package:advanced_state_management/views/detail_view.dart';
import 'package:flutter/material.dart';

class ThemeColors {
  Color primaryColor = Colors.blue;
  Color secondaryColor = Colors.red;
  Color primaryTextColor = Colors.black;
  Color secondaryTextColor = Colors.white;
  Color primaryBackgroundColor = Colors.white;
  Color secondaryBackgroundColor = Colors.grey.withOpacity(0.2);
}

class ThemeTextStyles {
  TextStyle primaryTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
  TextStyle secondaryTextStyle = TextStyle(
    color: color.primaryColor,
    fontSize: 16,
  );
}

class ThemeIcons {
  Icon add = const Icon(Icons.add_circle_outline_rounded);
  Icon remove = const Icon(Icons.remove_circle_outline_rounded);
  Icon edit = const Icon(Icons.edit_rounded);
  Icon delete = const Icon(Icons.delete_outline_rounded);
  Icon save = const Icon(Icons.save_outlined);
  Icon cancel = const Icon(Icons.cancel_outlined);
  Icon info = const Icon(Icons.info_outline_rounded);
}

class Themes {
  Container boxContainer(Widget child) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: color.primaryBackgroundColor),
        color: color.primaryBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: List.filled(
          1,
          BoxShadow(
            color: color.primaryBackgroundColor.withOpacity(0.5),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ),
      ),
      child: child,
    );
  }

  Container items(BuildContext? context, int index, ItemModel items) {
    return boxContainer(
      ListTile(
          onTap: context != null
              ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailView(index: index, item: items),
                    ),
                  );
                }
              : null,
          leading: Text('${items.id}', style: text.primaryTextStyle),
          title: Text('${items.name}', style: text.primaryTextStyle),
          trailing: IconButton(
            icon: icon.delete,
            color: color.secondaryColor,
            onPressed: () {
              homeController.delete(items);
            },
          )),
    );
  }

  Container desrciption(ItemModel item) {
    return boxContainer(
      Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('${item.description}', style: text.primaryTextStyle)),
    );
  }
}

ThemeColors color = ThemeColors();
ThemeTextStyles text = ThemeTextStyles();
ThemeIcons icon = ThemeIcons();
Themes themes = Themes();
