import 'package:flutter/material.dart';
import 'package:lakshmiai/View/Pages/chatbotpage.dart';
import 'package:lakshmiai/View/Pages/microinvestment.dart';
import 'package:lakshmiai/View/Widgets/incard.dart';
import 'package:lakshmiai/View/Widgets/qcard.dart';

class comunity extends StatefulWidget {
  const comunity({super.key});

  @override
  State<comunity> createState() => _comunityState();
}

class _comunityState extends State<comunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 59),
          Text(
            "Community Page",
            style: TextStyle(
              color: Color.fromARGB(202, 182, 166, 19),
              fontSize: 32,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(17.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  incard(
                   mutualname: "MENTORS",
                   mutualtext1: " Anita Deshmukh-FinancialExpert \n for Rural Development",
                   mutualtext2: " Rajesh Kumar-Rural Finance \n Micro-Investment Advisor"

                  ),
                    SizedBox(height: 20),
                
                  qcard(),
                  SizedBox(height: 20),
                  qcard(),
                  SizedBox(height: 20),
                  qcard(),
                ],
              ),
            ),
          ),
          SizedBox(height: 62),
          Row(
            children: [
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => microinve()));
                },
                child: Image.asset("assets/btn.png"),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => chatbotpge()));
                },
                child: Image.asset("assets/btnn.png"),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => comunity()));
                },
                child: Image.asset("assets/btnnn.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
