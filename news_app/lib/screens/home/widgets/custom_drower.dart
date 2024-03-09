import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_app/config/constants/constants.dart';

class CustomDrower extends StatelessWidget {
  const CustomDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Constants.mediaQuery.width * 0.8,
      child: Column(
        children: [
          Container(
            color: Constants.theme.primaryColor,
            width: Constants.mediaQuery.width * 0.8,
            height: 160,
            alignment: Alignment.center,
            child: Text(
              "News App",
              style: Constants.theme.textTheme.titleLarge,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 25,
                bottom: 5,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.list_outlined,
                    size: 35,
                  ),
                  const Gap(10),
                  Text(
                    "Category",
                    style: Constants.theme.textTheme.bodyMedium!
                        .copyWith(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              //To Open SettingsView
              // navigatorKey.currentState!.pushReplacementNamed(
              //   PageRouteNames.settingView,
              // );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 5,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.settings,
                    size: 35,
                  ),
                  const Gap(10),
                  Text(
                    "Settings",
                    style: Constants.theme.textTheme.bodyMedium!
                        .copyWith(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
