import 'package:food_waste_management/data/represetory/popular_product_repo.dart';
import 'package:get/get.dart';

import '../data/represetory/recommanded_product_repo.dart';
import '../models/products-model.dart';

class RecommandedProductController extends GetxController{
  final RecommandedProductRepo recommandedProductRepo;
  RecommandedProductController({ required this.recommandedProductRepo});
  List<dynamic> _recommandedProductList=[];
  List<dynamic>  get RecommandedProductList=> RecommandedProductList;
  bool _isLoaded=false;
  bool get isLoaded=>_isLoaded;
  Future<void> getRecommandedProductList()async {
    Response response= await recommandedProductRepo.getRecommandedProductList();
    if(response.statusCode==200){
      print("got products");
      _recommandedProductList=[];
      _recommandedProductList.addAll(Product.fromJson(response.body).products);
      // print(_popularProductList);
      _isLoaded=true;
      update();

    }else{

    }

  }
}