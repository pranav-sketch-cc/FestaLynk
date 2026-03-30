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
            ),


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        "Upcoming Events",
                        style: TextStyle(fontSize: 16),
                      ),

                      Spacer(),

                      Text(
                        "View All",
                        style: TextStyle(color: Color(0xFF1D61E7)),
                      ),
                    ],
                  ),
                ),


                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 180,
                        margin: EdgeInsets.only(left: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(16)
                                ),
                                image: DecorationImage(
                                  image: AssetImage("images/image1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text("Symposium"),
                            SizedBox(height: 4),
                            Text("Chennai"),

                            Spacer(),

                            Container(
                              padding: EdgeInsets.all(10),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Save Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF1D61E7),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40,
                                      vertical: 10
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        "Browse Categories",
                        style: TextStyle(fontSize: 16),
                      ),

                      Spacer(),

                      Text(
                        "View All",
                        style: TextStyle(color: Color(0xFF1D61E7)),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Browse Categories",
                      style: TextStyle(fontWeight: FontWeight.bold,),
                    )
                ),

                SizedBox(height: 10,),

                SizedBox(
                  height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                  ],
                ),)

              ],
            )



          ],
        ),
      ),


        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF1D61E7),
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon:Icon(Icons.add), label: "Create"),
            BottomNavigationBarItem(icon: Icon(Icons.explore_outlined),label: "Explore")

 
        ]

        ),

    );
  }

}