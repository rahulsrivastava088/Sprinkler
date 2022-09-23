import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Plant_Profile extends StatelessWidget {
  const Plant_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 0,
        ),
        child: ListView(
          children: [
            Image.asset("assets/images/plant.png"),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Petunia",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Text(
                      "Day Planted: 15 September 2022",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.green,
                        size: 40,
                      ),
                    ),
                    Text(
                      "Happy",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            "Soil Moisture",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CircularPercentIndicator(
                            radius: 80.0,
                            lineWidth: 8.0,
                            animation: true,
                            percent: 0.7,
                            center: Text(
                              "70.0%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                            footer: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Adequate",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.blue.shade600,
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            "Light Intensity",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CircularPercentIndicator(
                            radius: 80.0,
                            lineWidth: 8.0,
                            animation: true,
                            percent: 0.85,
                            center: Text(
                              "85.0%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                            footer: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Adequate",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.yellow.shade400,
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.yellow.shade900,
                      // boxShadow: BoxShadow(
                      //   color: Colors.yellow.shade700,
                      // ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green.shade200,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Plant Details",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.green.shade900,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Petunias in flower beds and pots are one of the most popular garden flowers. They are prolific bloomers, and you can find them in just about every color but true blue. They have wide, trumpet-shaped flowers and branching foliage that is hairy and somewhat sticky. Within the petunia genus, there is great variety. Most are sold as hybrids and can have single or double blooms; ruffled or smooth petals; striped, veined, or solid colors; mounding or cascading growth habits; and even fragrance.",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.blueGrey.shade900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
