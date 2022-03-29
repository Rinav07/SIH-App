import 'package:flutter/material.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 100,
          leadingWidth: 70,
          leading: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 35,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                image: DecorationImage(
                    image: const AssetImage(
                        'assets/Screenshot 2022-03-28 223907 1.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3), BlendMode.srcOver)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 1,
                          child: Text(
                            'Ministry of Commerce & Industry',
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Coal Centric Indian Economy',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      width: 210,
                      child: Text(
                        'Posted on : 28 MAR 2022 5:19 PM BY PIB DELHI',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      child: Text(
                        'summary -',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),

                    Text(
                      "Overarching decisions titled 'Glasgow Climate Pact' reflect the following agreement between parties with regard to coal and fossil fuel subsidies: 'Calls upon Parties to accelerate the development, deployment and dissemination of technologies, and the adoption of policies, to transition towards low emission energy systems, including by rapidly scaling up the deployment of clean power generation and energy efficiency measures, including accelerating efforts towards the phasedown of unabated coal power and phase-out of inefficient fossil fuel subsidies, while providing targeted support to the poorest and most vulnerable in line with National circumstances and recognizing the need for support towards a just transition'. Coal is the most important and abundant fossil fuel in India and accounts for 55% of the country's energy need",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBDBDBD),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
