
import 'package:flutter/material.dart';
import 'package:shadow_clip/shadow_clip.dart';
import 'package:cafeterion/const/colors.dart';
import 'package:cafeterion/utils/helper.dart';
import 'package:cafeterion/widgets/customnavbar.dart';

class IndividualItem extends StatelessWidget {
  const IndividualItem({super.key});

  
  static const List<Map<String, dynamic>> _item = [
    {"image": "rice.jpg", "title": "Wali Kuku na Samaki","price":"5,000","description":"This is the favourite dish for this afternoon, wanna take hot one. Order here","id": "1"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: Helper.getScreenHeight(context) * 0.5,
                          width: Helper.getScreenWidth(context),
                          child: Image.asset(
                            Helper.putImageFromLocal(_item[0]["image"], "products"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: Helper.getScreenHeight(context) * 0.5,
                          width: Helper.getScreenWidth(context),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: const [0.0, 0.4],
                              colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0.0),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SafeArea(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                Image.asset(
                                  Helper.putImageFromLocal(
                                      "cart_white.png", "vectors"), // the market order button picture
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Helper.getScreenHeight(context) * 0.35,
                          ),
                          SizedBox(
                            height: 800,
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Container(
                                    height: 700,
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 30),
                                    decoration: const ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40),
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            _item[0]["title"],
                                            style: Helper.getTheme(context)
                                                .headlineSmall,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      "Tsh.${_item[0]['price']}",
                                                      style: const TextStyle(
                                                        color: AppColor.primary,
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    //Text("/per Portion")
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            "Description",
                                            style: Helper.getTheme(context)
                                                .headlineMedium
                                                ?.copyWith(
                                                  fontSize: 16,
                                                ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            _item[0]["description"],
                                          )
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Divider(
                                            color: AppColor.placeholder,
                                            thickness: 1.5,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            "Customize your Order",
                                            style: Helper.getTheme(context)
                                                .headlineMedium
                                                ?.copyWith(
                                                  fontSize: 16,
                                                ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),



                                        /*
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Container(
                                            height: 50,
                                            width: double.infinity,
                                            padding: const EdgeInsets.only(
                                                left: 30, right: 10),
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              color: AppColor.placeholderBg,
                                            ),


                                          
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Container(
                                            height: 50,
                                            width: double.infinity,
                                            padding: const EdgeInsets.only(
                                                left: 30, right: 10),
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              color: AppColor.placeholderBg,
                                            ),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                hint: const Row(
                                                  children: [
                                                    Text(
                                                        "-Select the ingredients-"),
                                                  ],
                                                ),
                                                value: "default",
                                                onChanged: (_) {},
                                                items: const [
                                                  DropdownMenuItem(
                                                    value: "default",
                                                    child: Text(
                                                        "-Select the ingredients-"),
                                                  ),
                                                ],
                                                icon: Image.asset(
                                                  Helper.putImageFromLocal(
                                                    "dropdown.png",
                                                    "vectors",
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                        */
                                        const SizedBox(
                                          height: 15,
                                        ),
                                      
                                        SizedBox(
                                          height: 200,
                                          width: double.infinity,
                                          child: Stack(
                                            children: [
                                              Container(
                                                width: 120,
                                                decoration: const ShapeDecoration(
                                                  color: AppColor.orange,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(40),
                                                      bottomRight:
                                                          Radius.circular(40),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 20,
                                                  ),
                                                  child: Container(
                                                    height: 160,
                                                    width: double.infinity,
                                                    margin:
                                                        const EdgeInsets.only(
                                                      left: 50,
                                                      right: 40,
                                                    ),
                                                    decoration: ShapeDecoration(
                                                      shape:
                                                          const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  40),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  40),
                                                          topRight:
                                                              Radius.circular(
                                                                  10),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10),
                                                        ),
                                                      ),
                                                      shadows: [
                                                        BoxShadow(
                                                          color: AppColor
                                                              .placeholder
                                                              .withOpacity(0.3),
                                                          offset: const Offset(0, 5),
                                                          blurRadius: 5,
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Text(
                                                          "Total Price",
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        const Text(
                                                          "LKR 1500",
                                                          style: TextStyle(
                                                            color: AppColor
                                                                .primary,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                        const SizedBox(height: 10),
                                                        SizedBox(
                                                          width: 200,
                                                          child: ElevatedButton(
                                                              onPressed: () {},
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Image.asset(
                                                                    Helper.putImageFromLocal(
                                                                        "add_to_cart.png",
                                                                        "vectors"),
                                                                  ),
                                                                  const Text(
                                                                    "Add to Cart",
                                                                  )
                                                                ],
                                                              )),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  right: 20,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                    width: 60,
                                                    height: 60,
                                                    decoration: ShapeDecoration(
                                                      color: Colors.white,
                                                      shadows: [
                                                        BoxShadow(
                                                          color: AppColor
                                                              .placeholder
                                                              .withOpacity(0.3),
                                                          offset: const Offset(0, 5),
                                                          blurRadius: 5,
                                                        ),
                                                      ],
                                                      shape: const CircleBorder(),
                                                    ),
                                                    child: Image.asset(
                                                      Helper.putImageFromLocal(
                                                          "cart_filled.png",
                                                          "vectors"),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 20,
                                  ),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: ClipShadow(
                                      clipper: CustomTriangle(),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: AppColor.placeholder,
                                          offset: Offset(0, 5),
                                          blurRadius: 5,
                                        ),
                                      ],
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        color: Colors.white,
                                        child: Image.asset(
                                          Helper.putImageFromLocal(
                                            "fav_filled.png",
                                            "vectors",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              key: UniqueKey(),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTriangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controlpoint = Offset(size.width * 0, size.height * 0.5);
    Offset endpoint = Offset(size.width * 0.2, size.height * 0.85);
    Offset controlpoint2 = Offset(size.width * 0.33, size.height);
    Offset endpoint2 = Offset(size.width * 0.6, size.height * 0.9);
    Offset controlpoint3 = Offset(size.width * 1.4, size.height * 0.5);
    Offset endpoint3 = Offset(size.width * 0.6, size.height * 0.1);
    Offset controlpoint4 = Offset(size.width * 0.33, size.height * 0);
    Offset endpoint4 = Offset(size.width * 0.2, size.height * 0.15);

    Path path = Path()
      ..moveTo(size.width * 0.2, size.height * 0.15)
      ..quadraticBezierTo(
        controlpoint.dx,
        controlpoint.dy,
        endpoint.dx,
        endpoint.dy,
      )
      ..quadraticBezierTo(
        controlpoint2.dx,
        controlpoint2.dy,
        endpoint2.dx,
        endpoint2.dy,
      )
      ..quadraticBezierTo(
        controlpoint3.dx,
        controlpoint3.dy,
        endpoint3.dx,
        endpoint3.dy,
      )
      ..quadraticBezierTo(
        controlpoint4.dx,
        controlpoint4.dy,
        endpoint4.dx,
        endpoint4.dy,
      );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
