import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/models/productmodel.dart';
import 'package:ecommerceapp/services/productservice.dart';
import 'package:ecommerceapp/widgets/apptext_widget.dart';
import 'package:ecommerceapp/widgets/customcontainer.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  final Map?data;
  const HomePage({super.key,this.data});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

ProductService _productService=ProductService();
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        height: size.height,
        width: size.width,
        
        child: Column(
          children: [

            Container(
              //margin: EdgeInsets.all(20),
             padding: EdgeInsets.symmetric(horizontal: 20),
             width: size.width,
              height: 48,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)
            ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      "Search here",
                      color: Colors.black12,

                    ),
                    Icon(Icons.search,color: Colors.black12,)
                  ],
                ),
              ),

        ),
SizedBox(height: 20,),
            CustomContainer(ontap: (){},
            height:150,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/banner.png')
                )

              ),

            ),

            SizedBox(height: 20,),

           Container(
             height: 40,
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: [

                 CustomContainer(

                   padding:EdgeInsets.all(10),
                   margin: EdgeInsets.only(right: 10),
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(10)
                   ),
                   
                   
                   ontap: (){},child: Center(child: AppText("Recommended",color: Colors.white,),),),

                 CustomContainer(

                   padding:EdgeInsets.all(10),
                   margin: EdgeInsets.only(right: 10),
                   decoration: BoxDecoration(
                       color: Colors.grey.withOpacity(0.2),
                       borderRadius: BorderRadius.circular(10)
                   ),


                   ontap: (){},child: Center(child: AppText("Shirts",color: Colors.black45,),),),

                 CustomContainer(

                   padding:EdgeInsets.all(10),
                   margin: EdgeInsets.only(right: 10),
                   decoration: BoxDecoration(
                       color: Colors.grey.withOpacity(0.2),
                       borderRadius: BorderRadius.circular(10)
                   ),


                   ontap: (){},child: Center(child: AppText("Jackets",color: Colors.black45,),),),








                 CustomContainer(

                   padding:EdgeInsets.all(10),
                   margin: EdgeInsets.only(right: 10),
                   decoration: BoxDecoration(
                       color: Colors.grey.withOpacity(0.2),
                       borderRadius: BorderRadius.circular(10)
                   ),


                   ontap: (){},child: Center(child: AppText("Winter wear",color: Colors.black45,),),),



                 CustomContainer(

                   padding:EdgeInsets.all(10),
                   margin: EdgeInsets.only(right: 10),
                   decoration: BoxDecoration(
                       color: Colors.grey.withOpacity(0.2),
                       borderRadius: BorderRadius.circular(10)
                   ),


                   ontap: (){},child: Center(child: AppText("Shorts",color: Colors.black45,),),),







               ],
             ),
           ),

            SizedBox(height: 20,),

            Expanded(
              child: Container(
                //color: Colors.red,
                width: size.width,

                height: 100,
                child: FutureBuilder<List<ProductModel>>(
                  future: _productService.getAllProducts(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator(

                        backgroundColor: AppColors().btnColor,
                      ));
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      List<ProductModel> products = snapshot.data!;
                      return ListView.builder(
scrollDirection: Axis.horizontal,
                        itemCount: products.length,
                        itemBuilder: (context, index) {
  
  var product=products[index];
                          return Card(
                            color: Colors.white,
                            child: CustomContainer(
                              color: Colors.white,


                              ontap: (){



                            },
                              height: 220,
                              width:220 ,
                              child: Stack(
                                children: [



                                  Container(
                                      width:220,
height: 200
,                                    child: Image.network(product.image.toString(),scale: 6,)),

                                Positioned(
                                   bottom: 0,

                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                        width: 220,
                                        child: AppText(product.title,color: Colors.black,size: 14,))),
                                  
                                  Positioned(
                                      right: 0,
                                      child: Container(
                                    
                                    child: Row(
                                      children: [
                                        Icon(Icons.star_rate,color: Colors.amber,),
                                        AppText(product.rating!.rate.toString()),
                                        SizedBox(width: 10,)
                                      ],
                                    ),
                                    
                                  )),


                                  CustomContainer(ontap: (){},
                                      height: 25,
                                      width: 100,

                                      decoration: BoxDecoration(

                                          color: AppColors().secondaryColor,
                                          borderRadius: BorderRadius.circular(4),),
                                      child: Center(
                                        child: AppText('Rs.${product.price.toString()}/-',color: Colors.white,),
                                      )
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
