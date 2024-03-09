import 'package:flutter/material.dart';
import 'package:news_app/config/constants/constants.dart';
import 'package:news_app/config/models/category_models.dart';

class CustomItemWidget extends StatelessWidget {
  const CustomItemWidget({
    super.key,
    required this.index,
    required this.categoryModel,
  });
  final int index;
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
