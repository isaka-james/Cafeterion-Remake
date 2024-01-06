import 'package:cafeterion/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:cafeterion/utils/helper.dart';
import 'package:cafeterion/widgets/customNavbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const List<Map<String, dynamic>> _user = [
    {"image": "user.jpg", "title": "masterplan","id": "1"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SizedBox(
              height: Helper.getScreenHeight(context),
              width: Helper.getScreenWidth(context),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profile",
                            style: Helper.getTheme(context).titleSmall,
                          ),
                          Image.asset(
                            Helper.putImageFromLocal("cart.png", "vectors"),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ClipOval(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: Image.asset(
                                Helper.putImageFromLocal(
                                  _user[0]["image"],
                                  "products",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 20,
                                width: 80,
                                color: Colors.black.withOpacity(0.3),
                                child: Image.asset(Helper.putImageFromLocal(
                                    "camera.png", "vectors")),
                              ),
                            )
                          ],
                        ),
                      ),
                      

                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Helper.putImageFromLocal("edit_filled.png", "vectors"),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Edit Profile",
                            style: TextStyle(color: AppColor.orange),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hi there ${_user[0]['title']}!",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text("Sign Out"),
                      const SizedBox(
                        height: 40,
                      ),
                      // other actions and information
                      /*
                        more informations
                      */




                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              key: UniqueKey(),
              profile: true,
            ),
          ),
        ],
      ),
    );
  }
}
