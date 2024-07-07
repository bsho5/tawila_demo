import 'package:get/get.dart';
import 'package:tawila_demo/screens/deals/model.dart';

// import '../data/repository/item_repo.dart';
import '../home/model.dart';
import 'model.dart';
import '../cart/controller.dart';

class ItemController extends GetxController {
  // final ItemRepo itemRepo;

  // ItemController({required this.itemRepo});
  final List<CategoryModel> _itemList = [];
  List<CategoryModel> get itemList => _itemList;
  final Map<String?, ItemModel> _favList = {};
  final bool _isloading = false;
  bool get isloading => _isloading;

  // Future<void> getData() async {
  //   _isloading = true;
  //   update();
  //   Response response = await itemRepo.getData();

  //   if (response.statusCode == 200) {
  //     _itemList = [];

  //     for (var i = 0; i < response.body.length; i++) {
  //       _itemList.add(CategoryModel.fromMap(response.body[i]));
  //     }
  //     _isloading = false;
  //     update();
  //   }
  // }

  void addItemToFav(ItemModel item, int quantity) {
    if (_favList.containsKey(item.name)) {
      _favList.update(item.name, (value) {
        return ItemModel(
          id: item.id,
          name: item.name,
          price: item.price,
          
          serving: item.serving,
        );
      });
    } else {
      _favList.putIfAbsent(item.name, () {
        return ItemModel(
          id: item.id,
          price: item.price,
          serving: item.serving,
        
          name: item.name,
        );
      });
    }

    update();
  }
   List<ItemModel> get getItems {
    return _favList.entries.map((e) {
      return e.value;
    }).toList();
  }
  void addItemItem(Items? item, ) {
    CartController cart = Get.find<CartController>();

    cart.addItem(item!, 1);
  
  }
  bool existInCart(ItemModel? item) {
    CartController cart = Get.find<CartController>();

    return cart.existInCart(item!);
  }
}
