import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:taaconnect_riders/src/core/core.dart';

import '../../../data/models/order_histories.dart';

class EarningView extends StatefulWidget {
  const EarningView({super.key});

  @override
  State<EarningView> createState() => _EarningViewState();
}

class _EarningViewState extends State<EarningView> {
  String? dateSelection;
  var nairaFormaet = NumberFormat.simpleCurrency(name: 'NGN');
  List<OrderHistory> orderHistories = [
    OrderHistory(
      id: 'D4U-234987',
      price: 1400,
      status: 'Add',
      date: DateTime.now(),
      orderType: 'Order ID',
    ),
    OrderHistory(
      id: 'Opay-234987',
      price: 15000,
      status: 'Withdraw',
      date: DateTime.now().subtract(Duration(days: 2)),
      orderType: 'Withdraw',
    ),
    OrderHistory(
      id: 'Opay-234987',
      price: 500,
      status: 'Withdraw',
      date: DateTime.now().subtract(Duration(days: 2)),
      orderType: 'Withdraw',
    ),
    OrderHistory(
      id: 'A34F4U-87',
      price: 34500,
      status: 'Add',
      date: DateTime.now().subtract(Duration(days: 5)),
      orderType: 'Order ID',
    ),
    OrderHistory(
      id: 'G4U-33243R7',
      price: 20000,
      status: 'Add',
      date: DateTime.now().subtract(Duration(days: 480)),
      orderType: 'Order ID',
    ),
    // Add more OrderHistory objects as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 40.h,
          left: 16.w,
          right: 16.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  // Spacer(flex: 2,),
                  Image.asset(
                    'assets/images/logo_single.png',
                    width: 130,
                  ),
                  Icon(
                    Icons.info_outline,
                    color: colorGray,
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Container(
                width: 120,
                // height: 24,
                child: DropdownButtonFormField(
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  style: GoogleFonts.nunito(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: colorsBlack,
                  ),
                  items: [
                    'January',
                    'February',
                    'March',
                    'April',
                    'May',
                    'June',
                    'July',
                    'August',
                    'September',
                    'October',
                    'November',
                    'December',
                  ]
                      .map((value) => DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          ))
                      .toList(),
                  value: dateSelection,
                  onChanged: (String? newValue) {
                    setState(() {
                      dateSelection = newValue!;
                      // genderValue = selectedGender == 'Male' ? 1 : 2;
                    });
                    print(dateSelection);
                  },
                  decoration: InputDecoration(
                    // labelText: 'Select Date',
                    // labelStyle: GoogleFonts.nunito(color: colorGray),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xffE0E0E0),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: colorLightGray, width: 2.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE0E0E0),
                      ),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0), // Change color to yellow
                    ),
                    // enabledBorder: Color(value),
                    // prefixIcon: prefixIcon,
                    hintText: 'Select Date',
                    errorStyle: GoogleFonts.nunito(
                        fontSize: 12.sp, fontWeight: FontWeight.w600),
                    hintStyle: GoogleFonts.nunito(color: textGray),
                    constraints: BoxConstraints(
                      minWidth: 24.0, // Minimum width for the prefix icon
                      minHeight: 24.0, // Minimum height for the prefix icon
                    ),
                    // errorText: errorText,
                    // suffixIcon: icon,
                    filled: true,
                    fillColor: colorLightGray,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 14.sp, vertical: 0.sp),
                  ),
                  // maxLines: 1,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, withdraw);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/bgdesign.png'), // Replace with your image asset path
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Available Balance',
                              style: GoogleFonts.nunito(
                                color: colorWhite,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 14.sp),
                            Text(
                              nairaFormaet.format(8350).toString(),
                              style: GoogleFonts.nunito(
                                color: colorWhite,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 14.sp),
                            Text(
                              '9 completed deliveries',
                              style: GoogleFonts.nunito(
                                color: colorWhite,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 2,
                          height: 99,
                          decoration: BoxDecoration(color: colorWhite),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Deliveries',
                              style: GoogleFonts.nunito(
                                color: colorWhite,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 14.sp),
                            Text(
                              '78',
                              style: GoogleFonts.nunito(
                                color: colorWhite,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 14.sp),
                            Row(
                              children: [
                                Icon(
                                  Icons.keyboard_arrow_up_outlined,
                                  color: Color(0xff3BB54A),
                                ),
                                Text(
                                  '8%  from last month',
                                  style: GoogleFonts.nunito(
                                    color: colorWhite,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //  Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 1.h),
                  //   child: Image.asset(
                  //     'assets/images/bgdesign.png',
                  //     // height: 80.h,
                  //   ),
                  // ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Row(
                children: [
                  Text(
                    'Transactions history',
                    style: GoogleFonts.nunito(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: colorsBlack,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 12.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    orderHistories.isEmpty
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Image.asset(
                              //   'assets/images/logo.png',
                              //   height: 200.h,
                              // ),
                              Container(
                                height: 400.h,
                                child: Center(
                                  child: Text(
                                    "You have no Transaction",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.nunito(
                                      color: colorsBlack,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: orderHistories.length,
                                  itemBuilder: (context, index) {
                                    print(orderHistories.length.toDouble());
                                    final order = orderHistories[index];
                                    String formattedDate =
                                        DateFormat('MMMM d').format(order.date);
                                    print(order);
                                    return GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) => DetailsView(
                                        //             id: order['id'],
                                        //             status: order['status'],
                                        //             pickup: order['pickup'],
                                        //             dropoff: order['dropoff'],
                                        //           )),
                                        // );
                                      },
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 6.h),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xffFCFCFC),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          padding: EdgeInsets.all(12.h),
                                          child: ListTile(
                                            minLeadingWidth: 0,
                                            contentPadding: EdgeInsets.zero,
                                            title: Text(
                                              order.orderType,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                            subtitle: Row(
                                              children: [
                                                Text(
                                                  order.id,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16.sp,
                                                    color: colorGray,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            trailing: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  order.status == 'Withdraw'
                                                      ? '- NGN ${order.price.toString()}'
                                                      : '+ NGN ${order.price.toString()}',
                                                  style: GoogleFonts.nunito(
                                                    color: order.status ==
                                                            'Withdraw'
                                                        ? colorPrimary
                                                        : Color(0xff3BB54A),
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  formattedDate,
                                                  style: GoogleFonts.nunito(
                                                    color: colorGray,
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //  Padding(
                                      //   padding:
                                      //       EdgeInsets.symmetric(vertical: 8.h),
                                      //   child: Container(
                                      //     padding: EdgeInsets.all(12.sp),
                                      //     child: Column(
                                      //       children: [
                                      //         Row(
                                      //           mainAxisAlignment:
                                      //               MainAxisAlignment
                                      //                   .spaceBetween,
                                      //           children: [
                                      //             Column(
                                      //               crossAxisAlignment:
                                      //                   CrossAxisAlignment
                                      //                       .start,
                                      //               children: [
                                      //                 Text(
                                      //                   'Order ID',
                                      //                   style:
                                      //                       GoogleFonts.nunito(
                                      //                     fontSize: 14.sp,
                                      //                     fontWeight:
                                      //                         FontWeight.w400,
                                      //                     color: colorGray,
                                      //                   ),
                                      //                 ),
                                      //                 Text(
                                      //                   order.id.toString(),
                                      //                   style:
                                      //                       GoogleFonts.nunito(
                                      //                     fontSize: 14.sp,
                                      //                     fontWeight:
                                      //                         FontWeight.w400,
                                      //                     color: colorsBlack,
                                      //                   ),
                                      //                 ),
                                      //               ],
                                      //             ),
                                      //             Container(
                                      //               padding:
                                      //                   EdgeInsets.symmetric(
                                      //                       horizontal: 8,
                                      //                       vertical: 4),
                                      //               decoration: BoxDecoration(
                                      //                 color: order.status ==
                                      //                         'Picked Up'
                                      //                     ? Color(0xffFCC60C)
                                      //                     : order.status ==
                                      //                             'Accepted'
                                      //                         ? colorLightGray
                                      //                         : order.status ==
                                      //                                 'Completed'
                                      //                             ? Color(
                                      //                                 0xff3BB54A)
                                      //                             : colorPrimary,
                                      //                 borderRadius:
                                      //                     BorderRadius.circular(
                                      //                         4.sp),
                                      //               ),
                                      //               child: Text(
                                      //                 order.status ==
                                      //                         'Picked Up'
                                      //                     ? 'Picked Up'
                                      //                     : order.status ==
                                      //                             'Accepted'
                                      //                         ? 'Accepted'
                                      //                         : order.status ==
                                      //                                 'Completed'
                                      //                             ? 'Completed'
                                      //                             : 'Cancelled',
                                      //                 style: GoogleFonts.nunito(
                                      //                   fontSize: 14.sp,
                                      //                   fontWeight:
                                      //                       FontWeight.w400,
                                      //                   color:
                                      //                       order.status ==
                                      //                               'Accepted'
                                      //                           ? colorsBlack
                                      //                           : colorWhite,
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //           ],
                                      //         ),
                                      //         Padding(
                                      //           padding: EdgeInsets.symmetric(
                                      //               vertical: 16.h),
                                      //           child: Container(
                                      //             width: MediaQuery.of(context)
                                      //                 .size
                                      //                 .width,
                                      //             height: 2,
                                      //             color: colorLightGray,
                                      //           ),
                                      //         ),
                                      //         Row(
                                      //           children: [
                                      //             Column(
                                      //               // mainAxisAlignment: MainAxisAlignment.center,
                                      //               crossAxisAlignment:
                                      //                   CrossAxisAlignment
                                      //                       .start,
                                      //               children: [
                                      //                 Row(
                                      //                   mainAxisAlignment:
                                      //                       MainAxisAlignment
                                      //                           .spaceBetween,
                                      //                   crossAxisAlignment:
                                      //                       CrossAxisAlignment
                                      //                           .start,
                                      //                   children: [
                                      //                     Image.asset(
                                      //                       'assets/icons/user.png',
                                      //                       width: 20,
                                      //                     ),
                                      //                     SizedBox(
                                      //                       width: 14,
                                      //                     ),
                                      //                     Column(
                                      //                       crossAxisAlignment:
                                      //                           CrossAxisAlignment
                                      //                               .start,
                                      //                       children: [
                                      //                         Text(
                                      //                           'Pickup',
                                      //                           style:
                                      //                               GoogleFonts
                                      //                                   .nunito(
                                      //                             fontSize:
                                      //                                 14.sp,
                                      //                             fontWeight:
                                      //                                 FontWeight
                                      //                                     .w400,
                                      //                             color:
                                      //                                 colorGray,
                                      //                           ),
                                      //                         ),
                                      //                         Text(
                                      //                           order['pickup'],
                                      //                           style:
                                      //                               GoogleFonts
                                      //                                   .nunito(
                                      //                             fontSize:
                                      //                                 14.sp,
                                      //                             fontWeight:
                                      //                                 FontWeight
                                      //                                     .w400,
                                      //                             color:
                                      //                                 colorsBlack,
                                      //                           ),
                                      //                         ),
                                      //                       ],
                                      //                     ),
                                      //                   ],
                                      //                 ),
                                      //                 SizedBox(
                                      //                   height: 3,
                                      //                 ),
                                      //                 Padding(
                                      //                   padding:
                                      //                       EdgeInsets.only(
                                      //                           left: 10.sp),
                                      //                   child: Column(
                                      //                     children: [
                                      //                       for (var i = 0;
                                      //                           i < 4;
                                      //                           i++)
                                      //                         Padding(
                                      //                           padding:
                                      //                               const EdgeInsets
                                      //                                   .symmetric(
                                      //                                   vertical:
                                      //                                       2),
                                      //                           child:
                                      //                               Container(
                                      //                             width: 2,
                                      //                             height: 5,
                                      //                             decoration:
                                      //                                 BoxDecoration(
                                      //                               color:
                                      //                                   colorGray,
                                      //                             ),
                                      //                           ),
                                      //                         )
                                      //                     ],
                                      //                   ),
                                      //                 ),
                                      //                 SizedBox(
                                      //                   height: 3,
                                      //                 ),
                                      //                 Row(
                                      //                   children: [
                                      //                     Image.asset(
                                      //                       'assets/icons/order.png',
                                      //                       width: 20,
                                      //                       color: colorPrimary,
                                      //                     ),
                                      //                     SizedBox(
                                      //                       width: 14,
                                      //                     ),
                                      //                     Column(
                                      //                       crossAxisAlignment:
                                      //                           CrossAxisAlignment
                                      //                               .start,
                                      //                       children: [
                                      //                         Text(
                                      //                           'Dropoff',
                                      //                           style:
                                      //                               GoogleFonts
                                      //                                   .nunito(
                                      //                             fontSize:
                                      //                                 14.sp,
                                      //                             fontWeight:
                                      //                                 FontWeight
                                      //                                     .w400,
                                      //                             color:
                                      //                                 colorGray,
                                      //                           ),
                                      //                         ),
                                      //                         Text(
                                      //                           order[
                                      //                               'dropoff'],
                                      //                           style:
                                      //                               GoogleFonts
                                      //                                   .nunito(
                                      //                             fontSize:
                                      //                                 14.sp,
                                      //                             fontWeight:
                                      //                                 FontWeight
                                      //                                     .w400,
                                      //                             color:
                                      //                                 colorsBlack,
                                      //                           ),
                                      //                         ),
                                      //                       ],
                                      //                     ),
                                      //                   ],
                                      //                 ),
                                      //               ],
                                      //             ),
                                      //           ],
                                      //         ),
                                      //       ],
                                      //     ),
                                      //   ),
                                      // ),
                                    );
                                  }),
                            ],
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
