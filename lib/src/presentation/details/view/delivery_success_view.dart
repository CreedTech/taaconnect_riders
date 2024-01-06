import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taaconnect_riders/src/core/core.dart';

class DeliverySuccessView extends StatefulWidget {
  const DeliverySuccessView({super.key});

  @override
  State<DeliverySuccessView> createState() => _DeliverySuccessViewState();
}

class _DeliverySuccessViewState extends State<DeliverySuccessView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
          ),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo_single.png',
                      height: 70.h,
                    ),
                    Image.asset(
                      'assets/images/onboardingOne.png',
                      height: 170.h,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'N1,200',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          color: Color(0xff3BB54A),
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Collected cash from drop-off',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        color: colorsBlack,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 32.sp),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 32.h,
                                bottom: 30.h,
                              ),
                              child: Text(
                                'DELIVERY SUMMARY',
                                style: GoogleFonts.nunito(
                                  color: colorsBlack,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Pickup from:',
                                          style: GoogleFonts.nunito(
                                            color: colorGray,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Temi (08023257789)',
                                          style: GoogleFonts.nunito(
                                            color: colorsBlack,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Delivered to:',
                                          style: GoogleFonts.nunito(
                                            color: colorGray,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Micheal (08023257789)',
                                          style: GoogleFonts.nunito(
                                            color: colorsBlack,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Price:',
                                          style: GoogleFonts.nunito(
                                            color: colorGray,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'N2,700',
                                          style: GoogleFonts.nunito(
                                            color: Color(0xff3BB54A),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Delivery fee:',
                                          style: GoogleFonts.nunito(
                                            color: colorGray,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'N1,200',
                                          style: GoogleFonts.nunito(
                                            color: Color(0xff3BB54A),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 2,
                                alignment: Alignment.center,
                                height: 110.h,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(300.w, 50.h),
                                    backgroundColor: colorPrimary,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        88,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pushNamedAndRemoveUntil(
                                        home, (route) => false);
                                  },
                                  child: Text(
                                    'Complete Order',
                                    textAlign: TextAlign.center,
                                  ).normalSized(16).colors(colorWhite),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
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
