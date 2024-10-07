import 'package:flutter/material.dart';
// import 'package:whatapp_clone/message_click.dart';


class MessageClick extends StatefulWidget {
  const MessageClick({super.key});

  @override
  State<MessageClick> createState() => _MyAppState();
}

class _MyAppState extends State<MessageClick> {
  var enter = "hello";
  TextEditingController messagesUs = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 20,
          leading: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back,color: Colors.white,)),
              Image.asset('pro1.png',height: 30,),
            ],
          ),
          title: const Text('Marthins Glo',style: TextStyle(color: Colors.white,fontSize: 19),),
          backgroundColor: Colors.black,

        ),
        body: Column(
          children: [
             Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 100,
                        child: Card(
                          elevation: 20,
                          child: Column(
                            children: [
                              Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Container(
                                width: 5,  // This sets the thickness of the line
                                height: 40,  // This sets the height of the line
                                color: Colors.green,  // You can change the color to your liking
                                 ),
                              ),
                            ),
                            
                              const Padding(
                                padding: EdgeInsets.only(left: 20,top: 10),
                                child: Row(
                                  children: [
                                    Text('Marthins '),
                                  ],
                                ),
                              ),
                             
                               const Text('How are you'),
                            ],
                          ),
                          ),
                      ),
                    ],
                  ),
                  //secound line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 100,
                        child: Card(
                          elevation: 20,
                          child: Column(
                            children: [
                              Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Container(
                                width: 5,  // This sets the thickness of the line
                                height: 40,  // This sets the height of the line
                                color: Colors.green,  // You can change the color to your liking
                                 ),
                              ),
                            ),
                            
                              const Padding(
                                padding: EdgeInsets.only(left: 20,top: 10),
                                child: Row(
                                  children: [
                                    Text('Marthins '),
                                  ],
                                ),
                              ),
                             
                               const Text('How are you'),
                            ],
                          ),
                          ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 100,
                        child: Card(
                          elevation: 20,
                          child: Column(
                            children: [
                              Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Container(
                                width: 5,  // This sets the thickness of the line
                                height: 40,  // This sets the height of the line
                                color: Colors.green,  // You can change the color to your liking
                                 ),
                              ),
                            ),
                            
                               Padding(
                                padding: const EdgeInsets.only(left: 20,top: 10),
                                child: Row(
                                  children: [
                                    Text('${messagesUs.text} '),
                                  ],
                                ),
                              ),
                             
                               const Text('How are you'),
                            ],
                          ),
                          ),
                      ),
                    ],
                  ),
                  //more wig
                  const SizedBox(height: 290),
                  TextField(
                    controller: messagesUs,
                    decoration: const InputDecoration(
                      label: Text('Messgaes'),
                      filled: true,
                    ),
                  ),

                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        var enter = messagesUs.text;
                      });
                    }, 
                    child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}