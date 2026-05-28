import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_app/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCartCounterIcon(onPressed: (){}),
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ///---> Search Bar
                  SizedBox(height: TSizes.spaceBtwItems,),
                  TSearchContainer(text: "Search in Store", showBorder: true,showBackground: false, padding: EdgeInsets.zero),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///---> Featured Brands
                  TSectionHeading(title: "Featured Brands", onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems /1.5),

                  GestureDetector(
                    onTap: () {},
                    child: TRoundedContainer(
                      padding: EdgeInsets.all(TSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          ///---> Icon
                          TCircularImage(
                            isNetworkImage: false,
                            image: TImages.clothIcon,
                            backgroundColor: Colors.transparent,
                            overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems /2),
                    
                          ///---> Text
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TBrandTitleTextWithVerifiedIcon(title: "Nike", brandTextSize: TextSizes.large),
                              Text(
                                "256 products",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ];
      }, body: Container()
      ),
    );
  }
}

