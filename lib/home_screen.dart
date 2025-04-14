import 'package:flutter/material.dart';
import 'package:flutter_custom_error_screen/data_model.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dashboard",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                        boxShadow: [
                          BoxShadow(
                              color:Colors.grey,
                              blurRadius: 15,
                              offset: Offset(5,10)
                          )
                        ],
                        image: DecorationImage(image: AssetImage("assets/profile.jpeg"),fit: BoxFit.fill)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                height: 150,
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                      blurRadius: 15,
                      offset: Offset(5,10)
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("April",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$ 500",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),),
                        Icon(Icons.auto_graph,color: Colors.white,size: 30,)
                      ],
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.7,
                            backgroundColor: Colors.white24,
                            color: Colors.white,
                          ),
                        ),
          
                        Text("70%",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                      ],
                    ),
                    Text("Daily spend target : \$16.67",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16),),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("DAILY SPENDS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey),),
                  Text("See All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Theme.of(context).primaryColor),),
                ],
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(5,10)
                      )
                    ]
                ),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: dailyExpenseList.length,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                    return ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: dailyExpenseList[index].color,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(dailyExpenseList[index].icon,color: Colors.white,),
                      ),
                      title: Text(dailyExpenseList[index].title,style: TextStyle(color: Colors.black)),
                      subtitle: Text("\$${dailyExpenseList[index].amount}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      trailing: Text(dailyExpenseList[index].time,style: TextStyle(color: Colors.blueGrey)),
                    );}),

              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("WISHLIST",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey),),
                  Text("See All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Theme.of(context).primaryColor),),
                ],
              ),
              ],
            
          ),
        ),
      )
    );
  }
}
