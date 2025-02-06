import 'package:agriculture_mobile_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class AgriplantHomePage extends StatefulWidget {
  const AgriplantHomePage({super.key});

  @override
  State<AgriplantHomePage> createState() => _AgriplantHomePageState();
}

class _AgriplantHomePageState extends State<AgriplantHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: header(),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          searchBarFilter(),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: Container(
              decoration: BoxDecoration(
                color: secondGreenColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Free Consultation",
                            style: TextStyle(
                              color: mainGreenColor,
                              fontSize: 20,
                              letterSpacing: -.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Get free support from our customer service",
                          style: TextStyle(fontSize: 16),
                          ),
                          FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: mainGreenColor,
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )
                            ),
                              onPressed: (){},
                              child: Text("Call Now")
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                    Center(
                      child: Image.asset("assets/rb_534.png", width: 190,),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



Widget searchBarFilter() {
  return Row(
    children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search Here..",
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
            ),
            isDense: true,
            contentPadding: EdgeInsets.all(16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: Icon(
              IconlyLight.search,
              color: Colors.grey,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 12),
        child: IconButton(
          style: IconButton.styleFrom(
              backgroundColor: mainGreenColor,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )),
          onPressed: () {},
          icon: Icon(
            IconlyLight.filter,
            color: Colors.white,
            size: 34,
          ),
        ),
      )
    ],
  );
}

AppBar header() {
  return AppBar(
    forceMaterialTransparency: true,
    backgroundColor: Colors.white,
    centerTitle: false,
    title: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black12.withOpacity(0.03),
          child: Icon(Icons.menu),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Dwaipayan! 👏",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text(
              "Enjoy our services!",
              style: TextStyle(fontSize: 14, color: Colors.black45),
            ),
          ],
        ),
      ],
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 30,
                color: mainGreenColor,
              ),
            ),
            Positioned(
              right: 12,
              top: 12,
              child: CircleAvatar(
                radius: 6.5,
                backgroundColor: Colors.red,
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 9),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}
