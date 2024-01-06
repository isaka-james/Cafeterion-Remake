// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import 'package:cafeterion/const/colors.dart';
import 'package:cafeterion/utils/helper.dart';

import 'package:cafeterion/widgets/customnavbar.dart';
import 'package:cafeterion/widgets/searchbar.dart' as Custom;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<Map<String, dynamic>> _category = [
    {"image": "hamburger2.jpg", "title": "Wali", "id": "1"},
    {"image": "rice2.jpg", "title": "Ugali", "desc": "2"},
    {"image": "fruit.jpg", "title": "Vinywaji", "desc": "3"},
    {"image": "rice.jpg", "title": "Nyama", "desc": "4"},
  ];

  static const List<Map<String, dynamic>> _popular_restaurant = [
    {
      "image": "pizza2.jpg",
      "title": "Wali Nyama",
      "price": "3,000",
      "restaurant": "Cive-Ujasi",
      "supplier": "masterplan",
      "time": "16:00",
      "id": "1"
    },
    {
      "image": "breakfast.jpg",
      "title": "Ugali Samaki",
      "price": "3,500",
      "restaurant": "Cive-Cafe",
      "supplier": "masterplan",
      "time": "19:00",
      "id": "2"
    },
    {
      "image": "bakery.jpg",
      "title": "Tambi kuku",
      "price": "4,500",
      "restaurant": "Coed-Ujasi",
      "supplier": "masterplan",
      "time": "17:00",
      "id": "3"
    },
  ];

  static const List<Map<String, dynamic>> _popular_dishes = [
    {
      "image": "pizza2.jpg",
      "title": "Wali Nyama",
      "price": "3,000",
      "restaurant": "Cive-Ujasi",
      "supplier": "masterplan",
      "time": "16:00",
      "id": "1"
    },
    {
      "image": "breakfast.jpg",
      "title": "Ugali Samaki",
      "price": "3,500",
      "restaurant": "Cive-Cafe",
      "supplier": "masterplan",
      "time": "19:00",
      "id": "2"
    },
    {
      "image": "bakery.jpg",
      "title": "Tambi kuku",
      "price": "4,500",
      "restaurant": "Coed-Ujasi",
      "supplier": "masterplan",
      "time": "17:00",
      "id": "3"
    },
  ];

  static const List<Map<String, dynamic>> _recent_dishes = [
    {
      "image": "pizza2.jpg",
      "title": "Wali Nyama",
      "price": "3,000",
      "restaurant": "Cive-Ujasi",
      "supplier": "masterplan",
      "time": "16:00",
      "id": "1"
    },
    {
      "image": "breakfast.jpg",
      "title": "Ugali Samaki",
      "price": "3,500",
      "restaurant": "Cive-Cafe",
      "supplier": "masterplan",
      "time": "19:00",
      "id": "2"
    },
    {
      "image": "bakery.jpg",
      "title": "Tambi kuku",
      "price": "4,500",
      "restaurant": "Coed-Ujasi",
      "supplier": "masterplan",
      "time": "17:00",
      "id": "3"
    },
  ];

  static const List<Map<String, dynamic>> _user = [
    {"image": "user.jpg", "title": "masterplan","id": "1"},
  ];

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
                        // ignore: prefer_const_constructors
                        Text(
                          "Good Morning ${_user[0]['title']}!",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 23,

                          ),
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
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: _category.map((item) {
                          return Column(
                            children: [
                              const SizedBox(
                                width: 110,
                              ),
                              CategoryCard(
                                key: UniqueKey(),
                                image: Image.asset(
                                  Helper.putImageFromLocal(
                                      item["image"], "products"),
                                  fit: BoxFit.cover,
                                ),
                                name: item["title"],
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Restaurants",
                          style: Helper.getTheme(context).titleMedium,
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text("View all"))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // the restaurant cards
                  Column(
                    children: _popular_restaurant.map((item) {
                      return RestaurantCard(
                          key: UniqueKey(),
                          image: Image.asset(
                            Helper.putImageFromLocal(item["image"], "products"),
                            fit: BoxFit.cover,
                          ),
                          name: item["title"],
                          time: item["time"],
                          cafe: item["restaurant"],
                          supplier: item["supplier"],
                          cost: item["price"]);
                    }).toList(),
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Most Popular Dishes",
                          style: Helper.getTheme(context).titleMedium,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("View all"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // the popular dishes cards
                  Container(
                    height: 250,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: _popular_dishes.map((item) {
                          return MostPopularCard(
                            key: UniqueKey(),
                            image: Image.asset(
                              Helper.putImageFromLocal(
                                  item["image"], "products"),
                              fit: BoxFit.cover,
                            ),
                            name: item["title"],
                            time: item["time"],
                            cafe: item["restaurant"],
                            supplier: item["supplier"],
                            cost: item["price"]
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Items",
                          style: Helper.getTheme(context).titleMedium,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("View all"),
                        ),
                      ],
                    ),
                  ),

                  // the recent cards
                  Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Column(
                      children: _recent_dishes.map((item) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/orderItem');
                          },
                          child: RecentItemCard(
                            key: UniqueKey(),
                            image: Image.asset(
                              Helper.putImageFromLocal(
                                  item["image"], "products"),
                              fit: BoxFit.cover,
                            ),
                            name: item["title"],
                            time: item["time"],
                            cafe: item["restaurant"],
                            supplier: item["supplier"],
                            cost: item["price"]
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                key: ValueKey('your_unique_key_here'),
                home: true,
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
    required this.cost,
    required this.time,
    required this.cafe,
    required this.supplier,
  })  : _name = name,
        _image = image,
        super(key: key);

  final String _name;
  final Image _image;
  final String supplier;
  final String cafe;
  final String cost;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: 80,
            height: 80,
            child: _image,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SizedBox(
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
                Row(
                  children: [
                    Text(supplier),
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
                    
                    // ignore: unnecessary_string_interpolations
                    Text("$cafe"),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Text(time,
                style: const TextStyle(
                  fontSize: 17,
                ),),
                Row(
                  children: [
                    Image.asset(
                      Helper.putImageFromLocal("star_filled.png", "vectors"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Tsh.$cost/=",
                      style: const TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    
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
    required this.cost,
    required this.time,
    required this.cafe,
    required this.supplier,
  })  : _name = name,
        _image = image,
        super(key: key);

  final String _name;
  final Image _image;
  final String supplier;
  final String cafe;
  final String cost;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
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
            const SizedBox(
              width: 3,
            ),
            Text(cafe),
            const SizedBox(
              width: 3,
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
              width: 3,
            ),
            Text(time,
            style: const TextStyle(
              fontSize: 17,
              
            ),),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Tsh.$cost/=",
              style: const TextStyle(
                color: AppColor.orange,
                fontWeight: FontWeight.w600,
                fontSize: 25
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
    required this.cost,
    required this.time,
    required this.cafe,
    required this.supplier,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String _name;
  final Image _image;
  final String cost;
  final String time;
  final String cafe;
  final String supplier;

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
                    Text(
                      "Tsh.$cost", // the cost of the dish
                      style: const TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    
                    const SizedBox(
                      width: 5,
                    ),
                    Text(cafe), // the place where the food is coming from
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

                    Text(supplier), // the one who will be distributing

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

                    Text(time,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),  // the time for delivery

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
          child: SizedBox(
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
              ?.copyWith(
                color: AppColor.primary,
                 fontSize: 16,
                 fontWeight: FontWeight.w600
                ),
        ),
      ],
    );
  }
}
