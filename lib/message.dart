import 'package:flutter/material.dart';
// import 'package:whatapp_clone/message.dart';


class MessageApp extends StatefulWidget {
  const MessageApp({super.key});

  @override
  State<MessageApp> createState() => _MyAppState();
}

class _MyAppState extends State<MessageApp> {
  var userInput = "marthins";
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          actions: const [
            Icon(Icons.camera_alt_outlined,color: Colors.white,),
            Icon(Icons.more_vert,color: Colors.white),
          ],
          title: const Text('Chats',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,

        ),
        body: ListView(
          children: [ Column(
            children: [
              const Row(
                children: [
                  Text('Chats',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
              const SizedBox(height: 10),

                //search bar goes here

              TextField(
                controller: name,
                decoration: const InputDecoration(                
                   label: Row(
                    children: [
                      Icon(Icons.sports_basketball_rounded,color: Colors.greenAccent,),
                      SizedBox(width: 10),
                      Text('Ask Meta AI or Search',style: TextStyle(color: Colors.grey),),
                    ],
                   ),
                  // labelText: 'Ask Meta AI or Search',
                  border: OutlineInputBorder(
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    userInput = name.text;
                  });
                },
                 child: const Text('Submit')),
            //navigator
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  SizedBox(
                    // width: 40,
                    child: Card(
                      color: Colors.grey,
                      elevation: 20,
                      child: Center(child: Padding(
                        padding: EdgeInsets.only(left:5, right:5,top: 5,bottom: 5),
                        child: Text('All',style: TextStyle(fontWeight: FontWeight.bold),),
                      ))
                      ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    // width: 60,
                    child: Card(
                      color: Colors.grey,
                      elevation: 20,
                      child: Center(child: Padding(
                        padding: EdgeInsets.only(left:10, right:10,top: 5,bottom: 5),
                        child: Text('Unread',style: TextStyle(fontWeight: FontWeight.bold),),
                      ))
                      ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    // width: 80,
                    child: Card(
                      color: Colors.grey,
                      elevation: 20,
                      child: Center(child: Padding(
                        padding: EdgeInsets.only(left:5, right:5,top: 5,bottom: 5),
                        child: Text('Favourites',style: TextStyle(fontWeight: FontWeight.bold),),
                      ))
                      ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    // width: 60,
                    child: Card(
                      color: Colors.grey,
                      elevation: 20,
                      child: Center(child: Padding(
                        padding: EdgeInsets.only(left:5, right:5,top: 5,bottom: 5),
                        child: Text('Groups',style: TextStyle(fontWeight: FontWeight.bold),),
                      ))
                      ),
                  ),
                ],
              ),
            ),
              //code to take list views of chats where images of chat and details of chtas dare placeded
            
              ListTile(
                leading: Image.asset('pro4.png'),
                title: const Text('Hemaon',style: TextStyle(color: Colors.white),),
                subtitle: const Text('messages goes here'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 75),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.pushNamed(
                    context, 
                    "/MessageClick"
                    );
                },
                child: ListTile(
                  leading: Image.asset('pro1.png'),
                  title:  Text('${name.text}',style: const TextStyle(color: Colors.white),),
                  subtitle: const Text('messages goes here'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 75),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: Image.asset('pro3.png'),
                title: const Text('Hemaon',style: TextStyle(color: Colors.white),),
                subtitle: const Text('messages goes here'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 75),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: Image.asset('pro2.png'),
                title: const Text('Hemaon',style: TextStyle(color: Colors.white),),
                subtitle: const Text('messages goes here'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 75),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: Image.asset('pro1.png'),
                title: const Text('Hemaon',style: TextStyle(color: Colors.white),),
                subtitle: const Text('messages goes here'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 75),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: Image.asset('pro1.png'),
                title: const Text('Hemaon',style: TextStyle(color: Colors.white),),
                subtitle: const Text('messages goes here'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 75),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: Image.asset('pro1.png'),
                title: const Text('Hemaon',style: TextStyle(color: Colors.white),),
                subtitle: const Text('messages goes here'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 75),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: Image.asset('pro1.png'),
                title: const Text('Hemaon',style: TextStyle(color: Colors.white),),
                subtitle: const Text('messages goes here'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 75),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: Image.asset('pro1.png'),
                title: const Text('Hemaon',style: TextStyle(color: Colors.white),),
                subtitle: const Text('messages goes here'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 75),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: Image.asset('pro1.png'),
                title: const Text('Hemaon',style: TextStyle(color: Colors.white),),
                subtitle: const Text('messages goes here'),
              ),

          
          
              //next widget goes in here
            ],
          ),
        ],
        ),
      ),
    );
  }
}