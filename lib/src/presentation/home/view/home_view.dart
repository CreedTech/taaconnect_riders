import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:taaconnect_riders/src/core/core.dart';
import 'package:taaconnect_riders/src/presentation/details/view/details.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool statusActive = true;
  String? dateSelection;
  var nairaFormaet = NumberFormat.simpleCurrency(name: 'NGN');
  List orders = [
    {
      "pickup": "No 4 Garki Street",
      "status": "Picked Up",
      "id": "DJFJ-23929",
      "dropoff": "No 20, Estate Road",
    },
    {
      "pickup": "No 8 Downtown Avenue",
      "status": "Completed",
      "id": "ABC-12345",
      "dropoff": "Apartment 15, Sky Towers",
    },
    {
      "pickup": "No 15 Park Lane",
      "status": "Accepted",
      "id": "XYZ-98765",
      "dropoff": "Unit 7, Green Residency",
    },
    {
      "pickup": "No 30 Riverside Drive",
      "status": "Cancelled",
      "id": "LMN-56789",
      "dropoff": "Villa 12, Blue Estates",
    },
    {
      "pickup": "No 12 Sunset Boulevard",
      "status": "Picked Up",
      "id": "PQR-45678",
      "dropoff": "Suite 3, Golden Towers",
    },
    {
      "pickup": "No 12 Sunset Boulevard",
      "status": "Picked Up",
      "id": "PQR-45678",
      "dropoff": "Suite 3, Golden Towers",
    },
    {
      "pickup": "No 12 Sunset Boulevard",
      "status": "Picked Up",
      "id": "PQR-45678",
      "dropoff": "Suite 3, Golden Towers",
    },
    {
      "pickup": "No 12 Sunset Boulevarddds",
      "status": "Picked Up",
      "id": "PQR-45678",
      "dropoff": "Suite 3, Golden Towers",
    },
    {
      "pickup": "No 12 Sunset Boulevard",
      "status": "Picked Up",
      "id": "PQR-45678",
      "dropoff": "Suite 3, Golden Towers",
    },
    {
      "pickup": "No 12 Sunset Boulevard",
      "status": "Picked Up",
      "id": "PQR-45678",
      "dropoff": "Suite 3, Golden Towers",
    },
    {
      "pickup": "No 12 Sunset Boulevard",
      "status": "Picked Up",
      "id": "PQR-45678",
      "dropoff": "Suite 3, Golden Towers",
    },
    {
      "pickup": "No 12 Sunset Boulevard",
      "status": "Picked Up",
      "id": "PQR-45678",
      "dropoff": "Suite 3, Golden Towers",
    },
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
                  Row(
                    children: [
                      Row(
                        children: [
                          Switch(
                            activeColor: colorWhite,
                            activeTrackColor: Color(0xff3BB54A),
                            value: statusActive,
                            onChanged: (val) {
                              setState(() {
                                statusActive = val;
                              });
                            },
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: statusActive
                                  ? Color(0xff3BB54A).withOpacity(0.1)
                                  : colorLightGray,
                              borderRadius: BorderRadius.circular(62.5.sp),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: statusActive
                                        ? Color(0xff3BB54A)
                                        : colorGray,
                                    borderRadius:
                                        BorderRadius.circular(62.5.sp),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  statusActive ? 'Active' : 'Offline',
                                  style: GoogleFonts.nunito(
                                    color: statusActive
                                        ? Color(0xff3BB54A)
                                        : colorGray,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/logo_single.png',
                        width: 130,
                      ),
                    ],
                  ),
                  // Icon(
                  //   Icons.settings_outlined,
                  // ),
                ],
              ),
              SizedBox(
                height: 47.h,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      // color: Color(0xff3BB54A).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(100.sp),
                    ),
                    child: Image.asset(
                      'assets/images/driver.png',
                      width: 40,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Welcome Yinka,',
                    style: GoogleFonts.nunito(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Container(
                width: 130.w,
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
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0.sp), // Change color to yellow
                    ),
                    // enabledBorder: Color(value),
                    // prefixIcon: prefixIcon,
                    hintText: 'Select Date',
                    errorStyle: GoogleFonts.nunito(
                        fontSize: 12.sp, fontWeight: FontWeight.w600),
                    hintStyle: GoogleFonts.nunito(color: textGray),
                    constraints: BoxConstraints(
                      minWidth: 24.0.w, // Minimum width for the prefix icon
                      minHeight: 24.0.h, // Minimum height for the prefix icon
                    ),
                    // errorText: errorText,
                    // suffixIcon: icon,
                    filled: true,
                    fillColor: colorLightGray,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 14.w, vertical: 0.h),
                  ),
                  // maxLines: 1,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
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
                        width: 2.w,
                        height: 99.h,
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
              SizedBox(
                height: 30.h,
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
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today',
                      style: GoogleFonts.nunito(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: colorsBlack,
                      ),
                    ),
                    orders.isEmpty
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Image.asset(
                              //   'assets/images/logo.png',
                              //   height: 200.h,
                              // ),
                              Container(
                                height: 200.h,
                                child: Center(
                                  child: Text(
                                    "You have no delivery order",
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
                                  itemCount: orders.length,
                                  itemBuilder: (context, index) {
                                    final order = orders[index];
                                    print(order);
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => DetailsView(
                                                    id: order['id'],
                                                    status: order['status'],
                                                    pickup: order['pickup'],
                                                    dropoff: order['dropoff'],
                                                  )),
                                        );
                                      },
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8.h),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xffFCFCFC),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          padding: EdgeInsets.all(12.sp),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Order ID',
                                                        style:
                                                            GoogleFonts.nunito(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: colorGray,
                                                        ),
                                                      ),
                                                      Text(
                                                        order['id'],
                                                        style:
                                                            GoogleFonts.nunito(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: colorsBlack,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 8,
                                                            vertical: 4),
                                                    decoration: BoxDecoration(
                                                      color: order['status'] ==
                                                              'Picked Up'
                                                          ? Color(0xffFCC60C)
                                                          : order['status'] ==
                                                                  'Accepted'
                                                              ? colorLightGray
                                                              : order['status'] ==
                                                                      'Completed'
                                                                  ? Color(
                                                                      0xff3BB54A)
                                                                  : colorPrimary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.sp),
                                                    ),
                                                    child: Text(
                                                      order['status'] ==
                                                              'Picked Up'
                                                          ? 'Picked Up'
                                                          : order['status'] ==
                                                                  'Accepted'
                                                              ? 'Accepted'
                                                              : order['status'] ==
                                                                      'Completed'
                                                                  ? 'Completed'
                                                                  : 'Cancelled',
                                                      style: GoogleFonts.nunito(
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            order['status'] ==
                                                                    'Accepted'
                                                                ? colorsBlack
                                                                : colorWhite,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 16.h),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 2,
                                                  color: colorLightGray,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    // mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Image.asset(
                                                            'assets/icons/user.png',
                                                            width: 20,
                                                          ),
                                                          SizedBox(
                                                            width: 14,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Pickup',
                                                                style:
                                                                    GoogleFonts
                                                                        .nunito(
                                                                  fontSize:
                                                                      14.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color:
                                                                      colorGray,
                                                                ),
                                                              ),
                                                              Text(
                                                                order['pickup'],
                                                                style:
                                                                    GoogleFonts
                                                                        .nunito(
                                                                  fontSize:
                                                                      14.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color:
                                                                      colorsBlack,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Column(
                                                          children: [
                                                            for (var i = 0;
                                                                i < 4;
                                                                i++)
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .symmetric(
                                                                        vertical:
                                                                            2),
                                                                child:
                                                                    Container(
                                                                  width: 2,
                                                                  height: 5,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color:
                                                                        colorGray,
                                                                  ),
                                                                ),
                                                              )
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                            'assets/icons/order.png',
                                                            width: 20,
                                                            color: colorPrimary,
                                                          ),
                                                          SizedBox(
                                                            width: 14,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Dropoff',
                                                                style:
                                                                    GoogleFonts
                                                                        .nunito(
                                                                  fontSize:
                                                                      14.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color:
                                                                      colorGray,
                                                                ),
                                                              ),
                                                              Text(
                                                                order[
                                                                    'dropoff'],
                                                                style:
                                                                    GoogleFonts
                                                                        .nunito(
                                                                  fontSize:
                                                                      14.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color:
                                                                      colorsBlack,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ],
                          ),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(vertical: 8.h),
                    //   child: Container(
                    //     padding: EdgeInsets.all(12.sp),
                    //     child: Column(
                    //       children: [
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Text(
                    //                   'Order ID',
                    //                   style: GoogleFonts.nunito(
                    //                     fontSize: 14.sp,
                    //                     fontWeight: FontWeight.w400,
                    //                     color: colorGray,
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   'D4U-234987',
                    //                   style: GoogleFonts.nunito(
                    //                     fontSize: 14.sp,
                    //                     fontWeight: FontWeight.w400,
                    //                     color: colorsBlack,
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //             Container(
                    //               padding: EdgeInsets.symmetric(
                    //                   horizontal: 8, vertical: 4),
                    //               decoration: BoxDecoration(
                    //                 color: Color(0xffFCC60C),
                    //                 borderRadius: BorderRadius.circular(4.sp),
                    //               ),
                    //               child: Text(
                    //                 'Picked Up',
                    //                 style: GoogleFonts.nunito(
                    //                   fontSize: 14.sp,
                    //                   fontWeight: FontWeight.w400,
                    //                   color: colorWhite,
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         Padding(
                    //           padding: EdgeInsets.symmetric(vertical: 16.h),
                    //           child: Container(
                    //             width: MediaQuery.of(context).size.width,
                    //             height: 2,
                    //             color: colorLightGray,
                    //           ),
                    //         ),
                    //         Row(
                    //           children: [
                    //             Column(
                    //               // mainAxisAlignment: MainAxisAlignment.center,
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
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
                    //                           CrossAxisAlignment.start,
                    //                       children: [
                    //                         Text(
                    //                           'Pickup',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorGray,
                    //                           ),
                    //                         ),
                    //                         Text(
                    //                           'No 4, Garki Abuja',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorsBlack,
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
                    //                   padding: EdgeInsets.only(left: 10.sp),
                    //                   child: Column(
                    //                     children: [
                    //                       for (var i = 0; i < 4; i++)
                    //                         Padding(
                    //                           padding:
                    //                               const EdgeInsets.symmetric(
                    //                                   vertical: 2),
                    //                           child: Container(
                    //                             width: 2,
                    //                             height: 5,
                    //                             decoration: BoxDecoration(
                    //                               color: colorGray,
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
                    //                           CrossAxisAlignment.start,
                    //                       children: [
                    //                         Text(
                    //                           'Dropoff',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorGray,
                    //                           ),
                    //                         ),
                    //                         Text(
                    //                           'Mararba Abuja',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorsBlack,
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

                    // Padding(
                    //   padding: EdgeInsets.symmetric(vertical: 8.h),
                    //   child: Container(
                    //     padding: EdgeInsets.all(12.sp),
                    //     child: Column(
                    //       children: [
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Text(
                    //                   'Order ID',
                    //                   style: GoogleFonts.nunito(
                    //                     fontSize: 14.sp,
                    //                     fontWeight: FontWeight.w400,
                    //                     color: colorGray,
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   'D4U-234987',
                    //                   style: GoogleFonts.nunito(
                    //                     fontSize: 14.sp,
                    //                     fontWeight: FontWeight.w400,
                    //                     color: colorsBlack,
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //             Container(
                    //               padding: EdgeInsets.symmetric(
                    //                   horizontal: 8, vertical: 4),
                    //               decoration: BoxDecoration(
                    //                 color: Color(0xff3BB54A),
                    //                 borderRadius: BorderRadius.circular(4.sp),
                    //               ),
                    //               child: Text(
                    //                 'Completed',
                    //                 style: GoogleFonts.nunito(
                    //                   fontSize: 14.sp,
                    //                   fontWeight: FontWeight.w400,
                    //                   color: colorWhite,
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         Padding(
                    //           padding: EdgeInsets.symmetric(vertical: 16.h),
                    //           child: Container(
                    //             width: MediaQuery.of(context).size.width,
                    //             height: 2,
                    //             color: colorLightGray,
                    //           ),
                    //         ),
                    //         Row(
                    //           children: [
                    //             Column(
                    //               // mainAxisAlignment: MainAxisAlignment.center,
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
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
                    //                           CrossAxisAlignment.start,
                    //                       children: [
                    //                         Text(
                    //                           'Pickup',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorGray,
                    //                           ),
                    //                         ),
                    //                         Text(
                    //                           'No 4, Garki Abuja',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorsBlack,
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
                    //                   padding: EdgeInsets.only(left: 10.sp),
                    //                   child: Column(
                    //                     children: [
                    //                       for (var i = 0; i < 4; i++)
                    //                         Padding(
                    //                           padding:
                    //                               const EdgeInsets.symmetric(
                    //                                   vertical: 2),
                    //                           child: Container(
                    //                             width: 2,
                    //                             height: 5,
                    //                             decoration: BoxDecoration(
                    //                               color: colorGray,
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
                    //                           CrossAxisAlignment.start,
                    //                       children: [
                    //                         Text(
                    //                           'Dropoff',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorGray,
                    //                           ),
                    //                         ),
                    //                         Text(
                    //                           'Mararba Abuja',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorsBlack,
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
                    // Padding(
                    //   padding: EdgeInsets.symmetric(vertical: 8.h),
                    //   child: Container(
                    //     padding: EdgeInsets.all(12.sp),
                    //     child: Column(
                    //       children: [
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Text(
                    //                   'Order ID',
                    //                   style: GoogleFonts.nunito(
                    //                     fontSize: 14.sp,
                    //                     fontWeight: FontWeight.w400,
                    //                     color: colorGray,
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   'D4U-234987',
                    //                   style: GoogleFonts.nunito(
                    //                     fontSize: 14.sp,
                    //                     fontWeight: FontWeight.w400,
                    //                     color: colorsBlack,
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //             Container(
                    //               padding: EdgeInsets.symmetric(
                    //                   horizontal: 8, vertical: 4),
                    //               decoration: BoxDecoration(
                    //                 color: colorPrimary,
                    //                 borderRadius: BorderRadius.circular(4.sp),
                    //               ),
                    //               child: Text(
                    //                 'Cancelled',
                    //                 style: GoogleFonts.nunito(
                    //                   fontSize: 14.sp,
                    //                   fontWeight: FontWeight.w400,
                    //                   color: colorWhite,
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         Padding(
                    //           padding: EdgeInsets.symmetric(vertical: 16.h),
                    //           child: Container(
                    //             width: MediaQuery.of(context).size.width,
                    //             height: 2,
                    //             color: colorLightGray,
                    //           ),
                    //         ),
                    //         Row(
                    //           children: [
                    //             Column(
                    //               // mainAxisAlignment: MainAxisAlignment.center,
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
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
                    //                           CrossAxisAlignment.start,
                    //                       children: [
                    //                         Text(
                    //                           'Pickup',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorGray,
                    //                           ),
                    //                         ),
                    //                         Text(
                    //                           'No 4, Garki Abuja',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorsBlack,
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
                    //                   padding: EdgeInsets.only(left: 10.sp),
                    //                   child: Column(
                    //                     children: [
                    //                       for (var i = 0; i < 4; i++)
                    //                         Padding(
                    //                           padding:
                    //                               const EdgeInsets.symmetric(
                    //                                   vertical: 2),
                    //                           child: Container(
                    //                             width: 2,
                    //                             height: 5,
                    //                             decoration: BoxDecoration(
                    //                               color: colorGray,
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
                    //                           CrossAxisAlignment.start,
                    //                       children: [
                    //                         Text(
                    //                           'Dropoff',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorGray,
                    //                           ),
                    //                         ),
                    //                         Text(
                    //                           'Mararba Abuja',
                    //                           style: GoogleFonts.nunito(
                    //                             fontSize: 14.sp,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: colorsBlack,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // appBar: AppBar(
      //   // titleSpacing: 20,
      //   elevation: 0,
      //   title: Column(
      //     children: [
      //       Image.asset(
      //         'assets/images/logo_single.png',
      //         width: 70.w,
      //       ),
      //     ],
      //   ),
      //   centerTitle: true,
      //   backgroundColor: colorWhite,
      //   actions: [
      //     ElevatedButton(
      //       onPressed: () {
      //         Navigator.of(context).pushNamed(notifications);
      //       },
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Guide.isDark(context) ? colorsBlack : colorWhite,
      //         elevation: 0,
      //       ),
      //       child: Icon(Icons.notifications_none_outlined,
      //           weight: 24.h,
      //           color: Guide.isDark(context) ? darkThemeText : colorsBlack),
      //     ),
      //   ],
      // ),
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: SingleChildScrollView(
      //         physics: BouncingScrollPhysics(),
      //         child: Column(
      //           children: [
      //             Padding(
      //               padding: EdgeInsets.symmetric(horizontal: 15.w),
      //               child: Column(
      //                 children: [
      //                   Text('Select Terminal')
      //                       .normalSized(14.sp)
      //                       .colors(colorGray),
      //                   SizedBox(
      //                     height: 8.h,
      //                   ),
      //                   GestureDetector(
      //                     onTap: () {},
      //                     child: Row(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Image.asset(
      //                           'assets/icons/pointer.png',
      //                           width: 16.w,
      //                         ),
      //                         SizedBox(
      //                           width: 3.w,
      //                         ),
      //                         Text('Abuja, NIGERIA'),
      //                         SizedBox(
      //                           width: 3.w,
      //                         ),
      //                         Image.asset(
      //                           'assets/icons/dropdown.png',
      //                           width: 16.w,
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     height: 32.h,
      //                   ),
      //                   Container(
      //                     padding: EdgeInsets.symmetric(
      //                         horizontal: 15.w, vertical: 20.h),
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.all(
      //                         Radius.circular(8.sp),
      //                       ),
      //                       color: colorPrimary,
      //                     ),
      //                     child: Column(
      //                       children: [
      //                         Text('Track your package')
      //                             .mediumSized(20.sp)
      //                             .colors(colorWhite),
      //                         SizedBox(
      //                           height: 8.h,
      //                         ),
      //                         Text(
      //                           'Please enter your package tracking number gotten from your checkout receipt',
      //                           textAlign: TextAlign.center,
      //                         ).normalSized(14.sp).colors(colorWhite),
      //                         SizedBox(
      //                           height: 40.h,
      //                         ),
      //                         GestureDetector(
      //                           onTap: () {
      //                             Navigator.push(
      //                               context,
      //                               MaterialPageRoute(
      //                                   builder: (context) => SearchView()),
      //                             );
      //                           },
      //                           child: TextFormField(
      //                             readOnly: true, // Set readOnly to true
      //                             decoration: InputDecoration(
      //                               fillColor: colorWhite,
      //                               border: OutlineInputBorder(
      //                                 borderRadius: BorderRadius.all(
      //                                   Radius.circular(4.sp),
      //                                 ),
      //                                 borderSide: const BorderSide(
      //                                   color: Color(0xffA4A5A6),
      //                                 ),
      //                               ),
      //                               hintText:
      //                                   'Enter your package tracking number',
      //                               hintStyle: GoogleFonts.nunito(
      //                                 fontSize: 14.sp,
      //                                 fontWeight: FontWeight.normal,
      //                               ),
      //                               prefixIcon: Icon(Icons.search),
      //                               suffixIcon: Image.asset(
      //                                 'assets/icons/search_box.png',
      //                                 scale: 3.5,
      //                               ),
      //                               filled: true,
      //                               contentPadding: EdgeInsets.all(14.sp),
      //                             ),
      //                             onTap: () {
      //                               Navigator.push(
      //                                 context,
      //                                 MaterialPageRoute(
      //                                     builder: (context) => SearchView()),
      //                               );
      //                             },
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     height: 40.h,
      //                   ),
      //                   SingleChildScrollView(
      //                     physics: BouncingScrollPhysics(),
      //                     child: Column(children: [
      //                       Row(
      //                         children: [
      //                           Text(
      //                             'Recent delivery',
      //                             textAlign: TextAlign.left,
      //                             style: TextStyle(
      //                                 fontSize: 16.sp,
      //                                 fontWeight: FontWeight.bold),
      //                           ),
      //                         ],
      //                       ),
      //                        SizedBox(
      //                     height: 16.h,
      //                   ),
      //                       // Spacer(),
      //                       deliveries.isEmpty
      //                           ? Column(
      //                               mainAxisAlignment: MainAxisAlignment.center,
      //                               crossAxisAlignment:
      //                                   CrossAxisAlignment.center,
      //                               children: [
      //                                 // Image.asset(
      //                                 //   'assets/images/logo.png',
      //                                 //   height: 200.h,
      //                                 // ),
      //                                 Container(
      //                                   height: 400.h,
      //                                   child: Center(
      //                                     child: Text(
      //                                       "You have no delivery order",
      //                                       textAlign: TextAlign.center,
      //                                       style: GoogleFonts.nunito(
      //                                         color: colorsBlack,
      //                                         fontSize: 18.sp,
      //                                         fontWeight: FontWeight.w700,
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 )
      //                               ],
      //                             )
      //                           : Container(
      //                               height: 470.h,
      //                               child: ListView.builder(
      //                                 itemCount: deliveries.length,
      //                                 itemBuilder: (context, index) {
      //                                   final delivery = deliveries[index];
      //                                   return GestureDetector(
      //                                     onTap: () {
      //                                       Navigator.pushNamed(
      //                                           context, details);
      //                                     },
      //                                     child: Container(
      //                                       height: 100,
      //                                       margin:
      //                                           const EdgeInsets.only(top: 8),
      //                                       decoration: BoxDecoration(
      //                                         borderRadius:
      //                                             BorderRadius.circular(10),
      //                                         color: Color(0xFFFCFCFC),
      //                                         // border: Border.all(
      //                                         //   color: const Color(0xFFE1E1E1),
      //                                         // ),
      //                                         boxShadow: [
      //                                           BoxShadow(
      //                                             color: Color(0xFFFCFCFC)
      //                                                 .withOpacity(0.5),
      //                                             spreadRadius: 0,
      //                                             blurRadius: 1,
      //                                           ),
      //                                         ],
      //                                       ),
      //                                       child: Padding(
      //                                         padding:
      //                                             const EdgeInsets.symmetric(
      //                                           horizontal: 10,
      //                                           vertical: 10,
      //                                         ),
      //                                         child: Row(
      //                                           mainAxisAlignment:
      //                                               MainAxisAlignment
      //                                                   .spaceBetween,
      //                                           children: [
      //                                             Column(
      //                                               mainAxisAlignment:
      //                                                   MainAxisAlignment
      //                                                       .spaceAround,
      //                                               crossAxisAlignment:
      //                                                   CrossAxisAlignment
      //                                                       .start,
      //                                               children: [
      //                                                 Text(
      //                                                   delivery['description'],
      //                                                   style: TextStyle(
      //                                                     color: colorsBlack,
      //                                                     fontSize: 16.sp,
      //                                                     fontWeight:
      //                                                         FontWeight.w600,
      //                                                   ),
      //                                                 ),
      //                                                 Align(
      //                                                   alignment:
      //                                                       Alignment.center,
      //                                                   child: Row(
      //                                                     mainAxisAlignment:
      //                                                         MainAxisAlignment
      //                                                             .spaceAround,
      //                                                     crossAxisAlignment:
      //                                                         CrossAxisAlignment
      //                                                             .center,
      //                                                     children: [
      //                                                       Image.asset(
      //                                                         delivery['status'] ==
      //                                                                 'Pending'
      //                                                             ? 'assets/icons/Processing.png'
      //                                                             : delivery['status'] ==
      //                                                                     'Delivered'
      //                                                                 ? 'assets/icons/paid.png'
      //                                                                 : delivery['status'] ==
      //                                                                         'Cancelled'
      //                                                                     ? 'assets/icons/Cancelled.png'
      //                                                                     : 'assets/icons/Processing.png',
      //                                                         width: 20.w,
      //                                                         alignment:
      //                                                             Alignment
      //                                                                 .center,
      //                                                       ),
      //                                                       SizedBox(
      //                                                         width: 5.w,
      //                                                       ),
      //                                                       Text(
      //                                                         delivery['status'] ==
      //                                                                 'Pending'
      //                                                             ? 'Waiting for Order'
      //                                                             : delivery['status'] ==
      //                                                                     'Delivered'
      //                                                                 ? 'Payment on Delivery'
      //                                                                 : delivery['status'] ==
      //                                                                         'Cancelled'
      //                                                                     ? 'Order Cancelled'
      //                                                                     : 'Payment on Delivery',
      //                                                         textAlign:
      //                                                             TextAlign
      //                                                                 .center,
      //                                                         style: TextStyle(
      //                                                           fontSize: 14.sp,
      //                                                           fontWeight:
      //                                                               FontWeight
      //                                                                   .w400,
      //                                                         ),
      //                                                       )
      //                                                     ],
      //                                                   ),
      //                                                 ),
      //                                               ],
      //                                             ),
      //                                             Column(
      //                                               mainAxisAlignment:
      //                                                   MainAxisAlignment
      //                                                       .center,
      //                                               crossAxisAlignment:
      //                                                   CrossAxisAlignment.end,
      //                                               children: [
      //                                                 Text(
      //                                                   delivery['status'] ==
      //                                                           'Pending'
      //                                                       ? 'Waiting for Order'
      //                                                       : delivery['status'] ==
      //                                                               'Delivered'
      //                                                           ? 'Delivered'
      //                                                           : delivery['status'] ==
      //                                                                   'Cancelled'
      //                                                               ? 'Cancelled'
      //                                                               : 'In Transit',
      //                                                   style: TextStyle(
      //                                                     color: delivery['status'] ==
      //                                                             'Pending'
      //                                                         ? colorGray
      //                                                         : delivery['status'] ==
      //                                                                 'Delivered'
      //                                                             ? Color(
      //                                                                 0xff3BB54A)
      //                                                             : delivery['status'] ==
      //                                                                     'Cancelled'
      //                                                                 ? colorPrimary
      //                                                                 : Color(
      //                                                                     0xffFCC60C),
      //                                                     fontSize: 12.sp,
      //                                                     fontWeight:
      //                                                         FontWeight.w400,
      //                                                   ),
      //                                                 ),
      //                                               ],
      //                                             ),
      //                                           ],
      //                                         ),
      //                                       ),
      //                                     ),
      //                                   );

      //                                   // ListTile(
      //                                   //   title: Text(delivery['description']),
      //                                   //   subtitle: Text('${delivery['status']} - ${delivery['date']}'),
      //                                   //   leading: Image.asset(delivery['icon']),
      //                                   // )
      //                                 },
      //                               ),
      //                             ),
      //                     ]),
      //                   ),
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
