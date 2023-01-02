import 'package:flutter/material.dart';
import 'package:task/const/app_color.dart';
import 'package:task/custom_class/payment.dart';
import 'package:task/custom_class/purchase.dart';
import 'package:task/custom_class/return.dart';
import 'package:task/widgets/font_style.dart';
import 'package:task/widgets/my_drawer.dart';

class TableDataScreen extends StatelessWidget {
  const TableDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

    Purchase purchase = Purchase();
    Payment payment = Payment();
    ReturnClass returnClass = ReturnClass();

    return Scaffold(
      drawer: MyDrawer(),
      key: _scaffoldkey,
      appBar: AppBar(
        backgroundColor: AppColor.gDarkcolor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              _scaffoldkey.currentState!.openDrawer();
            },
            icon: Image.asset("images/vector.png")),
        title: Text(
          "Table Data",
          style: interStyle(16, Colors.white, FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          purchase.getPurchase(),
          payment.getPayment(),
          returnClass.getReturn(),

          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 68),
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: AppColor.gDarkcolor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_circle_outlined, color: Colors.white,),
                  Text("  Pay the balance", style: poppinsStyle(16, Colors.white, FontWeight.w600),)
                ],
              )
            ),
          )
        ]),
      ),
    );
  }
}
