import 'package:flutter/material.dart';
import 'package:task/const/app_color.dart';
import 'package:task/widgets/font_style.dart';

class Purchase{
  getPurchase(){
    return Padding(
      padding:  EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder.all(width: 1.0, color: AppColor.gDarkcolor),
        columnWidths: {
          0: FlexColumnWidth(263),
          1: FlexColumnWidth(80),
        },
        children: [
          TableRow(children: [
            Column(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 15, top: 7),
                    height: 32,
                    width: double.infinity,
                    color: AppColor.gDarkcolor,
                    child: Text(
                      "Dues",
                      style:
                      poppinsStyle(14, Colors.white, FontWeight.w600),
                    )),
                Container(
                  height: 46,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: 'Previous Due',
                      style:
                      poppinsStyle(14, Colors.black, FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  01 January 2022',
                            style: poppinsStyle(
                                12, Colors.black, FontWeight.w400)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 78,
              color: AppColor.gLightcolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " Due",
                    style: interStyle(12, Colors.black, FontWeight.w500),
                  ),
                  SizedBox(height: 3,),
                  Text(
                    "\৳20000",
                    style: poppinsStyle(
                        12, Color(0xffF37048), FontWeight.w600),
                  )
                ],
              ),
            ),
          ]),

          //2nd Row..........................................
          TableRow(children: [
            Column(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 15, top: 7),
                    height: 32,
                    width: double.infinity,
                    color: AppColor.gDarkcolor,
                    child: Text(
                      "Purchase",
                      style:
                      poppinsStyle(14, Colors.white, FontWeight.w600),
                    )),
                Container(
                  child: Column(
                    children: [
                      Container(
                          color: AppColor.gLightcolor,
                          width: double.infinity,
                          height: 67,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: 'Invoice Date : ',
                                  style: poppinsStyle(
                                      12, Colors.black, FontWeight.w500),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '01 January 2022',
                                        style: poppinsStyle(
                                            12,
                                            Colors.black,
                                            FontWeight.w600)),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Invoice No : ',
                                  style: poppinsStyle(
                                      12, Colors.black, FontWeight.w500),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '5386328',
                                        style: poppinsStyle(
                                            12,
                                            Colors.black,
                                            FontWeight.w600)),
                                  ],
                                ),
                              ),
                            ],
                          )),

                      Table(
                        defaultVerticalAlignment:
                        TableCellVerticalAlignment.middle,
                        border: TableBorder(
                          top: BorderSide(color: AppColor.gDarkcolor),
                          verticalInside:
                          BorderSide(color:AppColor.gDarkcolor),
                        ),
                        columnWidths: {
                          0: FlexColumnWidth(183),
                          1: FlexColumnWidth(80),
                        },
                        children: [
                          TableRow(children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Test product 01", style: poppinsStyle(
                                      12,
                                      Colors.black,
                                      FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 4,),
                                  Text("200 pcs × 200", style: poppinsStyle(
                                      12,
                                      Colors.black,
                                      FontWeight.w400))
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 15),
                              child: Text(
                                "\৳40000", style: poppinsStyle(
                                  12,
                                  Colors.black,
                                  FontWeight.w500),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text("Test product 01", style: poppinsStyle(
                                      12,
                                      Colors.black,
                                      FontWeight.w600),),
                                  SizedBox(height: 4,),
                                  Text("20 pcs × 300", style: poppinsStyle(
                                      12,
                                      Colors.black,
                                      FontWeight.w400),)
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 15),
                              child: Text(
                                "\৳6000", style: poppinsStyle(
                                  12,
                                  Colors.black,
                                  FontWeight.w500),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text("Test product 01", style: poppinsStyle(
                                      12,
                                      Colors.black,
                                      FontWeight.w600),),
                                  SizedBox(height: 4,),
                                  Text("20 pcs × 200", style: poppinsStyle(
                                      12,
                                      Colors.black,
                                      FontWeight.w400),)
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 15),
                              child: Text(
                                "\৳4000", style: poppinsStyle(
                                  12,
                                  Colors.black,
                                  FontWeight.w500),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ]),
                        ],
                      ),
                      Table(
                        defaultVerticalAlignment:
                        TableCellVerticalAlignment.middle,
                        border: TableBorder(
                          top: BorderSide(color: AppColor.gDarkcolor),
                          verticalInside:
                          BorderSide(color: AppColor.gDarkcolor),
                        ),
                        columnWidths: {
                          0: FlexColumnWidth(183),
                          1: FlexColumnWidth(80),
                        },
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15, top: 10),
                              child: Text(
                                "Discount",
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 15, top: 10),
                              child: Text(
                                "\৳0",
                                textAlign: TextAlign.right,
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: Text(
                                "VAT",
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 15),
                              child: Text(
                                "\৳0",
                                textAlign: TextAlign.right,
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                          ]),
                        ],
                      ),
                      Table(
                        defaultVerticalAlignment:
                        TableCellVerticalAlignment.middle,
                        border: TableBorder(
                          top: BorderSide(color: AppColor.gDarkcolor),
                          verticalInside:
                          BorderSide(color: AppColor.gDarkcolor),
                        ),
                        columnWidths: {
                          0: FlexColumnWidth(183),
                          1: FlexColumnWidth(80),
                        },
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15, top: 10),
                              child: Text(
                                "Grand Total",
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 15, top: 10),
                              child: Text(
                                "\৳50000",
                                textAlign: TextAlign.right,
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: Text(
                                "Previous Due",
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 15),
                              child: Text(
                                "\৳20000",
                                textAlign: TextAlign.right,
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                          ]),
                        ],
                      ),
                      Table(
                        defaultVerticalAlignment:
                        TableCellVerticalAlignment.middle,
                        border: TableBorder(
                          top: BorderSide(color: AppColor.gDarkcolor),
                          verticalInside:
                          BorderSide(color: AppColor.gDarkcolor),
                        ),
                        columnWidths: {
                          0: FlexColumnWidth(183),
                          1: FlexColumnWidth(80),
                        },
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15, top: 10),
                              child: Text(
                                "Total Amount",
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 15, top: 10),
                              child: Text(
                                "\৳70000",
                                textAlign: TextAlign.right,
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: Text(
                                "Total Payment",
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 15),
                              child: Text(
                                "\৳40000",
                                textAlign: TextAlign.right,
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                          ]),
                        ],
                      ),
                      Table(
                        defaultVerticalAlignment:
                        TableCellVerticalAlignment.middle,
                        border: TableBorder(
                          top: BorderSide(color: AppColor.gDarkcolor),
                          verticalInside:
                          BorderSide(color: AppColor.gDarkcolor),
                        ),
                        columnWidths: {
                          0: FlexColumnWidth(183),
                          1: FlexColumnWidth(80),
                        },
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15, top: 10, bottom: 10),
                              child: Text(
                                "Remaining Balance",
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 15, top: 10, bottom: 10),
                              child: Text(
                                "\৳30000",
                                textAlign: TextAlign.right,
                                style: poppinsStyle(
                                    12,
                                    Colors.black,
                                    FontWeight.w600),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),

            Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 522,
              color: AppColor.gLightcolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    " Due",
                    style: interStyle(12, Colors.black, FontWeight.w500),
                  ),
                  SizedBox(height: 3,),
                  Text(
                    "\৳30000",
                    style: poppinsStyle(
                        12, Color(0xffF37048), FontWeight.w600),
                  )
                ],
              ),
            ),
          ]),




        ],
      ),
    );
  }
}