import 'package:flutter/material.dart';

class alertDialog extends StatefulWidget {
  Color a;
  Color b;
  double t;
   alertDialog({
    Key? key,
    required this.a,
    required this.b,
    required this.t,
  }) : super(key: key);

  @override
  State<alertDialog> createState() => _alertDialogState();
}

class _alertDialogState extends State<alertDialog> {
customshowDialog(){
  return AlertDialog(
    
    backgroundColor: Color.lerp(widget.a, widget.b,widget. t),
    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
    title: const Text("Warning"),
     content: const Text('GeeksforGeeks'),
     actions: [
                IconButton(                     // FlatButton widget is used to make a text to work like a button
                  onPressed: () =>Navigator.of(context).pop(),             // function used to perform after pressing the button
                  icon: const Icon(Icons.cancel),
                ),
                IconButton(
                  onPressed: () {},
                  icon:const Icon(Icons.confirmation_num),
                ),
              ],
              
    
  );
}

  @override

  Widget build(BuildContext context) {
      return IconButton(onPressed: (){
            showDialog(barrierDismissible: false,context: context,builder: (context)=>customshowDialog());
          }, icon: Icon(Icons.send,color:  Color.lerp(widget.a, widget.b,widget. t),));
  }
}