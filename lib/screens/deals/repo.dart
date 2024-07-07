import '../../api/api_client.dart';

class DealsRepo {
  final ApiClient apiClient;

  DealsRepo({required this.apiClient});

  getData() async {
   return await apiClient.get('deals');
  }
    getRestaurants() async {
   return await apiClient.getData('api/v1/restaurants');
  }

}