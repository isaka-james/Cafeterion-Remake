import 'package:flutter/material.dart';

import 'package:shadow_clip/shadow_clip.dart';
import 'package:cafeterion/const/colors.dart';
import 'package:cafeterion/utils/helper.dart';

class CustomNavBar extends StatelessWidget {
  final bool home;
  final bool menu;
  final bool offer;
  final bool profile;
  final bool more;

  const CustomNavBar(
      {required Key key,
      this.home = false,
      this.menu = false,
      this.offer = false,
      this.profile = false,
      this.more = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: Helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipShadow(
              boxShadow: const [
                BoxShadow(
                  color: AppColor.placeholder,
                  offset: Offset(
                    0,
                    -5,
                  ),
                  blurRadius: 10,
                ),
              ],
              clipper: CustomNavBarClipper(),
              child: Container(
                height: 80,
                width: Helper.getScreenWidth(context),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (!menu) {
                          Navigator.of(context)
                              .pushReplacementNamed('/places'); // menu screen
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          menu
                              ? Image.asset(
                                  Helper.putImageFromLocal(
                                      "more_filled.png", "vectors"),
                                )
                              : Image.asset(
                                  Helper.putImageFromLocal(
                                      "more.png", "vectors"),
                                ),
                          menu
                              ? const Text("Places",
                                  style: TextStyle(color: AppColor.orange))
                              : const Text("Places"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!offer) {
                          Navigator.of(context)
                              .pushReplacementNamed('/offer'); // offer screen
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          offer
                              ? Image.asset(
                                  Helper.putImageFromLocal(
                                      "bag_filled.png", "vectors"),
                                )
                              : Image.asset(
                                  Helper.putImageFromLocal(
                                      "bag.png", "vectors"),
                                ),
                          offer
                              ? const Text("Offers",
                                  style: TextStyle(color: AppColor.orange))
                              : const Text("Offers"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!profile) {
                          Navigator.of(context)
                              .pushReplacementNamed('/profile'); // profile screen
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          profile
                              ? Image.asset(
                                  Helper.putImageFromLocal(
                                      "user_filled.png", "vectors"),
                                )
                              : Image.asset(
                                  Helper.putImageFromLocal(
                                      "user.png", "vectors"),
                                ),
                          profile
                              ? const Text("Profile",
                                  style: TextStyle(color: AppColor.orange))
                              : const Text("Profile"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!more) {
                          Navigator.of(context)
                              .pushReplacementNamed('/myorders'); // more screen
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          more
                              ? Image.asset(
                                  Helper.putImageFromLocal(
                                      "cart_filled.png", "vectors"),
                                )
                              : Image.asset(
                                  Helper.putImageFromLocal(
                                      "shopping_bag.png", "vectors"),
                                ),
                          more
                              ? const Text("Orders",
                                  style: TextStyle(color: AppColor.orange))
                              : const Text("Orders"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 70,
              width: 70,
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: home ? AppColor.orange : AppColor.placeholder,
                onPressed: () {
                  if (!home) {
                    Navigator.of(context)
                        .pushReplacementNamed('/home'); // home screen
                  }
                },
                child: Image.asset(
                    Helper.putImageFromLocal("home_white.png", "vectors")),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomNavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.3, 0);
    path.quadraticBezierTo(
      size.width * 0.375,
      0,
      size.width * 0.375,
      size.height * 0.1,
    );
    path.cubicTo(
      size.width * 0.4,
      size.height * 0.9,
      size.width * 0.6,
      size.height * 0.9,
      size.width * 0.625,
      size.height * 0.1,
    );
    path.quadraticBezierTo(
      size.width * 0.625,
      0,
      size.width * 0.7,
      0.1,
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
