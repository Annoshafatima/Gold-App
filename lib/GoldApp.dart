import 'package:flutter/material.dart';
class GoldApp extends StatefulWidget {
  const GoldApp({super.key, required String title});

  @override
  State<GoldApp> createState() => _GoldAppState();
}

class _GoldAppState extends State<GoldApp> {
  TextEditingController tolaPriceController=TextEditingController();
  TextEditingController tolaQuantityController=TextEditingController();
  TextEditingController mashaQuantityController=TextEditingController();
  TextEditingController rattiQuantityController=TextEditingController();
  TextEditingController pointsQuantityController=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('GoldApp',style:TextStyle(fontSize: 30,fontWeight:FontWeight.bold) ,),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()
    { tolaPriceController.clear();
      tolaQuantityController.clear();
      rattiQuantityController.clear();
      mashaQuantityController.clear();
      pointsQuantityController.clear();
      double total_Price=0.0;
      },
  ),
 body:
    Column(
     children: [
       Padding(padding:const EdgeInsets.only(left: 40,right: 40,top: 20),
       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text('Enter Tola Price:',style: TextStyle(color: Colors.black),),
         Container(padding: EdgeInsets.only(left: 20),
         decoration: BoxDecoration(border: Border.all(color: Colors.black),
         borderRadius: BorderRadius.circular(10),
         ),
           child: TextFormField(
             style: TextStyle(color: Colors.black),
             controller: tolaPriceController,
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               border: InputBorder.none,
             ),
           ),
         )

       ]
       ),
       ),
       Padding(padding:const EdgeInsets.only(left: 40,right: 40,top: 20),
         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Enter Tola Quantity:',style: TextStyle(color: Colors.black),),
               Container(padding: EdgeInsets.only(left: 20),
                 decoration: BoxDecoration(border: Border.all(color: Colors.black),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: TextFormField(
                   style: TextStyle(color: Colors.black),
                   controller: tolaQuantityController,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                   ),
                 ),
               )

             ]
         ),
       ),
       Padding(padding:const EdgeInsets.only(left: 40,right: 40,top: 20),
         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Enter Masha Quantity:',style: TextStyle(color: Colors.black),),
               Container(padding: EdgeInsets.only(left: 20),
                 decoration: BoxDecoration(border: Border.all(color: Colors.black),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: TextFormField(
                   style: TextStyle(color: Colors.black),
                   controller: mashaQuantityController,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                   ),
                 ),
               )

             ]
         ),
       ),
       Padding(padding:const EdgeInsets.only(left: 40,right: 40,top: 20),
         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Enter Ratti Quantity:',style: TextStyle(color: Colors.black),),
               Container(padding: EdgeInsets.only(left: 20),
                 decoration: BoxDecoration(border: Border.all(color: Colors.black),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: TextFormField(
                   style: TextStyle(color: Colors.black),
                   controller: rattiQuantityController,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                   ),
                 ),
               )

             ]
         ),
       ),
       Padding(padding:const EdgeInsets.only(left: 40,right: 40,top: 20),
         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Enter Points Quantity:',style: TextStyle(color: Colors.black),),
               Container(padding: EdgeInsets.only(left: 20),
                 decoration: BoxDecoration(border: Border.all(color: Colors.black),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: TextFormField(
                   style: TextStyle(color: Colors.black),
                   controller: pointsQuantityController,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                   ),
                 ),
               )

             ]
         ),
       ),
       Text('Total Price=total_Price',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),
       ),
GestureDetector(onTap: () {
  if (tolaQuantityController.text == '') {
    tolaQuantityController.text = '0';
    setState(() {

    });
    if (tolaPriceController.text == '') {
      tolaPriceController.text = '0';
      setState(() {

      });
      if (mashaQuantityController.text == '') {
        mashaQuantityController.text = '0';
        setState(() {

        });
        if (rattiQuantityController.text == '') {
          rattiQuantityController.text = '0';
          setState(() {

          });
          if (pointsQuantityController.text == '') {
            pointsQuantityController.text = '0';
            setState(() {

            });
          }
          double tolaPrice = double.parse(tolaPriceController.text);
          double tolaQuantity = double.parse(tolaQuantityController.text);
          //masha
          double pricePerMasha = tolaPrice / 12;
          double mashaQuantity = double.parse(mashaQuantityController.text);
          double totalPriceMasha=pricePerMasha*mashaQuantity;
          //ratti
          double pricePerRatti = tolaPrice / 96;
          double rattiQuantity = double.parse(rattiQuantityController.text);
          double totalPriceRatti=pricePerRatti*rattiQuantity;
          //point
          double pricePerPoint = tolaPrice / 320;
          double PointsQuantity = double.parse(pointsQuantityController.text);
          double TotalPricePoints = pricePerPoint * PointsQuantity;
          //Total Calculation
      double total_Price = (tolaPrice * tolaQuantity)+totalPriceMasha+totalPriceRatti+TotalPricePoints;
          setState(() {

          });
        }
        child:
        Container(margin: EdgeInsets.only(top: 20),
          height: 40,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
          child: Center(child: Text('Calculate', style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold),),),

        );
      }
      SizedBox(height: 30,);
      Container(height: 40,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        child: Center(child: Text('Developed By Annosha Fatima',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold),),),
      );
    };
  }
     }
    ),
    ],
    ),

    );
    }
  }