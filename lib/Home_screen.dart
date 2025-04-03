import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.grey],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome to Home Screen!',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      backgroundColor: Colors.grey,
                    ),
                    child: Text('Logout', style: TextStyle(fontSize: 18,color: Colors.black),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
