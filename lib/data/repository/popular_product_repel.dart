import 'package:e_commerce_flower_app/utils/app_constants.dart';
import 'package:get/get.dart';

import '../api/api_client.dart';

// When loading data from the internet, extend GetxService
class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}