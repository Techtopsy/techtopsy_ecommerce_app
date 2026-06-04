import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/products_cart/ratings/rating_indicator.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text("Temi Mayos", style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),

            ///---> Review
            Row(
              children: [
                const TRatingBarIndicator(rating: 4),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text("01 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            ReadMoreText("Cras porta urna vel enim eleifend pretium. Etiam ac fringilla mi. Quisque porttitor et odio et ultricies. Maecenas volutpat nibh eros, eu ullamcorper nunc consectetur sit amet. Maecenas vulputate gravida convallis. Ut non tortor non magna pellentesque accumsan at eu nulla. Duis a interdum ante. Aenean dapibus luctus felis sed.",
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimExpandedText: "show less",
            trimCollapsedText: "show more",
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
            lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            
            ///--->Review
            TRoundedContainer(
              backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
              child: Padding(
                padding: EdgeInsets.all(TSizes.md),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("T's Store", style: Theme.of(context).textTheme.titleMedium),
                        Text("02 Nov, 2023", style: Theme.of(context).textTheme.bodyLarge),
                      ],
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems),
                    ReadMoreText("Cras porta urna vel enim eleifend pretium. Etiam ac fringilla mi. Quisque porttitor et odio et ultricies. Maecenas volutpat nibh eros, eu ullamcorper nunc consectetur sit amet. Maecenas vulputate gravida convallis. Ut non tortor non magna pellentesque accumsan at eu nulla. Duis a interdum ante. Aenean dapibus luctus felis sed.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: "show less",
                    trimCollapsedText: "show more",
                    moreStyle: TextStyle(fontSize: 14,    fontWeight: FontWeight.bold, color: TColors.primary),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwSections),
          ],
        )
      ],
    );
  }
}