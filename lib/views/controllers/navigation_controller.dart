import 'package:finsire_machine_test/views/feed_page.dart';
import 'package:finsire_machine_test/views/page_five.dart';
import 'package:finsire_machine_test/views/page_four.dart';
import 'package:finsire_machine_test/views/page_three.dart';
import 'package:finsire_machine_test/views/page_two.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{

  RxInt pageIndex = 0.obs;

  final pages = [
    FeedPage(),
    PageTwo(),
    PageThree(),
    PageFour(),
    PageFive(),
  ].obs;
}