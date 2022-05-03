import 'package:finsire_machine_test/constants.dart';
import 'package:finsire_machine_test/views/controllers/navigation_controller.dart';
import 'package:finsire_machine_test/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  //DEPENDENCY INJECTION
  final navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          backgroundColor: kWhite,
          body:
              navigationController.pages[navigationController.pageIndex.value],
          bottomNavigationBar:
              CustomBottomNavBar(navigationController: navigationController),
        ),
      ),
    );
  }
}
