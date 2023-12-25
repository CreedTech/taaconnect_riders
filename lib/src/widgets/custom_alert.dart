import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../core/components/components.dart';
import '../core/helpers/helpers.dart';
// import 'package:lastmile/src/core/core.dart';



// Resend Email Verification Code
void resendVerification(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: null,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // content: Text('wderty'),
          content: SizedBox(
            height: 400,
            child: SingleChildScrollView(
                child: Column(
              children: [
                Lottie.asset(
                  'assets/images/onboardingOne.json',
                  width: 200,
                  height: 200,
                ),
                Text(
                  'Email Sent Sucessfully',
                  style: GoogleFonts.nunito(
                    color: colorPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  '🔒 Your request to reset your password has been received. Check your email for further instructions.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                      color: textGray,
                      fontSize: 15,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w800),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                    ),
                  ),
                )
              ],
            )),
          ),
        );
      });
}

void resetPasswordDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: null,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // content: Text('wderty'),
          content: SizedBox(
            height: 400,
            child: SingleChildScrollView(
                child: Column(
              children: [
                Lottie.asset(
                  'assets/images/onboardingOne.json',
                  width: 200,
                  height: 200,
                ),
                Text(
                  '🎉 Congratulations! 🎉',
                  style: GoogleFonts.nunito(
                    color: colorPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Your password has been successfully set, and your account is now secure.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                      color: textGray,
                      fontSize: 17,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w800),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      login,
                      (route) => false,
                    );
                    // if (resetPwdFormKey.currentState!.validate()) {
                    //   // authState.res
                    // }
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             const WelcomeBackScreen()));
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                    ),
                  ),
                )
              ],
            )),
          ),
        );
      });
}

// Alert for user delete Account
// void userDeleteAccount(BuildContext context) {
//   showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return AlertDialog.adaptive(
//           title: null,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           elevation: 0.0,
//           content: SizedBox(
//             height: 330,
//             child: Column(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Align(
//                     alignment: Alignment.topRight,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: errorTextFade,
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.all(10),
//                         child: Icon(
//                           Iconsax.close_circle,
//                           color: errorTextColor,
//                           size: 30,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Icon(
//                     Iconsax.warning_24,
//                     color: errorTextColor,
//                     size: 75,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Text(
//                   'Delete Account',
//                   style: GoogleFonts.nunito(
//                     color: errorTextColor,
//                     fontSize: 28,
//                     fontWeight: FontWeight.w800,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   'Kindly ensure you want to delete your account.',
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.nunito(
//                       color: greyfadeTextColor, fontSize: 18),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pop();
//                     Future.delayed(const Duration(seconds: 2), () {
//                       selectReason(context);
//                     });
//                   },
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Image.asset(
//                       proceedButtonsOnboarding,
//                       height: 100,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       });
// }

// Alert to tell the users to confirm the details
// void confirmDetails(BuildContext context) {
//   showDialog(
//     context: context,
//     barrierDismissible: false,
//     builder: (BuildContext context) {
//       return AlertDialog.adaptive(
//         title: null,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         elevation: 0.0,
//         content: SizedBox(
//           height: 460,
//           child: Column(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Align(
//                   alignment: Alignment.topRight,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: errorTextFade,
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Icon(
//                         Iconsax.close_circle,
//                         color: errorTextColor,
//                         size: 30,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Lottie.asset(
//                 'assets/images/onboardingOne.json',
//                 width: 200,
//                 height: 200,
//               ),
//               Text(
//                 'Confirm Credentials',
//                 style: GoogleFonts.nunito(
//                   color: errorTextColor,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w800,
//                 ),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Text(
//                 'Kindly ensure you have all the  details inputted correctly to avoid lose of funds',
//                 textAlign: TextAlign.center,
//                 style:
//                     GoogleFonts.nunito(color: greyfadeTextColor, fontSize: 18),
//               ),
//               SizedBox(
//                 height: 14,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => PinCodeScreen()));
//                 },
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Image.asset(
//                     proceedButtonsOnboarding,
//                     height: 100,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }

// Alert for user LogOut Account
// void userLogOutAccount(BuildContext context) {
//   showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return AlertDialog.adaptive(
//           title: null,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           elevation: 0.0,
//           content: SizedBox(
//             height: 300,
//             child: Column(
//               children: [
//                 GestureDetector(
//                   onDoubleTap: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Align(
//                     alignment: Alignment.topRight,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: errorTextFade,
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.all(10),
//                         child: Icon(
//                           Iconsax.close_circle,
//                           color: errorTextColor,
//                           size: 30,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   'Log Out',
//                   style: GoogleFonts.nunito(
//                     color: errorTextColor,
//                     fontSize: 24,
//                     fontWeight: FontWeight.w800,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Kindly ensure you want to delete your account.',
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.nunito(
//                       color: greyfadeTextColor, fontSize: 18),
//                 ),
//                 SizedBox(
//                   height: 14,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Image.asset(
//                       proceedButtonsOnboarding,
//                       height: 100,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       });
// }

// void showNoInternetAlert(BuildContext context) {
//   showDialog(context: context, builder: (BuildContext context) {
//     AlertDialog(

//     );
//   });
// }

// void selectReason(BuildContext context) {
//   showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             AlertDialog(
//               contentPadding: EdgeInsets.fromLTRB(30, 30, 30, 20),
//               elevation: 0,
//               alignment: Alignment.bottomCenter,
//               insetPadding: EdgeInsets.all(0),
//               scrollable: true,
//               title: null,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30),
//                 ),
//               ),
//               content: SizedBox(
//                 child: Container(
//                   width: 400,
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Text(
//                             'Auto-Logout TimeOut',
//                             style: GoogleFonts.nunito(
//                               color: errorTextColor,
//                               fontSize: 24,
//                               fontWeight: FontWeight.w800,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             '🔒 Your request to reset your password has been received. Check your email for further instructions.',
//                             textAlign: TextAlign.center,
//                             style: GoogleFonts.nunito(
//                               color: greyfadeTextColor,
//                               fontWeight: FontWeight.w500,
//                               fontSize: 16,
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.center,
//                             child: Icon(
//                               Iconsax.emoji_sad5,
//                               size: 45,
//                               color: errorTextColor,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.of(context).pop();
//                           Navigator.of(context).push(MaterialPageRoute(
//                               builder: (context) => WelcomeBackScreen()));
//                         },
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Image.asset(
//                             proceedButtonsOnboarding,
//                             height: 100,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         );
//       });
// }
