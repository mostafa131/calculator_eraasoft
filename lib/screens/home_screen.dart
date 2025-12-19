import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c2135),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff24263B),
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 21),
          child: Column(
            children: [
              // Male / Female
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff24263B),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, size: 120, color: Colors.white),
                          Text("Male",
                              style: TextStyle(fontSize: 20, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  Expanded(
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff24263B),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, size: 120, color: Colors.white),
                          Text("Female",
                              style: TextStyle(fontSize: 20, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),

              // Height
              Container(
                height: 189,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff333244),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "150",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " cm",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Slider(
                      min: 0,
                      max: 300,
                      value: 150,
                      activeColor: Color(0xffE83D67),
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),

              SizedBox(height: 29),

              // Weight & Age
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:EdgeInsets.only(top: 15,bottom: 21) ,
                      decoration: BoxDecoration(
                        color: Color(0xff333244),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Text("Weight",
                              style: TextStyle(fontSize: 20, color: Colors.white)),
                          SizedBox(height: 5,),
                          Text("20",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(height:21,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton.small(onPressed: (){},
                                backgroundColor: Color(0xff8B8C9E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                                child: Icon(Icons.remove,color: Colors.white,),
                              ),
                              FloatingActionButton.small(onPressed: (){},
                                backgroundColor: Color(0xff8B8C9E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                                child: Icon(Icons.add,color: Colors.white,),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  Expanded(
                    child: Container(
                      padding:EdgeInsets.only(top: 15,bottom: 21) ,
                      decoration: BoxDecoration(
                        color: Color(0xff333244),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Text("Age",
                              style: TextStyle(fontSize: 20, color: Colors.white)),
                          SizedBox(height: 5,),
                          Text("60",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(height:21,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton.small(onPressed: (){},
                                backgroundColor: Color(0xff8B8C9E),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(Icons.remove,color: Colors.white,),
                              ),
                              FloatingActionButton.small(onPressed: (){},
                                backgroundColor: Color(0xff8B8C9E),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(Icons.add,color: Colors.white,),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar:
      Container(
        height: 80,
        color: Color(0xffE83D67),
        alignment: Alignment.center,
        child: Text("CALCULATE",style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),

      ),
    );
  }
}
