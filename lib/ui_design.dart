import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UI extends StatelessWidget {
  const UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/bg.png",
                  height: 200,
                  width: 300,
                ),
              ),
              Text(
                "Chattogram",
                style: GoogleFonts.merriweather(
                  textStyle: h2,
                )
              ),
              Text("28°C", style: GoogleFonts.montserrat(textStyle: h1, 
                  color: Colors.deepPurple[700],),),
              Text("Light rain", style: GoogleFonts.merriweather(textStyle: h3, color: Colors.grey),),
              SizedBox(height: 40,),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Image.asset("assets/images/temp.png", width: 30, height: 50,),
                    SizedBox(width: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Temperature", style: GoogleFonts.merriweather(textStyle: h3,)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("28°C", style: GoogleFonts.montserrat(textStyle: h3, color: Colors.grey)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Image.asset("assets/images/weather.png", width: 30, height: 50,),
                    SizedBox(width: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Weather", style: GoogleFonts.merriweather(textStyle: h3,)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Light rain", style: GoogleFonts.montserrat(textStyle: h3, color: Colors.grey)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Image.asset("assets/images/humidity.png", width: 30, height: 50,),
                    SizedBox(width: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Humidity", style: GoogleFonts.merriweather(textStyle: h3,)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("75%", style: GoogleFonts.montserrat(textStyle: h3, color: Colors.grey)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Image.asset("assets/images/wind.png", width: 30, height: 50,),
                    SizedBox(width: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Wind Speed", style: GoogleFonts.merriweather(textStyle: h3,)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("2MPH", style: GoogleFonts.montserrat(textStyle: h3, color: Colors.grey)),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

final h2 = TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                );
final h1 = TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                );
final h3= TextStyle(
                fontSize: 15,
);
