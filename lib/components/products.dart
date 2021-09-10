import 'package:flutter/material.dart';
import 'package:kfc/theme.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              semanticContainer: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: greyColor.withOpacity(0.3),
                  width: 0.5,
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shadowColor: greyColor.withOpacity(0.1),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/product-1.png',
                      height: 121,
                      width: 136,
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "SUPER FAMILY HCC",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "Rp 105.512",
                          style: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: redPrime,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "30%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Rp 73.858",
                      style: TextStyle(
                        color: redSecond,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              semanticContainer: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: greyColor.withOpacity(0.3),
                  width: 0.5,
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shadowColor: greyColor.withOpacity(0.1),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/product-2.png',
                      height: 121,
                      width: 136,
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "WINGS BUCKET",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Rp 56.000",
                      style: TextStyle(
                        color: redSecond,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              semanticContainer: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: greyColor.withOpacity(0.3),
                  width: 0.5,
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shadowColor: greyColor.withOpacity(0.1),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/product-3.png',
                      height: 121,
                      width: 136,
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "SNACK BUCKET 1 BBQ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Rp 37.000",
                      style: TextStyle(
                        color: redSecond,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              semanticContainer: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: greyColor.withOpacity(0.3),
                  width: 0.5,
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shadowColor: greyColor.withOpacity(0.1),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/product-4.png',
                      height: 121,
                      width: 136,
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "WINGER COMBO BBQ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Rp 72.000",
                      style: TextStyle(
                        color: redSecond,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
