import 'package:flutter/material.dart';
import 'package:news_app/config/constants/constants.dart';
import 'package:news_app/config/models/category_models.dart';
import 'package:news_app/config/widgets/custom_background.dart';
import 'package:news_app/main.dart';
import 'package:news_app/screens/home/pages/category_view.dart';
import 'package:news_app/screens/home/widgets/custom_drower.dart';
import 'package:news_app/screens/home/widgets/custom_item.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key, this.categoryModel});
  final CategoryModel? categoryModel;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categoriesList = [
      CategoryModel(
        id: "Sports",
        title: "sports",
        image: "assets/images/sports_icon.png",
        backgroundColor: const Color(0xffC91C22),
      ),
      CategoryModel(
        id: "Politics",
        title: "politics",
        image: "assets/images/Politics_icon.png",
        backgroundColor: const Color(0xff003E90),
      ),
      CategoryModel(
        id: "Health",
        title: "health",
        image: "assets/images/health_icon.png",
        backgroundColor: const Color(0xffED1E79),
      ),
      CategoryModel(
        id: "Business",
        title: "business",
        image: "assets/images/bussines_icon.png",
        backgroundColor: const Color(0xffCF7E48),
      ),
      CategoryModel(
        id: "Enviroment",
        title: "enviroment",
        image: "assets/images/environment_icon.png",
        backgroundColor: const Color(0xff4882CF),
      ),
      CategoryModel(
        id: "Science",
        title: "Science",
        image: "assets/images/science_icon.png",
        backgroundColor: const Color(0xffF2D352),
      ),
    ];
    return CustomBackgroundWidget(
      child: Scaffold(
        appBar: AppBar(
            leadingWidth: 100,
            title: Text(
              selectCategory == null ? "News App" : selectCategory!.title,
              style: Constants.theme.textTheme.titleLarge,
            )),
        drawer: CustomDrower(
          onCategoryDrowerTap: onCategoryDrowerTap, //Call the function
        ),
        body: selectCategory == null
            ? Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Pick your category \nof interest",
                      textAlign: TextAlign.start,
                      style: Constants.theme.textTheme.bodyLarge!.copyWith(
                        color: Colors.black,
                        height: 1.4,
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 5 / 6,
                        ),
                        itemBuilder: (context, index) => CustomItemWidget(
                          index: index,
                          categoryModel: categoriesList[index],
                          onCategroyClicked: onCategroyClicked,
                        ),
                        itemCount: 6,
                      ),
                    )
                  ],
                ),
              )
            : CategoryView(
                categoryModel: selectCategory!,
              ),
      ),
    );
  }

  CategoryModel? selectCategory;

  void onCategroyClicked(CategoryModel categoryModel) {
    selectCategory = categoryModel;
    print(categoryModel.id);
    setState(
      () {},
    );
  }

  void onCategoryDrowerTap() {
    setState(() {
      selectCategory = null;
    });
    navigatorKey.currentState!.pop();
  }
}
