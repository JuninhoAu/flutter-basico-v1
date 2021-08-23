import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/dialogs.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Text("gola") ,

        ),

        body: MyBody()

        ),
      );
  }

  
  
}

class MyBody extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Builder(
      builder:(context)=> SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(border: Border.all(color: Colors.red),borderRadius: BorderRadius.circular(15.0),
          boxShadow: [BoxShadow(blurRadius: 5.0,offset: Offset(0,-0.5))],color: Colors.white),
      
          child: Column(
                  children: [
                   Text("hola mundo flutter",),
                   Image.asset('assets/imagenes/flutterimg.jpg',height: 250,),
                   Text( "Esta es la app de componententes XD", ),
                 TextButton(onPressed:(){
                   
                   contacto(context);
                   
                   },
                   
                    child: Text("Contacto"),)
                    ],
                  ),
        ),
      ),
    );
    
  }


  contacto(BuildContext context){
    
         infoDialog(context: context, title: "desde otra pagina", content: "hola estoy desde otra pagina");

  }

}
