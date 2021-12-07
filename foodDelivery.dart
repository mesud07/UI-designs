import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDelivery extends StatefulWidget {
  const FoodDelivery({Key? key}) : super(key: key);

  @override
  _FoodDeliveryState createState() => _FoodDeliveryState();
}


TextStyle style1 = GoogleFonts.ubuntu(
    fontSize: 10, color: Colors.black);
TextStyle style2 = GoogleFonts.ubuntu(
    fontSize: 14, color: Colors.red);

class _FoodDeliveryState extends State<FoodDelivery> {
  List <IconData>bestPromIconList = [
    Icons.local_shipping,
    Icons.medication,
    Icons.holiday_village,
    Icons.pets,
    Icons.storefront
  ];
  List <IconData>popularFoodList = [
    Icons.bakery_dining,
    Icons.fastfood,
    Icons.cake,
    Icons.lunch_dining,
    Icons.donut_small
  ];

  List bestPromTextList = [
    "Shipping",
    "Drugstore",
    "Holidays",
    "Pets",
    "Retail"
  ];
  List popularFoodTextList = [
    "Bakery",
    "Fast Food",
    "Cake",
    "Burgers",
    "Sweets"
  ];

  List filterList = ["rating", "Pickup", "Under 30 min", "Price","Delicious","Farway"];
  late String bottomIndex = "homepage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomApp(context, bottomIndex),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text("2600 Chadwick Rd",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 14),),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 5,),
                  Text("Offers", style: GoogleFonts.poppins(
                      fontSize: 14, color: Colors.black),)
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          //ANA SAYFA TÜM COLUMN'U
          child: Column(
            children: [
              //HEADER CONTAİNER
              Container(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        child: Text("Today's Featured",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.bold),)),
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                  margin: EdgeInsets.all(10),
                                  height: 10,
                                  width: 300,
                                  decoration: BoxDecoration(


                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://avatars.mds.yandex.net/i?id=f38dc86805a22b02dd28dae486222bc9-5344335-images-thumbs&n=13&exp=1"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.only(
                                              left: 5, right: 100),
                                          child: RichText(
                                            text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Get Chicken Fried Starting at",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight
                                                            .normal),),
                                                  TextSpan(text: " \$25",
                                                      style: GoogleFonts
                                                          .poppins(
                                                          color: Colors.yellow,
                                                          fontSize: 18,
                                                          fontWeight: FontWeight
                                                              .bold)),
                                                ]
                                            ),
                                          ),


                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.only(
                                              left: 5, right: 100),
                                          child: Text(
                                            "Chicken Burger Fest",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),),
                                        ),

                                        Container(
                                          margin: EdgeInsets.all(10),
                                          alignment: Alignment.centerLeft,

                                          child: Container(
                                            height: 30,
                                            width: 130,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.black,),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceAround,
                                                children: [
                                                  Text("Order Now",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 12,
                                                        color: Colors.white),),

                                                  Icon(Icons
                                                      .room_service_outlined,)
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),

                                  )),
                            );
                          }),
                    )
                  ],
                ),
              ),

              //Best Promo
              Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Best Promotion for you",
                    style: GoogleFonts.poppins(fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                height: 120,
                width: double.infinity,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),

                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: bestPromIconList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),

                        width: 65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(

                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1,
                                        color: Colors.grey.withOpacity(0.5))
                                ),
                                child: Icon(bestPromIconList[index],
                                    color: index == 0 ? Colors.red
                                        : index == 1 ? Colors.pinkAccent
                                        : index == 2 ? Colors.purpleAccent
                                        : index==3 ? Colors.green
                                        :  Colors.blue),

                              ),
                            ),
                            Text(bestPromTextList[index],
                              style: GoogleFonts.poppins(
                                  fontSize: 11, color: Colors.black),),
                          ],
                        ),
                      );
                    }),
              ),

              //Popular Food for you

              Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: Text("Popular Food For You",
                    style: GoogleFonts.poppins(fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),)),
              Container(
                height: 110,
                width: double.infinity,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: popularFoodList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),

                        width: 65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(

                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1,
                                        color: Colors.grey.withOpacity(0.5))
                                ),
                                child: Icon(popularFoodList[index],
                                    color: index == 0 ? Colors.amber
                                        : index == 1 ? Colors.deepOrange
                                        : index == 2 ? Colors.brown
                                        : index==3 ? Colors.red
                                        :  Colors.pink),

                              ),
                            ),
                            Text(popularFoodTextList[index],
                              style: GoogleFonts.poppins(
                                  fontSize: 11, color: Colors.black),),
                          ],
                        ),
                      );
                    }),
              ),

              //filtreleme bölümü
              Container(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: filterList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        constraints: BoxConstraints(
                          minWidth: MediaQuery
                              .of(context)
                              .size
                              .width / 6,
                        ),

                        margin: EdgeInsets.all(10),


                        child: InkWell(
                          onTap: () {},
                          child: Container(
                              padding: EdgeInsets.only(left: 10, right: 10),


                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1,
                                    color: Colors.grey.withOpacity(0.5)),
                              ),
                              child: Center(child: Text(filterList[index],
                                style: GoogleFonts.poppins(fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),))),
                        ),


                      );
                    }),
              ),

              Container(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Top Picks For You", style: GoogleFonts
                                .poppins(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text("See all", style: GoogleFonts.poppins(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                            )
                          ],
                        )),
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                  margin: EdgeInsets.all(10),

                                  width: 200,
                                  decoration: BoxDecoration(


                                  ),
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://avatars.mds.yandex.net/i?id=f38dc86805a22b02dd28dae486222bc9-5344335-images-thumbs&n=13&exp=1"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [

                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 5, right: 5),
                                          height: 25,
                                          margin: EdgeInsets.only(top: 10),

                                          color: Colors.red,
                                          child: Center(child: Text("10% off",
                                            style: TextStyle(
                                                color: Colors.white),),),
                                        ),
                                        IconButton(icon: Icon(
                                          Icons.favorite, color: Colors.white,),
                                          onPressed: () {},),

                                      ],
                                    ),

                                  )),
                            );
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget MyBottomApp(BuildContext context, String name,) {
    return BottomAppBar(
        color: Colors.white,
        elevation: 9.0,
        notchMargin: 8.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          ),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: [

                  IconButton(
                      icon: name == "homepage" ? Icon(
                        Icons.home, color: Colors.red, size: 25,) : Icon(
                        Icons.home, size: 25, color: Colors.black,),
                      onPressed: () {
                        setState(() {
                          bottomIndex = "homepage";
                        });
                        print(name);
                      }),
                  name == "homepage" ? Text("Home", style: style2) : Text(
                    "Home", style: style1,)
                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: name == "pickup"
                          ? Icon(
                        Icons.wheelchair_pickup, color: Colors.red, size: 25,)
                          : Icon(Icons.wheelchair_pickup, color: Colors.black,
                        size: 25,),
                      onPressed: () {
                        setState(() {
                          bottomIndex = "pickup";
                        });
                        print(name);
                      }),
                  name == "pickup" ? Text("Pickup", style: style2) : Text(
                    "Pickup", style: style1,)

                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: name == "search" ? Icon(
                        Icons.search, color: Colors.red, size: 25,) : Icon(
                        Icons.search, color: Colors.black, size: 25,),
                      onPressed: () {
                        setState(() {
                          bottomIndex = "search";
                        });
                        print(name);
                      }),
                  name == "search" ? Text("Search", style: style2) : Text(
                    "Search", style: style1,)

                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: name == "order"
                          ? Icon(
                        Icons.delivery_dining, color: Colors.red, size: 25,)
                          : Icon(
                        Icons.delivery_dining, color: Colors.black, size: 25,),
                      onPressed: () {
                        setState(() {
                          bottomIndex = "order";
                        });
                        print(name);
                      }),
                  name == "order" ? Text("Order", style: style2) : Text(
                    "Order", style: style1,)

                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: name == "account" ? Icon(
                        Icons.account_circle_outlined, color: Colors.red,
                        size: 25,) : Icon(
                        Icons.account_circle_outlined, color: Colors.black,
                        size: 25,),
                      onPressed: () {
                        setState(() {
                          bottomIndex = "account";
                        });
                        print(name);
                      }),
                  name == "account" ? Text("Account", style: style2) : Text(
                    "Account", style: style1,)

                ],
              ),

            ],
          ),
        ));
  }

}



