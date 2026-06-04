import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widget/bottom_add_to_cart_widget.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widget/rating_share_widget.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';



class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///---> Product Image Slider
            TProductImageSlider(),

            ///---> Product Details
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [

                  ///---> Rating & Share
                  TRatingAndShare(),

                  ///---> Price, Title, Stock, & Brand
                  TProductMetaData(),

                  ///---> Attributes
                  TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///---> Checkout Button
                  SizedBox( width:double.infinity, child:  ElevatedButton(onPressed: (){}, child: Text("Checkout"))),

                  ///---> Description
                  const TSectionHeading(title: "Description", showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                    "Integer lacus arcu, iaculis scelerisque turpis hendrerit, porta mattis magna. Maecenas elementum sodales ullamcorper. Vestibulum vel ligula congue orci fermentum finibus id sed dui. Vivamus vel magna quis orci hendrerit luctus. Phasellus dolor quam, laoreet id viverra eget, feugiat ullamcorper lorem. Maecenas cursus, libero id facilisis congue, dolor odio iaculis erat, non cursus orci risus vel mauris. Suspendisse tincidunt auctor eros ac bibendum. Quisque ac libero eros. Phasellus interdum sapien eget tincidunt vulputate. Fusce condimentum, urna vitae dapibus volutpat, nibh lorem tincidunt sapien, eget feugiat mauris magna ut nulla. Maecenas nulla purus, egestas ac tellus sit amet, dictum rutrum lorem.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: "Less",
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  ///---> Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Row(
                    children: [
                      TSectionHeading(title: "Reviews (199)", showActionButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen())),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



