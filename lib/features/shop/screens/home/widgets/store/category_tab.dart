import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products_cart/product_card_vertical.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/brand/brand_show_case.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
          ///---> Brands
          TBrandShowcase(images: [TImages.productImage3, TImages.productImage2,TImages.productImage1]),
      
          /// ---> Products
          TSectionHeading(title: "You might like", showActionButton: true, onPressed: (){}),
          const SizedBox(height: TSizes.spaceBtwItems),
      
          TGridLayout(
            itemCount: 4, itemBuilder: (_, index) => TProductCardVertical()
              ),
              SizedBox(height: TSizes.spaceBtwSections),
            ]
          ),
        ),
      ]
    );
  }
}

