import 'package:finsire_machine_test/constants.dart';
import 'package:finsire_machine_test/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.navigationController,
  }) : super(key: key);

  final NavigationController navigationController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            spreadRadius: -1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
        color: const Color(0xff090939),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () => navigationController.pageIndex.value = 0,
              icon: navigationController.pageIndex.value == 0
                  ? const Icon(
                      Icons.home_filled,
                      color: kGrey,
                      size: 25,
                    )
                  : const Icon(
                      Icons.home_filled,
                      color: kWhite,
                      size: 25,
                    ),
            ),
          ),
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () => navigationController.pageIndex.value = 1,
              icon: navigationController.pageIndex.value == 1
                  ? const Icon(
                      Icons.search,
                      color: kGrey,
                      size: 25,
                    )
                  : const Icon(
                      Icons.search,
                      color: kWhite,
                      size: 25,
                    ),
            ),
          ),
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () => navigationController.pageIndex.value = 2,
              icon: navigationController.pageIndex.value == 2
                  ? const Icon(
                      Icons.circle_outlined,
                      color: kGrey,
                      size: 25,
                    )
                  : const Icon(
                      Icons.circle_outlined,
                      color: kWhite,
                      size: 25,
                    ),
            ),
          ),
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () => navigationController.pageIndex.value = 3,
              icon: navigationController.pageIndex.value == 3
                  ? const Icon(
                      Icons.check_circle_outlined,
                      color: kGrey,
                      size: 25,
                    )
                  : const Icon(
                      Icons.check_circle_outlined,
                      color: kWhite,
                      size: 25,
                    ),
            ),
          ),
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () => navigationController.pageIndex.value = 4,
              icon: navigationController.pageIndex.value == 4
                  ? const Icon(
                      Icons.person_outline,
                      color: kGrey,
                      size: 25,
                    )
                  : const Icon(
                      Icons.person_outline,
                      color: kWhite,
                      size: 25,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
