import 'package:flutter/material.dart';
import 'package:cafeterion/const/colors.dart';
import 'package:cafeterion/utils/helper.dart';
import 'package:cafeterion/widgets/customnavbar.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  static const List<Map<String, dynamic>> _offers = [
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
            child: Container(
              height: Helper.getScreenHeight(context),
              width: Helper.getScreenWidth(context),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Latest Offers",
                            style: Helper.getTheme(context).titleMedium,
                          ),
                          Image.asset(
                            Helper.putImageFromLocal("cart.png", "vectors"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [Text("Find discounts, Offer special")],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    
                    const SizedBox(
                      height: 30,
                    ),


                    Column(
                    children: _offers.map((item) {
                      return OfferCard(
                          key: UniqueKey(),
                          image: Image.asset(
                            Helper.putImageFromLocal("western2.jpg", "products"),
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
                    
                    
                   
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              key: UniqueKey(),
              offer: true,
            ),
          )
        ],
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({
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
  final String supplier;
  final String cafe;
  final String cost;
  final String time;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 230, width: double.infinity, child: _image),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
                  children: [
                    Text(
                      _name,
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w300,
                      )
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
              children: [
                const SizedBox(
                  width: 3,
                ),
                Text("$cafe"),
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
                Text("$time",
                style: TextStyle(
                  fontSize: 20,
                  
                ),),
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
                  width: 7,
                ),
                Text(
                  "Tsh.$cost/=",
                  style: TextStyle(
                    color: AppColor.orange,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
