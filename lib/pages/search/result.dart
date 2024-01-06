import 'package:flutter/material.dart';

import 'package:cafeterion/const/colors.dart';
import 'package:cafeterion/utils/helper.dart';

import 'package:cafeterion/widgets/customnavbar.dart';
import 'package:cafeterion/widgets/searchbar.dart' as Custom;

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Good Morning Masterplan!",
                          style: Helper.getTheme(context).titleLarge,
                        ),
                        Image.asset(
                            Helper.putImageFromLocal("cart.png", "vectors"))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text("Delivering to"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        width: 250,
                        child: DropdownButton(
                          value: "current",
                          items: const [
                            DropdownMenuItem(
                              value: "current",
                              child: Text("Current Location"),
                            ),
                            DropdownMenuItem(
                              value: "room",
                              child: Text("BLOCK 4 T13B"),
                            ),
                          ],
                          icon: Image.asset(
                            Helper.putImageFromLocal(
                                "dropdown_filled.png", "vectors"),
                          ),
                          style: Helper.getTheme(context).titleLarge,
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Custom.SearchBar(
                    title: "Search Food",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Results for: wali nyama",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          )
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/orderItem');
                          },
                          child: RecentItemCard(
                            key: UniqueKey(),
                            image: Image.asset(
                              Helper.putImageFromLocal(
                                  "pizza3.jpg", "products"),
                              fit: BoxFit.cover,
                            ),
                            name: "Mulberry Pizza by Josh",
                          ),
                        ),
                        RecentItemCard(
                            key: UniqueKey(),
                            image: Image.asset(
                              Helper.putImageFromLocal(
                                  "coffee.jpg", "products"),
                              fit: BoxFit.cover,
                            ),
                            name: "Barita"),
                        RecentItemCard(
                            key: UniqueKey(),
                            image: Image.asset(
                              Helper.putImageFromLocal("pizza.jpg", "products"),
                              fit: BoxFit.cover,
                            ),
                            name: "Pizza Rush Hour"),

                        const SizedBox(
                          height: 600,
                        ),
                    
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          const Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                key: ValueKey('your_unique_key_here'),
                more: true,
              )),
        ],
      ),
    );
  }
}

class RecentItemCard extends StatelessWidget {
  const RecentItemCard({
    required Key key,
    required String name,
    required Image image,
  })  : _name = name,
        _image = image,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 80,
            height: 80,
            child: _image,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _name,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 67, 76, 82),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const Row(
                  children: [
                    Text("Cafe"),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Western Food"),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.putImageFromLocal("star_filled.png", "vectors"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColor.orange,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text('(124) Ratings')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class MostPopularCard extends StatelessWidget {
  const MostPopularCard({
    required Key key,
    required String name,
    required Image image,
  })  : _name = name,
        _image = image,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 300,
            height: 200,
            child: _image,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          _name,
          style: const TextStyle(
            color: Color.fromARGB(255, 90, 93, 95),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Row(
          children: [
            const Text("Cafe"),
            const SizedBox(
              width: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Text(
                ".",
                style: TextStyle(
                  color: AppColor.orange,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text("Western Food"),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              Helper.putImageFromLocal("star_filled.png", "vectors"),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "4.9",
              style: TextStyle(
                color: AppColor.orange,
              ),
            )
          ],
        )
      ],
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    required Key key,
    required String name,
    required Image image,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200, width: double.infinity, child: _image),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      _name,
                      //style: Helper.getTheme(context).titleSmall,
                      style: const TextStyle(
                        color: AppColor.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.putImageFromLocal("star_filled.png", "vectors"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColor.orange,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("(124 ratings)"),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("Cafe"),
                    const SizedBox(
                      width: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("Western Food"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required Key key,
    required Image image,
    required String name,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 100,
            height: 100,
            child: _image,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          _name,
          style: Helper.getTheme(context)
              .headlineMedium
              ?.copyWith(color: AppColor.primary, fontSize: 16),
        ),
      ],
    );
  }
}
