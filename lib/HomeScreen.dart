import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool personal = true, college = false, office = false;
  bool suggest = false;
  TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent.shade400,
        onPressed: (){
          openBox();
        },
        child:Icon(Icons.add),
        focusColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 70,left: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white54,
              Colors.white
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("Hii, ",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Text("Akash",style: TextStyle(
                fontSize: 54,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Text("let`s the work begins, ",style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
              ),
            ),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               personal? Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),

                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Personal",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ): GestureDetector(
                 onTap: (){
                   personal = true;
                   college = false;
                   office = false;
                   setState(() {});

                 },
                  child: Text("Personal",style: TextStyle(
                   fontSize: 20,
                  ),),
                ),
                college? Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),

                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Personal",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ): GestureDetector(
                  onTap: (){
                    personal = false;
                    college = true;
                    office = false;
                    setState(() {});

                  },
                  child: Text("College",style: TextStyle(
                    fontSize: 20,
                  ),),
                ),
                office? Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),

                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Personal",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ): GestureDetector(
                  onTap: (){
                    personal = false;
                    college = false;
                    office = true;
                    setState(() {});

                  },
                  child: Text("Office",style: TextStyle(
                    fontSize: 20,
                  ),),
                ),
               
              ],
            ),
            SizedBox(height: 15,),
            CheckboxListTile(
              activeColor: Colors.greenAccent.shade400,
              title: Text("Make YouTube videos!"),
              value: suggest,
              onChanged: (newValue){
              setState(() {
                suggest = newValue!;
              });
            },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            CheckboxListTile(
              activeColor: Colors.greenAccent.shade400,
              title: Text("Go to GYM!"),
              value: suggest,
              onChanged: (newValue){
                setState(() {
                  suggest = newValue!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            )
          ],
        ) ,
      ),

    );
  }
  openBox(){
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },child: Icon(Icons.cancel),
                    ),
          
                    SizedBox(height: 60,),
                    Text("Add ToDo task",
                    style: TextStyle(color: Colors.greenAccent),)
                  ],
                ),
                SizedBox(height: 20,),
                Text("Add text"),
                SizedBox(height: 20,),
          
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    )
                  ),
                  child: TextField(
                    controller: todoController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter the task",
                    ),
                  ),
                  
                ),
                SizedBox(height: 20,),
                Center(
                      child: Container(
                    width: 100,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text("Add",
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                    ),
                  ),
                  ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
