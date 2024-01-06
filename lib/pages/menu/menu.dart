import 'package:flutter/material.dart';
import 'package:cafeterion/const/colors.dart';
import 'package:cafeterion/utils/helper.dart';
import 'package:cafeterion/widgets/customnavbar.dart';
import 'package:cafeterion/widgets/searchbar.dart' as Custom;

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  static const List<Map<String, dynamic>> _cafes = [
    {"image": "hamburger2.jpg", "title": "Cive-UJASI","total": "15", "id": "1"},
    {"image": "rice2.jpg", "title": "Coed-Cafe","total": "9", "id": "2"},
    {"image": "fruit.jpg", "title": "Humanity-Ujasi","total": "25", "id": "3"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Places",
                        style: Helper.getTheme(context).titleSmall,
                      ),
                      Image.asset(
                        Helper.putImageFromLocal("cart.png", "vectors"),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Custom.SearchBar(title: "Search Food"),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: Helper.getScreenHeight(context) * 0.6,
                    width: Helper.getScreenWidth(context),
                    child: Stack(
                      children: [
                        Container(
                          height: double.infinity,
                          width: 100,
                          decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              color: AppColor.orange),
                        ),


              
                        
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/'); // desert screen
                                },
                                    child:MenuCard(
                                      key: UniqueKey(),
                                      imageShape: ClipOval(
                                        child: SizedBox(
                                          height: 64,
                                          width: 60,
                                          child: Image.asset(
                                            Helper.putImageFromLocal(
                                                _cafes[0]["image"], "products"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      name: _cafes[0]["title"],
                                      count: _cafes[0]["total"],
                                    ),
                              ),

                              const SizedBox(
                                height: 20,
                              ),

                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/'); // desert screen
                                },
                                  child:MenuCard(
                                    key: UniqueKey(),
                                    imageShape: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: SizedBox(
                                        height: 65,
                                        width: 60,
                                        child: Image.asset(
                                          Helper.putImageFromLocal(
                                              _cafes[1]["image"], "products"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    name: _cafes[1]["title"],
                                    count: _cafes[1]["total"],
                                  ),
                              ),

                              const SizedBox(
                                height: 20,
                              ),



                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/'); // desert screen
                                },
                                child: MenuCard(
                                  key: UniqueKey(),
                                  imageShape: ClipPath(
                                    clipper: CustomTriangle(),
                                    child: SizedBox(
                                      height: 70,
                                      width: 70,
                                      child: Image.asset(
                                        Helper.putImageFromLocal(
                                            _cafes[2]["image"], "products"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  name: _cafes[2]["title"],
                                  count: _cafes[2]["total"],
                                ),
                              ),
                            ],
                          ),
                        )



                      ],
                    ))
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              key: UniqueKey(),
              menu: true,
            ),
          )
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    required Key key,
    required String name,
    required String count,
    required Widget imageShape,
  })  : _name = name,
        _count = count,
        _imageShape = imageShape,
        super(key: key);

  final String _name;
  final String _count;
  final Widget _imageShape;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 80,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColor.placeholder,
                offset: Offset(0, 5),
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text("$_count items")
            ],
          ),
        ),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerLeft,
            child: _imageShape,
          ),
        ),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 40,
              width: 40,
              decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      color: AppColor.placeholder,
                      offset: Offset(0, 2),
                      blurRadius: 5,
                    )
                  ]),
              child: Image.asset(
                Helper.putImageFromLocal("next_filled.png", "vectors"),
              ),
            ),
          ),
        ),
      ],
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

class CustomDiamond extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.1000000, size.height * 0.4400000);
    path.quadraticBezierTo(size.width * 0.0243800, size.height * 0.5247000,
        size.width * 0.1000000, size.height * 0.6000000);
    path.quadraticBezierTo(size.width * 0.3550000, size.height * 0.8250000,
        size.width * 0.4400000, size.height * 0.9000000);
    path.quadraticBezierTo(size.width * 0.5140600, size.height * 0.9574800,
        size.width * 0.5800000, size.height * 0.9000000);
    path.quadraticBezierTo(size.width * 0.8200000, size.height * 0.6450000,
        size.width * 0.9000000, size.height * 0.5600000);
    path.quadraticBezierTo(size.width * 0.9500400, size.height * 0.5009400,
        size.width * 0.9000000, size.height * 0.4200000);
    path.quadraticBezierTo(size.width * 0.6450000, size.height * 0.1800000,
        size.width * 0.5600000, size.height * 0.1000000);
    path.quadraticBezierTo(size.width * 0.5029400, size.height * 0.0446800,
        size.width * 0.4200000, size.height * 0.1000000);
    path.quadraticBezierTo(size.width * 0.3400000, size.height * 0.1850000,
        size.width * 0.1000000, size.height * 0.4400000);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
