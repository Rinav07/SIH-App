import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Discover',
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const Text(
              'Monday , 28th Mar 2022',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFBDBDBD)),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xfff1f1f1),
              ),
              child: const Center(
                child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.filter_alt_outlined, color: Color(0xffbdbdbd),),
                  prefixIcon:Icon(Icons.search_rounded, color: Color(0xffbdbdbd),),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Color(0xffbdbdbd),
                  ),

                  border: InputBorder.none,
                ),
            ),
              ),),
          ],
        ),
      ),
    );
  }
}
