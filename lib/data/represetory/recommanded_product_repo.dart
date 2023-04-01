import 'package:food_waste_management/data/api/api_client.dart';
import 'package:food_waste_management/utils/app_constants.dart';
import 'package:get/get.dart';

class RecommandedProductRepo extends GetxService
{
  final ApiClient apiClient;
  RecommandedProductRepo({
    required this.apiClient
  });

  Future<Response> getRecommandedProductList() async{
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}