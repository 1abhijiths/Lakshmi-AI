import 'package:flutter/material.dart';

class incard extends StatefulWidget {

  final String mutualname;
  final String mutualtext1;
  final String mutualtext2;

  const incard(
    {
    super.key,
    required this.mutualname,
    required this.mutualtext1,
    required this.mutualtext2,
    });

  @override
  State<incard> createState() => _incardState();
}

class _incardState extends State<incard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200], // Background color for the card
        borderRadius: BorderRadius.circular(12), // Rounded edges for the entire incard
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: Offset(0, 3), // Shadow position
          ),
        ],
      ),
      padding: EdgeInsets.all(10), // Padding inside the card
      child: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 50,
            width: 290,
            alignment: Alignment.center, // Centers the text
            child: Text(
              widget.mutualname,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 50,
            width: 290,
            alignment: Alignment.center, // Centers the text
            child: Text(
              widget.mutualtext1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 50,
            width: 290,
            alignment: Alignment.center, // Centers the text
            child: Text(
              widget.mutualtext2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
