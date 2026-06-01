import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/profile_menu.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true, title: Text("Profile"),
      ),
      ///---> Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(onPressed: (){}, child: Text("Change Profile Picture")),
                  ],
                ),
              ),

              ///---> Details
              SizedBox(height: TSizes.spaceBtwItems /2),
              const Divider(),
              SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(title: "Profile Information", showActionButton: false),
              SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title: "Name", value: "Coding with T",onPressed: (){}),
              TProfileMenu(title: "Username", value: "Coding with T",onPressed: (){}),

              const SizedBox(height: TSizes.spaceBtwItems),
              Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///---> Heading Personal Info
              const TSectionHeading(title: "Personal Information", showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(onPressed: (){}, title: "User 10", value: "43689", icon: Iconsax.copy),
              TProfileMenu(onPressed: (){}, title: "E-mail", value: "Coding_with_T"),
              TProfileMenu(onPressed: (){}, title: "Phone Number", value: "+92-317-8059528"),
              TProfileMenu(onPressed: (){}, title: "Gender", value: "Male"),
              TProfileMenu(onPressed: (){}, title: "Date of Birth", value: "10 Oct, 1994"),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){}, 
                  child: Text("Close Account", style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}



