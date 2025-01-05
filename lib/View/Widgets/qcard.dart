import 'package:flutter/material.dart';

class qcard extends StatefulWidget {
  const qcard({super.key});

  @override
  State<qcard> createState() => _qcardState();
}

class _qcardState extends State<qcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200], // Background color for the card
        borderRadius: BorderRadius.circular(12), // Rounded edges for the entire qcard
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
              "Question",
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
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                hintText: "Answer",
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 50,
            width: 290,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                hintText: "Answer",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
