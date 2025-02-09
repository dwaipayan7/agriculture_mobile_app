import 'package:agriculture_mobile_app/models/product.dart';
import 'package:agriculture_mobile_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductDetailsPage extends StatefulWidget {
  final AgroProduct product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {

  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor:
            Colors.transparent, // Replaces forceMaterialTransparency
        title: const Text(
          "Details",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Add bookmark functionality here
            },
            icon: const Icon(IconlyLight.bookmark),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(18),
        children: [
          Container(
            height: 270,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  widget.product.image,
                ),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            widget.product.name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Available in stock",
                style: TextStyle(
                  color: mainGreenColor,
                  fontSize: 16,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\$${widget.product.price}/",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "${widget.product.unit}",
                      style: TextStyle(
                          // fontWeight: FontWeight.w500,
                          color: Colors.black45,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 20,
                color: Colors.amber,
              ),
              Text(
                "${widget.product.rating} (${widget.product.reviews})",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                ),
              ),
              Spacer(),
              SizedBox(
                height: 30,
                width: 30,
                child: IconButton(
                  iconSize: 18,
                    padding: EdgeInsets.zero,
                    style: IconButton.styleFrom(
                      backgroundColor: mainGreenColor,
                    ),
                    onPressed: (){
                    setState(() {
                      if(count > 1){
                        count--;
                      }
                    });
                    },
                    icon: Icon(
                     Icons.remove,
                     color: Colors.white,
                    ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: Text("$count ${widget.product.unit}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),

              SizedBox(
                height: 30,
                width: 30,
                child: IconButton(
                  iconSize: 18,
                  padding: EdgeInsets.zero,
                  style: IconButton.styleFrom(
                    backgroundColor: mainGreenColor,
                  ),
                  onPressed: (){
                    setState(() {
                      count++;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
