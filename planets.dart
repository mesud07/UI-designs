import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mulakat extends StatefulWidget {
  const Mulakat({Key? key}) : super(key: key);

  @override
  _MulakatState createState() => _MulakatState();
}
Color backgroundColor= Color.fromRGBO(115, 106, 183, 1);
int seciliKutu=20;
class _MulakatState extends State<Mulakat> {

  Map<String,String> planetsMap={"Earth":"https://purepng.com/public/uploads/large/purepng.com-earthearthplanetglobethird-planet-from-the-sun-1411526987774l0ioj.png",
  "Mercury":"https://cdn141.picsart.com/314347205201211.png",
  "Venus":"https://www.pngkey.com/png/full/703-7036472_venus-is-the-hottest-planet-in-the-solar.png",
  "Mars":"https://clipart-best.com/img/mars-planet/mars-planet-clip-art-12.png",
  "Jupiter":"https://www.seekpng.com/png/full/790-7901341_jupiter-planet-clipart.png",
  "Satürn":"https://www.pinclipart.com/picdir/big/329-3291376_saturn-clipart-imagenes-de-los-planetas-png-transparent.png",
  "Uranüs":"https://www.pinclipart.com/picdir/big/8-82379_uranus-png-clip-art-uranus-clipart-transparent-png.png",
  "Neptune":"https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Neptune_cutout.png/1200px-Neptune_cutout.png",};

  TextStyle style1= GoogleFonts.poppins(color: backgroundColor);

  List urlList=[];
  List nameList=[];
  
@override
  void initState() {
  urlList =
  planetsMap.entries.map( (entry) => entry.value).toList();
  nameList =
  planetsMap.entries.map( (entry) => entry.key).toList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(
        image: AssetImage("assets/space.jpg"), fit: BoxFit.cover),),
        
        //color: backgroundColor,
        child: ListView.builder(
        itemCount: nameList.length,  
        itemBuilder: (context,index){
          
          return InkWell(
      onTap: (){
        setState(() {
          seciliKutu= index;
        });
        
      },
      child: Stack(
    
                      children: [
                        Container(
                          margin:EdgeInsets.only(left: 50,right: 20,top: 15,bottom: 15),
                          padding: EdgeInsets.only(left: 50,right: 10),
                          height: 120,width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                          color: Color.fromRGBO(51, 51, 102, 1).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                          border:index==seciliKutu
                          ? Border.all(width: 2,color: Colors.orangeAccent)
                          :null,
  
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left:60),
                          child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround ,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        child: Text(nameList[index],style: GoogleFonts.poppins(fontSize: 20,color: Colors.white),)),
                                        Text("Milkyway Galaxy",style: style1),
                                  ],
                                ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(right:20,),
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                      Row(children: [Icon(Icons.add_location_outlined,size: 20,color: backgroundColor,),
                                      Text("3.711 m/s",style: style1)],),
                                       Row(children: [Icon(Icons.arrow_downward,size: 20,color: backgroundColor,),
                                      Text("3.711 m/s",style: style1)],)
                                    ],),)],
                              ),
                        ),
                            
                         
    
                        ),


                      //GEZEGENLER
                        Container(
                          
                          margin:EdgeInsets.only(top:seciliKutu==index ? 20 : 30,),
                          height: seciliKutu==index ? 120 : 100,
                          width: seciliKutu==index ? 170 : 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:NetworkImage(
                                urlList[index]),
                                fit:BoxFit.contain )
                                )
                          ),
    
                      ],
                    ),
    );
        }),
        
      ),
    );
  }





//App Bar
  PreferredSize header() {
    return PreferredSize(
      
      preferredSize:Size.fromHeight(60),
      child: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.blue,Colors.transparent.withOpacity(0.7)])),
        child: Center(child: Container(
          padding: EdgeInsets.only(top: 40),
          child: Text("Treva",style: GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize:30,color: Colors.white,))),),
      ),
    );
  }
}


