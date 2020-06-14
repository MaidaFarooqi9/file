import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Register"),
        backgroundColor: Colors.teal,),
      body:Container(

          /*   decoration:BoxDecoration(
            image:DecorationImage(image: AssetImage("images/bg.png"),
              fit:BoxFit.cover,

            ),
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
      SingleChildScrollView(
      scrollDirection: Axis.vertical,),
                ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (rect) {
                    return LinearGradient(

                      colors:<Color>[Colors.red, Colors.pink.shade900],
                      tileMode: TileMode.mirror,
                    ).createShader(rect);
                  },
                  child:Text('E-mail' ,
                      style: new TextStyle(
                        fontSize: 25.0,
                        fontWeight:FontWeight.bold,
                      )
                  ),),

                TextFormField(
                  decoration: InputDecoration(
                    icon:Padding(
                      padding: const EdgeInsets.fromLTRB(12.0,2.0,2.0,2.0),
                      child: Icon(Icons.email,color:Colors.pink.shade900 ,),
                    ),
                  ),
                ),

                ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (rect) {
                    return LinearGradient(

                      colors:<Color>[Colors.red, Colors.pink.shade900],
                      tileMode: TileMode.mirror,
                    ).createShader(rect);
                  },
                  child:Text('Password' ,
                      style: new TextStyle(
                        fontSize: 25.0,
                        fontWeight:FontWeight.bold,
                      )
                  ),),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon:Padding(
                      padding: const EdgeInsets.fromLTRB(12.0,2.0,2.0,2.0),
                      child: Icon(Icons.lock,color:Colors.pink.shade900 ,),
                    ),
                  ),),



                ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (rect) {
                    return LinearGradient(

                      colors:<Color>[Colors.red, Colors.pink.shade900],
                      tileMode: TileMode.mirror,
                    ).createShader(rect);
                  },
                  child:Text('Phone' ,
                      style: new TextStyle(
                        fontSize: 25.0,
                        fontWeight:FontWeight.bold,
                      )
                  ),),
                TextFormField(
                  inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                  keyboardType:TextInputType.phone,
                  decoration: InputDecoration(

                    icon:Padding(
                      padding: const EdgeInsets.fromLTRB(12.0,2.0,2.0,2.0),
                      child: Icon(Icons.phone,color:Colors.pink.shade900,),
                    ),
                  ),
                ),

                RaisedButton( splashColor:Colors.pinkAccent,color:Colors.pink.shade50,onPressed: (){
                  Navigator.pushNamed(context, '/login');
                },
                  child:ShaderMask(
                    blendMode: BlendMode.srcATop,
                    shaderCallback: (rect) {
                      return LinearGradient(

                        colors:<Color>[Colors.red, Colors.pink.shade900],
                        tileMode: TileMode.mirror,
                      ).createShader(rect);
                    },
                    child:Text('SignIn',style:TextStyle(fontSize: 26.0,fontWeight:FontWeight.bold,),),),
                ),
              ]),
        ),
    );
  }
}
