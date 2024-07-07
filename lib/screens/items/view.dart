// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../const/colors.dart';
import 'package:get/get.dart';
import '../cart/controller.dart';
import '../deals/model.dart';
import '../home/controller.dart';
import 'dart:math';

class ItemsScreen extends StatelessWidget {
  final List<Items> items;
  final String categoryName;
  ItemsScreen({super.key, required this.items, required this.categoryName});
  List<Color> colors = [
    const Color.fromRGBO(249, 189, 173, 1),
    // const Color.fromRGBO(176, 234, 253, 1),
    const Color.fromRGBO(255, 157, 194, 1),
    const Color.fromRGBO(204, 184, 255, 1),
  ];
  int max = 3;
  int min = 0;
  int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    randomNumber = Random().nextInt(2) + 0;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () => navigator?.pop(context),
          ),
          elevation: 0,
          backgroundColor: AppColors.appBackgroundColor,
          title: Text(
            categoryName,
            style: const TextStyle(color: Colors.black),
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 20, bottom: 11.0, left: 11.0, right: 11.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: Get.height*3/4,
                child: GetBuilder<CategoryController>(builder: (categoryController) {
                  return ListView.separated(
                    padding: const EdgeInsets.all(15),
                    //physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 56,
                                    width: 56,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: items[index].photoUrl!=null?Colors.white: colors[randomNumber],
                                      // border: Border.all(
                                      //     color: Color.fromRGBO(90, 112, 129, 1)),
                                    ),
                                 child:   items[index].photoUrl!=null?Image.network(items[index].photoUrl??''):SizedBox() ,),
                                const SizedBox(
                                  width: 25,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(items[index].name!,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                                            SizedBox(height: 5,),
                                    Container(
                                      width: 200,
                                      child: Text(items[index].description??'',
                                          style: const TextStyle(
                                              fontSize: 8, color: Colors.grey),
                                              overflow: TextOverflow.ellipsis,),
                                    ),
                                     SizedBox(height: 5,),
                                    Text('\$ ${items[index].price}',
                                        style: const TextStyle(
                                            fontSize: 15,
                                            color:
                                                Color.fromRGBO(177, 62, 85, 1)))
                                  ],
                                ),
                                // CartCounter(index: index,)
                              ],
                            ),
                            GetBuilder<CartController>(builder: (cartController) {
                              return SizedBox(
                                height: 33,
                                width: 111,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 33,
                                      width: 33,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromRGBO(
                                            176, 234, 253, 1),
                      
                                        // border: Border.all(
                                        //     color: Color.fromRGBO(90, 112, 129, 1)),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          // cartController.setQuantity(false);
                                          // cartController.update();
                                        },
                                        child: const Icon(
                                          Icons.remove,
                                          color: Color.fromRGBO(71, 182, 218, 1),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      cartController.quantity.toString(),
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      height: 33,
                                      width: 33,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromRGBO(
                                            176, 234, 253, 1),
                                        // border: Border.all(
                                        //     color: Color.fromRGBO(90, 112, 129, 1)),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          // cartController.setQuantity(true);
                                          // cartController.update();
                                        },
                                        child: const Icon(
                                          Icons.add,
                                          color: Color.fromRGBO(71, 182, 218, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            })
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 35,
                      );
                    },
                  );
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  width: 200,
                  color: colors[randomNumber],
                  child: GetBuilder<CartController>(builder: (cartController) {
                    return TextButton(
                      child: const Text(
                        'Add To Cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      onPressed: () {
                        // cartController.addItem(
                        //     items[0], cartController.quantity);
                        // cartController.getAddedToCartSnackBar();
                        // cartController.resetQuantity();
                      },
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
