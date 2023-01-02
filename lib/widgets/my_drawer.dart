import 'package:flutter/material.dart';
import 'package:task/const/app_color.dart';
import 'package:task/widgets/font_style.dart';

class MyDrawer extends StatefulWidget {
   MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool _customTileExpanded1 = false;
  bool _customTileExpanded2 = false;
  bool _customTileExpanded3 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: 329,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 115,
                  width: 329,
                  decoration: BoxDecoration(
                      color: AppColor.gDarkcolor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                ),
                Positioned(
                    right: 10,
                    child: Container(
                      height: 115,
                      width: 147,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xffC9ECE3),
                            Color(0xff10AB83),
                          ]),
                          color: AppColor.gDarkcolor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(80),
                              bottomRight: Radius.circular(12))),
                    )),
                Positioned(
                    right: 0,
                    child: Container(
                      height: 115,
                      width: 90,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xffC9ECE3),
                            Color(0xff10AB83),
                          ]),
                          color: AppColor.gDarkcolor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(90),
                              bottomRight: Radius.circular(14))),
                    )),
                Positioned(
                    left: 15,
                    bottom: 16.16,
                    child: Text("Demo Limited Company",
                        style:
                            poppinsStyle(18, Colors.white, FontWeight.w600))),

                Positioned(
                    child: IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.close, color: Colors.white,)),
                ),
              ],
            ),
            SizedBox(height: 13,),

            InkWell(
              onTap: () {
                // setState(() {
                //   selectColor();
                // });
              },
              child: ExpansionTile(
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  collapsedBackgroundColor: Color(0xffC9ECE3),

                  collapsedIconColor: AppColor.gDarkcolor,
                  collapsedTextColor: AppColor.gDarkcolor,
                iconColor: AppColor.gDarkcolor,
                textColor: AppColor.gDarkcolor,

                  title: Text("Purchase", style: poppinsStyle2(14, FontWeight.w500),),
                leading: Icon(Icons.shopping_cart),
                trailing: Icon(
                  _customTileExpanded1
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
                onExpansionChanged: (bool expanded) {
                  setState(() => _customTileExpanded1 = expanded,
                  );
                },
                children: [
                  Text("Purchase List", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500),),
                  Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    child: Text("Order List", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                  ),
                  Text("VAT List", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    child: Text("Product Unit", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                  ),
                  Text("Purchase Report", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                  SizedBox(height: 12,)
                ],
              ),
            ),
            ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              iconColor: AppColor.gDarkcolor,
              textColor: AppColor.gDarkcolor,

              title: Text("Sell", style: poppinsStyle2(14, FontWeight.w500),),
              leading: Icon(Icons.shopping_bag),
              trailing: Icon(
                _customTileExpanded2
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded2 = expanded);
              },
              children: [
                Text("Purchase List", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500),),
                Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12),
                  child: Text("Order List", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                ),
                Text("VAT List", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12),
                  child: Text("Product Unit", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                ),
                Text("Purchase Report", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                SizedBox(height: 12,)
              ],
            ),
            ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              iconColor: AppColor.gDarkcolor,
              textColor: AppColor.gDarkcolor,

              title: Text("Stock / Inventory", style: poppinsStyle2(14, FontWeight.w500),),
              leading: Icon(Icons.store_sharp),
              trailing: Icon(
                _customTileExpanded3
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded3 = expanded);
              },
              children: [
                Text("Purchase List", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500),),
                Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12),
                  child: Text("Order List", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                ),
                Text("VAT List", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12),
                  child: Text("Product Unit", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                ),
                Text("Purchase Report", style: poppinsStyle(12, AppColor.gDarkcolor, FontWeight.w500)),
                SizedBox(height: 12,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  DrawerItem({
    this.title,
    this.onTap,
    Key? key,
  }) : super(key: key);

  String? title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${title}",
              style: myStyle(18, Colors.black, FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

myStyle(double fz, Color clr, [FontWeight? fw]) {
  return TextStyle(fontSize: fz, color: clr, fontWeight: fw);
}
