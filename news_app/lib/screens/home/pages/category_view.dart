import 'package:flutter/material.dart';
import 'package:news_app/config/models/category_models.dart';
import 'package:news_app/config/widgets/custom_background.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget();
  }
}
