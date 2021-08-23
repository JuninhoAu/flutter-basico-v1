import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

infoDialog({required BuildContext context,required String title,required String content}){

   if(Platform.isIOS){
           
         return  showCupertinoDialog(context: context, builder: (BuildContext context){
             
           return CupertinoAlertDialog(
             title: Text(title),
             content: Text(content),
             actions: [
              CupertinoButton(onPressed: (){
                    Navigator.pop(context);
              },       
              child: Text("Cerrar") )
             ],
           );
      });

   }      
   

   showDialog(context: context, builder: (BuildContext context){
             
           return AlertDialog(
             title: Text(title),
             content: Text(content),
             actions: [
              TextButton(onPressed: (){
                    Navigator.pop(context);
              },       
              child: Text("Cerrar") )
             ],
           );
      });



}