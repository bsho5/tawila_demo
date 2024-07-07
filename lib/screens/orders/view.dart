import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../const/colors.dart';
import '../address/controller.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Padding(
     padding: EdgeInsets.only(
              top: 20, bottom: 11.0, left: 11.0, right: 11.0),
          
      child: Column(
        children: [
          _TopBar(),
          SizedBox(height: 30,),
          Expanded(child: Center(child: Text('Orders'))),
        ],
      ),
    ));
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30.0),
          ),
          // shape: BeveledRectangleBorder(
          //   // side: BorderSide(color: Colors.blue),

          // ),
          child: GetBuilder<AddressController>(builder: (addressController) {
            return ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30.0),
              ),
              // shape: BeveledRectangleBorder(
              //   // side: BorderSide(color: Colors.blue),

              // ),
              child: Container(
                width: 122.95,
                height: 34,
                decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50.0), bottomLeft: Radius.circular(50.0), bottomRight: Radius.circular(30.0))),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                      // Text(
                      //   addressController.addressList[0].street,
                      //   style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
                      // ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
        Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: const Color.fromRGBO(90, 112, 129, 1)),
            ))
      ],
    );
  }
}
