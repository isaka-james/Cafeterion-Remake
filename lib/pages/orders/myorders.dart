import 'package:flutter/material.dart';
import 'package:cafeterion/const/colors.dart';
import 'package:cafeterion/utils/helper.dart';
import 'package:cafeterion/widgets/customnavbar.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  static const List<Map<String, dynamic>> _orders = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "My Order",
                        style: Helper.getTheme(context).titleMedium,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),



                Column(
                  children: _orders.map((item) {
                    return Padding(
                       padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 15,
                        ),

                        child: SizedBox(
                          height: 140,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox(
                                  height: 140,
                                  width: 140,
                                  child: Image.asset(
                                    Helper.putImageFromLocal(
                                        item["image"], "products"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    item["title"],
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        Helper.putImageFromLocal(
                                          "star_filled.png",
                                          "vectors",
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "Tsh.${item['price']}",
                                        style: TextStyle(
                                          color: AppColor.orange,
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("${item['supplier']}"),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          bottom: 5,
                                        ),
                                        child: Text(
                                          ".",
                                          style: TextStyle(
                                            color: AppColor.orange,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text("${item['cafe']}"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 12,
                                        child: Image.asset(
                                          Helper.putImageFromLocal(
                                            "loc.png",
                                            "vectors",
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text("BLOCK 4 T16B")  // change the location
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      /*
                                      SizedBox(
                                        height: 12,
                                        child: Image.asset(
                                          Helper.putImageFromLocal(
                                            "loc.png", // change to time
                                            "vectors",
                                          ),
                                        ),
                                      ),
                                      */
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        item["time"],
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(255, 239, 133, 79),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          
                        ),

                    );
                  }).toList(),
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
