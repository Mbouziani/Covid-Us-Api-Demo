// ignore_for_file: non_constant_identifier_names

import 'package:coviddemo/CovidController.dart';
import 'package:coviddemo/Covidmodel.dart';
import 'package:coviddemo/logique/numbergenerator.dart';
import 'package:flutter/material.dart';

import 'logique/dategenerator.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff243447),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffc51f5d),
        title: const Text("Covid Now"),
      ),
      body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: FutureBuilder(
            future: fetchdata(),
            builder: (context, snapshot) => snapshot.hasData
                ? ListCovid(snapshot.data)
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          )),
    );
  }
}

Widget ListCovid(var data) {
  List<Covidmodel> Covidlist = data;

  return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: Covidlist.length,
      itemBuilder: (context, indexe) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          decoration: BoxDecoration(
              color: const Color(0xff141d26), //#243447
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 0.85))
              ],
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Date :',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                    Text(
                      getdate(Covidlist[indexe].date.toString()),
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Positive :',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                    Text(
                      getnumber(Covidlist[indexe].positive!),
                      style: const TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Negative :',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                    Text(
                      getnumber(Covidlist[indexe].negative!),
                      style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Death :',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                    Text(
                      getnumber(Covidlist[indexe].death!),
                      style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total Test Results :',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                    Text(
                      getnumber(Covidlist[indexe].totalTestResults!),
                      style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}

/* 
    "date": 20210307,
    "positive": 28756489,            
    "negative": 74582825, 
    "death": 515151,   
    "totalTestResults": 363825123,  


    
*/