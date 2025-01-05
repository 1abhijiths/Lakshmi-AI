import 'package:flutter/material.dart';
import 'package:lakshmiai/View/Pages/chatbotpage.dart';
import 'package:lakshmiai/View/Pages/community.dart';
import 'package:lakshmiai/View/Widgets/incard.dart';

class microinve extends StatefulWidget {
  const microinve({super.key});

  @override
  State<microinve> createState() => _microinveState();
}

class _microinveState extends State<microinve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 59),
          Text(
            "   Micro  Investment  ",
            style: TextStyle(
              color: Color.fromARGB(202, 182, 166, 19),
              fontSize: 32,
            ),
          ),
          Text(
            "   Opportunities  ",
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  incard(
                    mutualname: "ICICI Prudential Rural \n Opportunities Fund",
                    mutualtext1: "Recently launched.",
                    mutualtext2: "",
                  ),
                  SizedBox(height: 20),
                  incard(
                    mutualname: "Sundaram Rural and \n Consumption Fund",
                    mutualtext1: "Consistently delivers",
                    mutualtext2:
                        "Competitive returns aligned with \n rural consumption growth.",
                  ),
                  SizedBox(height: 20),
                  incard(
                    mutualname: "Nippon India Small Cap Fund",
                    mutualtext1: "Delivered approximately",
                    mutualtext2:
                        "36.69% annualized return over \n the past 3 years.",
                  ),
                  SizedBox(height: 20),
                  incard(
                   mutualname: "Edelweiss Mid Cap Fund",
                   mutualtext1: "Delivered a solid",
                   mutualtext2: "22.47% annualized return over \nthe last 3 years."

                  ),
                  SizedBox(height: 20),
                  incard(
                   mutualname: "ICICI Prudential Bluechip Fund",
                   mutualtext1: "Achieved a strong",
                   mutualtext2: "12.78% annualized return over \nthe past 4 years."

                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => microinve()));
                },
                child: Image.asset("assets/btn.png"),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => chatbotpge()));
                },
                child: Image.asset("assets/btnn.png"),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => comunity()));
                },
                child: Image.asset("assets/btnnn.png"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
