import 'package:flutter/material.dart';

class textfield extends StatefulWidget {


   textfield({Key? key}) : super(key: key);

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  bool abc=false;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              body: Form( key: _form,
                child: Column(children: [

                  SizedBox(height: 150,),
                  Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: TextFormField(
                    autofocus: false,
                    validator: (val){
                      if(val!.isEmpty)
                        return 'Empty';
                      return null;
                    },
                    maxLength: 1,
                    decoration: InputDecoration(

                      isDense: true,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 3, top: 1, right: 3, bottom: 1),
                      enabledBorder: InputBorder.none,
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.80), fontWeight: FontWeight.w400),
                    ),
                    style: TextStyle(fontSize: 12),
                  ),
                ),
SizedBox(height: 50),
                  ElevatedButton(onPressed: () {
                    if(
                    _form.currentState!.validate())
                      {
                        _form.currentState!.save();
                      }
                    else{
                            setState(() {
                              abc=true;
                            });
                    }
                  }, child: Text("Submited"))

                ]),
              ),
    );
  }
}
