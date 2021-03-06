
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiDesign extends StatefulWidget {
  const UiDesign({Key? key}) : super(key: key);

  @override
  _UiDesignState createState() => _UiDesignState();
}

class _UiDesignState extends State<UiDesign> {
  var selectedButton;
  List kayanList = ["Coffee", "Beer", "Tea", "Soft Drinks", "Juice"];
  List listofbottom=["Espresso","Latte","Americano","T. Coffee","Filter Coffee"];
  List listofbottom2=["Espresso","Latte","Americano","T. Coffee","Filter Coffee"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                color: Colors.amberAccent.withOpacity(0.2),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    //Header Bölümü
                    Container(
                      height: MediaQuery.of(context).size.height * 2 / 7,
                      width: double.infinity,
                      child: Column(
                        //mainAxisSize: MainAxisSize.min,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(Icons.star,color: Colors.pinkAccent,),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 36),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Get',
                                          style: TextStyle(
                                              color: Colors.pink,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(text: 'adrink'),
                                    ],
                                  ),
                                  textScaleFactor: 0.5,
                                ),
                              ],
                            ),
                          ),

                          Container(
                              margin: EdgeInsets.only(left: 20, top: 30),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Welcome Anny,",
                                style: GoogleFonts.raleway(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              )),

                          Container(
                              margin: EdgeInsets.only(left: 20, top: 15),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "What you want you drink today ?",
                                style: GoogleFonts.raleway(fontSize: 20),
                              )),

                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 20),
                            alignment: Alignment.centerLeft,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search a drink..",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ////Sağa kayan menu

              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return selectedButton == index
                          ? Container(
                              margin: EdgeInsets.all(20),
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.redAccent,
                              ),

                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                  selectedButton=index;
                                  });
                                },
                                child: Center(
                                    child: Text(
                                  kayanList[index],
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                              ),
                            )
                          : Container(
                              margin: EdgeInsets.all(20),
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade300,
                              ),
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    selectedButton=index;
                                  });
                                },
                                child: Center(
                                    child: Text(
                                  kayanList[index],
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                )),
                              ),
                            );
                    }),
              ),
            
              
              //Ads Content
              Container(
                padding: EdgeInsets.only(top: 10,left: 20),
                height: MediaQuery.of(context).size.height * 1.5 / 8,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.pexels.com/photos/851555/pexels-photo-851555.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    ),fit: BoxFit.cover,
                  ),
                    borderRadius: BorderRadius.circular(15),

                ),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text("%25 Discount",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold),)),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Buy one get the second",style: GoogleFonts.poppins(fontSize: 15,),)),
                  
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                        ),
                        onPressed: () {},
                        child: Text("Details",style: TextStyle(color: Colors.white),),
                      ),
                    )

                  ],
                ),
              ),
              
               Container(

                 child: ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: 5,
                     itemBuilder: (context,index){
                   return Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [

                       Container(
                         height: 230,
                         width: 150,
                         margin: EdgeInsets.all(10),
                         child:buildProduct(index),
                       ),

                       //ikinci kare
                       Container(
                         height: 230,
                         width: 150,
                         margin: EdgeInsets.all(10),
                         child: buildProduct(index),
                       ),
                     ],
                   );
                 }),
               )

            ],
          ),
        ),
      ),
    );
  }

  Material buildProduct(int index) {
    return Material(
                         elevation: 10,
                         child: Container(
                           padding:EdgeInsets.all(10),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Stack(
                                 children: [
                                   Container(
                                     height:90,
                                     width: double.infinity,
                                     decoration: BoxDecoration(
                                       image: DecorationImage(
                                         image: NetworkImage(
                                           "https://api.ggmgastro.com/img/600/900/resize/media/catalog/product/6/3/636846169484964200_021d.jpg",
                                         ),fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(10),
                                     ),
                                   ),
                                   Container(

                                     margin: EdgeInsets.all(3),
                                     height:15,
                                     width:30,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: Colors.green.withOpacity(0.8)
                                     ),
                                     child: Center(child: Text("Best",style: TextStyle(fontSize: 10),),),)
                                 ],
                               ),
                               Text(listofbottom2[index],style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
                               Row(children: [
                                 Text("34 ",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold),),
                                 Text("Different varieties",style: GoogleFonts.poppins(fontSize: 10),),
                               ],),
                               Row(children: [
                                 Text("267 ",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold),),
                                 SizedBox(height: 10,),

                                 Text("Branda",style: GoogleFonts.poppins(fontSize: 10,),),
                               ],),
                               SizedBox(height: 20,),
                               Container(
                                 margin: EdgeInsets.only(left: 10),
                                 height: 30,
                                 width: 70,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                     border: Border.all(width: 1,color: Colors.black)
                                 ),
                                 child: InkWell(
                                   onTap: (){},
                                   child: Center(
                                     child: Text("Details",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                                   ),
                                 ),
                               )

                             ],
                           ),
                         ),
                       );
  }
}
