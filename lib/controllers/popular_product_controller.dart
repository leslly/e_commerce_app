import 'package:e_commerce_flower_app/data/repository/popular_product_repel.dart';
import 'package:e_commerce_flower_app/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  // create method
Future<void> getPopularProductLIst() async {
  Response response = await popularProductRepo.getPopularProductList();
  if(response.statusCode==200){
    print("get movies");
    // did not print at first cause i did not add ln21
    _popularProductList = [];
    _popularProductList.addAll(Product.fromJson(response.body).products);
    print(_popularProductList);
    update();
  } else {

  }
}
}