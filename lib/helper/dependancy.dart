//import 'package:get/get_core/src/get_main.dart';
import 'package:food_waste_management/controllers/popular_product_controller.dart';
import 'package:food_waste_management/utils/app_constants.dart';
import 'package:get/get.dart';

import '../controllers/recommanded_product_controller.dart';
import '../data/api/api_client.dart';
import '../data/represetory/popular_product_repo.dart';
import '../data/represetory/recommanded_product_repo.dart';
Future<void> init()async{

Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.BASE_URL));

Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));
Get.lazyPut(() => RecommandedProductRepo(apiClient:Get.find()));


Get.lazyPut(() => RecommandedProductController(recommandedProductRepo:Get.find()));

Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));

}