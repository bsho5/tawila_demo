import 'package:get/get.dart';

import 'model.dart';
import 'repo.dart';

class DealsController extends GetxController {
  final DealsRepo dealsRepo;
  List<bool> _boolList = [];
  List<bool> get boolList => _boolList;
  DealsController({required this.dealsRepo});
  List<Items> _items = [];
  List<Items> get items => _items;
  List<Restaurant> _restaurantsList = [];
  List<Restaurant> get restaurantsList => _restaurantsList;
  final Map<String?, Restaurant> _favList = {};
  bool _isloading = false;
  bool get isloading => _isloading;
  String bodyLength = '';
   String bodyLength2 = '';
  @override
  void onInit() {
    favBoolList();
    super.onInit();
  }

  Future<void> getData() async {
    _isloading = true;
    _restaurantsList = [];
    update();
    Response response = await dealsRepo.getRestaurants();

    if (response.statusCode == 200) {
      _restaurantsList = [];
      // bodyLength = response.body[1]['name'].toString();
      for (var i = 0; i < response.body.length; i++) {
        
         
          
        _restaurantsList.add(Restaurant.fromJson(response.body[i]));
       bodyLength = (i).toString() ;
      }
      
      // favBoolList();
      _isloading = false;
      update();
    }
  }

  List<Items> getItemsDetails(List<Items> items) {
    List<Items> _items = [];

    for (var j = 0; j < items.length; j++) {
      if (items[j].photoUrl != null) {
        _items.add(items[j]);
      }
    }
    return _items;
  }

  void delete(String name) {
    _favList.remove(name);
  }

  void favBoolList() {
    _boolList = [];
    for (var i = 0; i < _restaurantsList.length; i++) {
      boolList.add(false);
    }
  }

  void addItemToFav(Restaurant item) {
    if (_favList.containsKey(item.name)) {
      _favList.update(item.name, (value) {
        return Restaurant(
          id: item.id,
          name: item.name,
        );
      });
    } else {
      _favList.putIfAbsent(item.name, () {
        return Restaurant(
          id: item.id,
          name: item.name,
        );
      });
    }

    update();
  }

  List<Restaurant> get getItems {
    return _favList.entries.map((e) {
      return e.value;
    }).toList();
  }
}
