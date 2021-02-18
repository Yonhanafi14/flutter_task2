import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GuiTask2 extends StatefulWidget {
  @override
  _GuiTask2State createState() => _GuiTask2State();
}

class _GuiTask2State extends State<GuiTask2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Payment Card Demo"),
        centerTitle: true,
      ),
      body: ContentArea(),
    );
  }
}
class ContentArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Stack(
            children: <Widget> [
              Container(
                color: Colors.white,

                height: MediaQuery.of(context).size.height,
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     image: DecorationImage(
              //       image: AssetImage('Images/Hanafi jas.jpg'),
              //       fit: BoxFit.contain,
              //     ),
              //   ),
              // ),
              Positioned(
                top: MediaQuery.of(context).size.height/200.10,
                child: Container(
                  //color: Colors.black,
                  width: MediaQuery.of(context).size.width,
                  // child: Card(
                  //   color: Colors.purple,
                  //   margin : EdgeInsets.all(20.0),
                  //   elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, ),

                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: const UnderlineInputBorder(),
                            filled: true,
                            icon: const Icon(
                              Icons.person,
                              size: 40.0,
                            ),
                            hintText: 'What name is written on card?',
                            labelText: 'Card Name',
                          ),

                          keyboardType: TextInputType.text,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: const UnderlineInputBorder(),
                            filled: true,
                            icon: const Icon(
                              Icons.payment,
                              size: 40.0,
                            ),
                            hintText: 'What name is written on card?',
                            labelText: 'Number',
                          ),

                          keyboardType: TextInputType.text,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: const UnderlineInputBorder(),
                            filled: true,
                            icon: const Icon(
                              Icons.payments,
                              size: 40.0,
                            ),
                            hintText: 'What name is written on card?',
                            labelText: 'Cvv',
                          ),

                          keyboardType: TextInputType.text,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: const UnderlineInputBorder(),
                            filled: true,
                            icon: const Icon(
                              Icons.event_note,
                              size: 40.0,
                            ),
                            hintText: 'What name is written on card?',
                            labelText: 'Expiry',
                          ),

                          keyboardType: TextInputType.text,
                        ),


                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          width: 200,
                          child :
                          ElevatedButton(
                            onPressed: ()=> print('button is pressed'),
                            child: Text('Pay'),

                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                            ),

                            //padding: EdgeInsets.all(15.0),

                          ),
                        ),
                      ],

                    ),
                  ),
                ),
              ),
                ],
              ),
                ),
    ],
                );







  }
}
