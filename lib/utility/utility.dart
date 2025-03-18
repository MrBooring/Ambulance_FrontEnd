import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';

class Utility {
  static InputDecoration inputDecorationTextAuth(BuildContext context, var errorText) {
    return InputDecoration(
      // contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),

      errorText: errorText.value == '' ? null : errorText.value,
      // fillColor: Colors.black26,
      filled: true,

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.redAccent,
          width: 1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.redAccent,
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary.withOpacity(.3),
          width: 2,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary.withOpacity(.3),
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary.withOpacity(.8),
          width: 2,
        ),
      ),
    );
  }

  static InputDecoration inputDecorationText(
    BuildContext context,
  ) {
    return InputDecoration(
      // contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),

      fillColor: Theme.of(context).colorScheme.surface,
      filled: true,

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Colors.redAccent,
          width: 1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Colors.redAccent,
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary.withOpacity(.1),
          width: 2,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary.withOpacity(.1),
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary.withOpacity(.8),
          width: 2,
        ),
      ),
    );
  }

  static Padding fieldLabel(String label, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 10, bottom: 5),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }

  static showLoader(context) {
    return showDialog(
        context: context,
        builder: (contest) {
          return Loader();
        });
  }

  // static showActionDonePopUp(BuildContext context, title, subtitle, onbtnPressed, btntext) {
  //   return showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     useSafeArea: true,
  //     barrierColor: Colors.black54,
  //     builder: (BuildContext context) {
  //       return ActionDonePopUp(title: title, onProceedPressed: onbtnPressed, msg: subtitle, btnLabel: btntext);
  //     },
  //   );
  // }

  // static confirmToActionPopUp(BuildContext context, title, subtitle, onOnePressed, btnOnetext, onTwoPressed, btnTwotext) {
  //   return showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     useSafeArea: true,
  //     barrierColor: Colors.purple.withOpacity(.03),
  //     builder: (BuildContext context) {
  //       return ConfirmToActionPopUp(title: title, msg: subtitle, onOnePressed: onOnePressed, btnOneLabel: btnOnetext, onTwoPressed: onTwoPressed, btnTwoLabel: btnTwotext);
  //     },
  //   );
  // }

  static String formatNumber(number) {
    if (number == null) {
      return "0";
    } else {
      bool isNegative = number < 0;
      number = isNegative ? -number : number;

      if (number < 1000) {
        return '${isNegative ? '- ₹' : '₹ '}${number.toStringAsFixed(2)}';
      } else if (number < 100000) {
        return '${isNegative ? '- ₹ ' : '₹ '}${(number / 1000).toStringAsFixed(2)}k';
      } else if (number < 10000000) {
        return '${isNegative ? '- ₹ ' : '₹ '}${(number / 100000).toStringAsFixed(2)}L';
      } else if (number < 1000000000) {
        return '${isNegative ? '- ₹ ' : '₹ '}${(number / 10000000).toStringAsFixed(2)}Cr';
      } else if (number < 1000000000000) {
        return '${isNegative ? '- ₹ ' : '₹ '}${(number / 1000000000).toStringAsFixed(2)}B';
      } else if (number < 1000000000000000) {
        return '${isNegative ? '- ₹ ' : '₹ '}${(number / 1000000000000).toStringAsFixed(2)}T';
      } else if (number < 1000000000000000000) {
        return '${isNegative ? '- ₹ ' : '₹ '}${(number / 1000000000000000).toStringAsFixed(2)}Q';
      } else {
        return "0";
      }
    }
  }

  static Color getStatusColor(String status) {
    switch (status) {
      case 'RUNNING':
        return Colors.blueAccent;
      case 'ACCEPTED':
        return Colors.green.shade500;
      case 'RESOLVED':
        return Colors.green.shade500;
      case 'CLOSED':
        return Colors.greenAccent.shade700;
      case 'COMPLETED':
        return Colors.teal.shade500;
      case 'COMPLETE':
        return Colors.green;
      case 'CREATED':
        return Colors.blueGrey.shade500;
      case 'INACTIVE':
        return Colors.red;
      case 'ONHOLD':
        return Colors.red.shade500;
      case 'PENDING':
        return Colors.amber.shade600;
      case 'ACTIVE':
        return Colors.amber.shade600;
      case 'APPROVED':
        return Colors.green.shade500;
      case 'DECLINED':
        return Colors.red.shade500;
      case 'INREVIEW':
        return Colors.amber.shade800;
      case 'REVIEW':
        return Colors.amber.shade800;
      case 'EXPIRED':
        return Colors.red;
      default:
        return const Color(0xFF40403F);
    }
  }

  static _handleExceptions(e, fromWhere) {
    if (e is SocketException) {
      log('SocketException in $fromWhere => $e', name: 'SocketException', level: 2000);
      showCustomSnackbar("Opps!!", "Somethign went wrong");
      return null;
    } else if (e is TimeoutException) {
      log('TimeoutException in $fromWhere => $e', name: 'TimeoutException', level: 2000);
      showCustomSnackbar("Connection Time Out", "Please try again later");
      return null;
    } else {
      log('Exception in $fromWhere => $e');
      showCustomSnackbar("Opps!!", "Something went wrong");
      return null;
    }
  }

  static showCustomSnackbar(
    String title,
    String message,
  ) {
    Get.snackbar(
      title, message,
      // duration: const Duration(seconds: 3),
      snackPosition: SnackPosition.TOP,
      backgroundColor: Color(0xFFF0F0F0),

      borderWidth: 1,
      borderColor: Color(0xFFFFA917),
    );
  }

  static showCustomErrorSnackbar(
    String title,
    String message,
  ) {
    Get.snackbar(
      title, message,
      // duration: const Duration(seconds: 3),
      snackPosition: SnackPosition.TOP,
      colorText: Colors.white,
      backgroundColor: Color.fromARGB(255, 255, 47, 47).withOpacity(0.4),

      borderWidth: 1,
      borderColor: Color.fromARGB(255, 0, 0, 0),
    );
  }
}

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      canPop: false,
      child: Center(
        child: SizedBox(
          height: 45.5,
          width: 45.5,
          // child: Image.asset("assets/loader/logo_animation.gif"),
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
