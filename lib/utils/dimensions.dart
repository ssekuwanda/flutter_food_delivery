import 'package:get/get.dart';

class Dimensions {
  // Defualt sreen size is 844
  // hence 844/20
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageViewContainer = screenHeight / 3.84;
  static double pageTextContainer = screenHeight / 7.03;
  static double pageView = screenHeight / 2.64;

  static double height10 = screenHeight / 84.4;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height15 = screenHeight / 56.27;
  static double height45 = screenHeight / 18.8;

  static double width10 = screenHeight / 84.4;
  static double width20 = screenHeight / 42.2;
  static double width15 = screenHeight / 56.27;
  static double width30 = screenHeight / 28.13;

  static double font16 = screenHeight / 52.7;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.45;

  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  static double listViewImg = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;

  static double popularFoodImgSize = screenHeight / 2.41;

  static double bottomHeightBar = screenHeight / 7.03;
}
