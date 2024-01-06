import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

class DetailsView extends StatefulWidget {
  final String id;
  final String status;
  final String pickup;
  final String dropoff;
  const DetailsView(
      {super.key,
      required this.id,
      required this.status,
      required this.pickup,
      required this.dropoff});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorWhite,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: colorsBlack,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                minLeadingWidth: 0,
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF6CFCF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.sp),
                    ),
                  ),
                  child: Image.asset('assets/images/parcel.png'),
                ),
                title: Text(
                  'Order ID',
                  style: GoogleFonts.nunito(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: colorGray,
                  ),
                ),
                subtitle: Text(
                  widget.id,
                  style: GoogleFonts.nunito(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: colorsBlack,
                  ),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: widget.status == 'Picked Up'
                        ? Color(0xffFCC60C)
                        : widget.status == 'Accepted'
                            ? colorLightGray
                            : widget.status == 'Completed'
                                ? Color(0xff3BB54A)
                                : colorPrimary,
                    borderRadius: BorderRadius.circular(4.sp),
                  ),
                  child: Text(
                    widget.status,
                    style: GoogleFonts.nunito(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: widget.status == 'Accepted'
                          ? colorsBlack
                          : colorWhite,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Customer awaiting pick up',
                style: GoogleFonts.nunito(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: colorsBlack,
                ),
              ),
              Text(
                "Head to the customer's location for the delivery package and call if you need directions.",
                style: GoogleFonts.nunito(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: colorGray,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 12.h),
                child: Text(
                  "Pickup Location",
                  style: GoogleFonts.nunito(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: colorsBlack,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 0.sp,
                ),
                child: DottedBorder(
                  color: colorGray,
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(8.sp),
                  dashPattern: [8, 8],
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    padding: EdgeInsets.all(14.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300.w,
                          child: Text(
                            widget.pickup,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: colorsBlack,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 12.h),
                child: Text(
                  "Delivery Location",
                  style: GoogleFonts.nunito(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: colorsBlack,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 0.sp,
                ),
                child: DottedBorder(
                  color: colorGray,
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(8.sp),
                  dashPattern: [8, 8],
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    padding: EdgeInsets.all(14.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300.w,
                          child: Text(
                            widget.dropoff,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: colorsBlack,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Taa Logistics',
                          style: GoogleFonts.nunito(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: colorsBlack,
                          ),
                        ),
                        Text(
                          'Sender',
                          style: GoogleFonts.nunito(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: colorGray,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10.sp),
                      decoration: BoxDecoration(
                        color: Color(0xff3BB54A).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(100.sp),
                      ),
                      child: Image.asset(
                        'assets/icons/phone_call.png',
                        width: 20.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Victoria Nwakama',
                          style: GoogleFonts.nunito(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: colorsBlack,
                          ),
                        ),
                        Text(
                          'Receiver',
                          style: GoogleFonts.nunito(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: colorGray,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10.sp),
                      decoration: BoxDecoration(
                        color: Color(0xff3BB54A).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(100.sp),
                      ),
                      child: Image.asset(
                        'assets/icons/phone_call.png',
                        width: 20.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(400.w, 50.h),
                    backgroundColor: colorPrimary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        88,
                      ),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AlertDialog.adaptive(
                                contentPadding:
                                    const EdgeInsets.fromLTRB(30, 10, 30, 20),
                                elevation: 0,
                                alignment: Alignment.bottomCenter,
                                insetPadding: const EdgeInsets.all(0),
                                scrollable: true,
                                title: null,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                ),
                                content: SizedBox(
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.h),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 15.h),
                                                child: Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Image.asset(
                                                    'assets/images/logo_single.png',
                                                    height: 72.h,
                                                  ),
                                                  // Text(
                                                  //   'Confirm Log Out',
                                                  //   textAlign: TextAlign.center,
                                                  //   style: GoogleFonts.nunito(
                                                  //     color: colorsBlack,
                                                  //     fontSize: 18.sp,
                                                  //     fontWeight:
                                                  //         FontWeight.w400,
                                                  //   ),
                                                  // ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10.h),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Change status to processing?',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.nunito(
                                                        color: colorsBlack,
                                                        fontSize: 18.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 16.h,
                                                        bottom: 32.h,
                                                      ),
                                                      child: Text(
                                                        "To update the delivery status to 'Processing,' please confirm that you have securely retrieved the package and enter the OTP sent to the admin",
                                                        // textAlign:
                                                        //     TextAlign.center,
                                                        style:
                                                            GoogleFonts.nunito(
                                                          height: 2,
                                                          color: colorsBlack,
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical:
                                                                      30.w),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: Text(
                                                              'Cancel',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .nunito(
                                                                color:
                                                                    colorPrimary,
                                                                fontSize: 18.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            minimumSize: Size(
                                                                150.w, 50.h),
                                                            backgroundColor:
                                                                colorPrimary,
                                                            elevation: 0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                88,
                                                              ),
                                                            ),
                                                          ),
                                                          onPressed: () async {
                                                            // await GlobalService
                                                            //     .sharedPreferencesManager
                                                            //     .logOut(
                                                            //         context);
                                                            Navigator.pushNamed(
                                                                context,
                                                                verification);
                                                          },
                                                          child: const Text(
                                                            'Continue',
                                                            textAlign: TextAlign
                                                                .center,
                                                          )
                                                              .normalSized(16)
                                                              .colors(
                                                                  colorWhite),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  child: Text(
                    widget.status == 'Accepted'
                        ? 'Confirm Arrival At PickUp'
                        : widget.status == 'Picked Up'
                            ? 'Confirm Arrival At Destination'
                            : 'Confirm Arrival',
                    textAlign: TextAlign.center,
                  ).normalSized(16).colors(colorWhite),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
