import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get, Response;


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: TDeviceUtils.getAppBarHeight(),
     right: TSizes.defaultSpace,
     child: TextButton(onPressed: () => get.offAll() , child: const Text("skip")));
  }
}

extension on Future<Response> Function(Uri url, {Map<String, String>? headers}) {
  void offAll() {}
}