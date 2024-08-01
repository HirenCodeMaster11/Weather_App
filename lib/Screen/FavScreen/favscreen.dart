import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Favorite Cities',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 26),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => Card(
          color: Color(0xff87A0C9),
          child: ListTile(
            title: Text('Surat',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 22),),
          ),
        ),
      ),
    );
  }
}
