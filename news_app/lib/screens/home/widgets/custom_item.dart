// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news_app/config/constants/constants.dart';
import 'package:news_app/config/models/category_models.dart';

typedef OnCategroyClicked = void Function(CategoryModel)?;

class CustomItemWidget extends StatelessWidget {
  const CustomItemWidget({
    Key? key,
    required this.index,
    required this.categoryModel,
    this.onCategroyClicked,
  }) : super(key: key);
  final int index;
  final CategoryModel categoryModel;
  final OnCategroyClicked onCategroyClicked;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onCategroyClicked == null) return;
        onCategroyClicked!(categoryModel);
      },
      child: Container(
        decoration: BoxDecoration(
          color: categoryModel.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(25),
            topRight: const Radius.circular(25),
            bottomRight: index % 2 == 0
                ? const Radius.circular(0)
                : const Radius.circular(25),
            bottomLeft: index % 2 == 0
                ? const Radius.circular(25)
                : const Radius.circular(0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              categoryModel.image,
              fit: BoxFit.cover,
            ),
            Text(
              categoryModel.id,
              style: Constants.theme.textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}
