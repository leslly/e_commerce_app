import 'package:e_commerce_flower_app/controllers/popular_product_controller.dart';
import 'package:e_commerce_flower_app/data/repository/popular_product_repel.dart';
import 'package:get/get.dart';
import '../data/api/api_client.dart';

Future<void> init()async {
  // api client
Get.lazyPut(()=>ApiClient(appBaseUrl: 'https://www.dbestech.com'));
// repos
Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
// controllers
Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}