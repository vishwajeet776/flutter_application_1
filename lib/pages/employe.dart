
import 'package:flutter/material.dart';
import 'package:flutter_application_1/service/database.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';

class Employe extends StatefulWidget {
  const Employe({super.key});

  @override
  State<Employe> createState() => _EmployeState();
}

class _EmployeState extends State<Employe> {
  TextEditingController nameController=TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController AgeController= TextEditingController();
  TextEditingController locationController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Employe",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold
          )
           ),
         Text(
          " Form",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 30,
            fontWeight: FontWeight.bold),
         )
      ],
      ),
      ),
      body:Container(
        margin: const EdgeInsets.only(left: 20,top: 30,right: 20),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text(
            'Name',
          style: TextStyle(
            color:Colors.black,
            fontSize:20,
            fontWeight: FontWeight.bold
            ),),
            const SizedBox(height:10),
            Container(
              decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
              child:  TextField(
                controller: nameController,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(border:InputBorder.none ),
              ),
            ),
            const SizedBox(height: 30,),
            const Text(
            'Age',
          style: TextStyle(
            color:Colors.black,
            fontSize:20,
            fontWeight: FontWeight.bold
            ),),
            const SizedBox(height:10),
            Container(
              decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
              child:  TextField(
                controller: AgeController,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(border:InputBorder.none ),
              ),
            ),

             const SizedBox(height: 30,),
            const Text(
            'location',
          style: TextStyle(
            color:Colors.black,
            fontSize:20,
            fontWeight: FontWeight.bold
            ),),
            const SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child:  TextField(
                  controller: locationController,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(border:InputBorder.none ),
                ),
              ),
            ),
            const SizedBox(height: 50,),
            Center(
              child: ElevatedButton(onPressed: () async{
                String Id=randomAlphaNumeric(10);
                // ignore: unused_local_variable
                Map<String,dynamic>employeinfoMap={
                  "Name":nameController,
                  "Age":AgeController,
                  "Id":Id,
                  "location":locationController
                };
              await DatabaseMethod().addEmployedetail(employeinfoMap,Id).then((value){
                Fluttertoast.showToast(
        msg: "Employe Details has been uplodede successfull",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
              });
              },
               child: const Text("ADD",style: TextStyle(fontSize: 20),)),
            )
        ]),
      ),
    );
  }
}