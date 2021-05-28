import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {

  final businessName;
  final businessAddress;
  final businessEmail ;
  final businessNos;
  final businessLogo;

  BusinessCard({
    this.businessName, 
    this.businessAddress, 
    this.businessEmail, 
    this.businessNos, 
    this.businessLogo
  });

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Card(
      shadowColor: Colors.grey[70],
      elevation: 10.0,
      color: Colors.black,
      child: Container(
        height: size.height*0.3,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bizcard2.png"),
            fit: BoxFit.fill
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  businessName, 
                  style: TextStyle(
                    fontFamily: "OpenSans", 
                    fontSize: 24, 
                    color: Colors.white,
                    fontWeight: FontWeight.w100
                  ),
                ),
                SizedBox(
                  width: size.width*0.4,
                  child: Text(
                    businessAddress,
                    style: TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  "Email: $businessEmail",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Contact No.: $businessNos",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Container(
              child: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                  businessLogo
                )
              ),
            )
          ],
        ),
      ),
    );
  }

}