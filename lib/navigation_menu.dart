import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final  controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(

        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: 0,
          onDestinationSelected: (index) => controller.selectedIndex.value =index,
          backgroundColor: darkMode ? TColors.black: Colors.white,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home",),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store",),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist",),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile",),
          ],
        ),
      ),
      body: controller.screens[controller.selectedIndex.value],
    );
  }
}



class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [Container(color: Colors.green,),Container(color: Colors.purple,), Container(color: Colors.orange,), Container(color: Colors.blue,),];
}