import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFF2F3F5),
      appBar: AppBar(

        backgroundColor: Color(0xFFF2F3F5),
        elevation: 0,
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu,
            color: Colors.black,
            size: 30,
            )
        ),

        title: Text("Hello\nPrashanth!",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),


        actions: [
          IconButton(
            onPressed: () {},
            icon: Stack(
              children: [
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],

        automaticallyImplyLeading: false,

        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Container(
              color: Color(0xFFDDE1E6),
              height: 1,
            ),
          ),

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              color: Colors.red,
              child: Image.asset(
                "images/home1.png",
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(height: 10,),

            Container(

              height: 50,
              margin: EdgeInsets.only(left: 16, right: 16,),
              padding: EdgeInsets.only(left: 12, right: 12, ),
              decoration:
              BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  )
                ]
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration:
                  InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border:
                    OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,

                    ),
                ),



              ),
            )
          ],
        ),
      )

    );
  }

}