import 'package:flutter/material.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[700],
          title: Text(
            'WhatsApp',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            PopupMenuButton(
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.white),
                ),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text('New Goup'),
                      ),
                      PopupMenuItem(
                        child: Text('Add Device'),
                      ),
                      PopupMenuItem(
                        child: Text('Settings'),
                      ),
                    ]),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(child: Text('CHATS')),
              Tab(child: Text('STATUS')),
              Tab(child: Text('CALLS')),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.teal[700],
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: TabBarView(
          children: [
            Text('CAMERA'),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/1.jpg'),
                  ),
                  title: Text(
                    'Shams Ali',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all, color: Colors.grey),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'One day my dream will come true.',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Text('12:00 pm'),
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 10.0,
                ),

                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images2.jpg'),
                  ),
                  title: Text(
                    'Mohamed Ali',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all, color: Colors.grey),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'The door of God never closes',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Text('2:00 pm'),
                ),
                Divider(height: 10.0, color: Colors.white),

                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/3.jpg'),
                  ),
                  title: Text(
                    'Manar Mohamed',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all, color: Colors.grey),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Hello I\'m student at computer science.',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Text('9:00 pm'),
                ),
                Divider(height: 10.0, color: Colors.white),

                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/4.jpg'),
                  ),
                  title: Text(
                    'Amal Ali',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all, color: Colors.grey),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'I \'m Coming Shams.',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Text('2:00 pm'),
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 10.0,
                ),

                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/5.jpg'),
                  ),
                  title: Text(
                    'Sarah Ali',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all, color: Colors.grey),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'What Can I do Now?!.',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Text('10:00 pm'),
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 10.0,
                ),

                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/6.jpg'),
                  ),
                  title: Text(
                    'Ahmed Ali',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all, color: Colors.grey),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'You Made My Day.',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Text('3:00 pm'),
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 10.0,
                ),

                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/7.jpg'),
                  ),
                  title: Text(
                    'Aya Hamada',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all, color: Colors.grey),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'I can do that.',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Text('7:00 pm'),
                ),
                Divider(height: 10.0, color: Colors.white),

                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images2.jpg'),
                  ),
                  title: Text(
                    'Eman Ayman',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all, color: Colors.grey),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Hello I\'m student at computer science.',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Text('2:00 pm'),
                ),
                Divider(height: 10.0, color: Colors.white),

                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/3.jpg'),
                  ),
                  title: Text(
                    'Nouran Ahmed',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all, color: Colors.grey),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Hi, How are you?!',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Text('2:00 pm'),
                ),
                Divider(height: 10.0, color: Colors.white),

                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/4.jpg'),
                  ),
                  title: Text(
                    'Nagat Mohamed',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all, color: Colors.grey),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Can I do this ?!',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Text('6:00 pm'),
                ),
                Divider(height: 10.0, color: Colors.white),

                // Container(
                //   child: FloatingActionButton(

                //   backgroundColor: const Color(0xff03dac6),
                //   foregroundColor: Colors.black,
                //   onPressed: () {
                //     // Respond to button press
                //   },
                //   child: Icon(Icons.add),
                // ),
                // )
              ],
            ),
            ListView(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('images/1.jpg'),
                        ),
                        CircleAvatar(
                          radius: 14.0,
                          backgroundColor: Colors.teal,
                          child: Icon(Icons.add),
                        ),
                      ],
                      alignment: AlignmentDirectional.bottomEnd,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Status',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Tap to add status update',
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[200]),
                    child: Row(
                      children: [
                        Text(
                          'Recent Updates',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/7.jpg'),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Aya Hamada',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '44 minutes ago',
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/5.jpg'),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ahmed Ali',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '59 minutes ago',
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/3.jpg'),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sarah Ahmed',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          ' 1 Hour ago',
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/2.jpg'),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohamed Ali',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          ' 2 Hour ago',
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[200]),
                    child: Row(
                      children: [
                        Text(
                          'Viewed Updates',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/7.jpg'),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Aya Hamada',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '44 minutes ago',
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/5.jpg'),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ahmed Ali',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '59 minutes ago',
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/3.jpg'),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sarah Ahmed',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          ' 1 Hour ago',
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/2.jpg'),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohamed Ali',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          ' 2 Hour ago',
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/1.jpg'),
                  ),
                  title: Text(
                    'Shams Ali',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_missed_sharp, color: Colors.red),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'August 11, 1:00 pm ',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call_outlined,
                    color: Colors.red,
                  ),
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images2.jpg'),
                  ),
                  title: Text(
                    'Mohamed Ali',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_end_sharp, color: Colors.teal),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'August 16, 2:58 pm ',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call_outlined,
                    color: Colors.teal,
                  ),
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/3.jpg'),
                  ),
                  title: Text(
                    'Manar Mohamed',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_received_sharp,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'August 20, 6:58 ',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call_outlined,
                    color: Colors.red,
                  ),
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/4.jpg'),
                  ),
                  title: Text(
                    'Amal Ali',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_sharp, color: Colors.red),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'July 14, 7:48 ',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call_outlined,
                    color: Colors.red,
                  ),
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/7.jpg'),
                  ),
                  title: Text(
                    'Aya Hamada',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_received_sharp, color: Colors.red),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'June 10, 1:38 ',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call_outlined,
                    color: Colors.red,
                  ),
                ),
                Divider(height: 10.0, color: Colors.white),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/3.jpg'),
                  ),
                  title: Text(
                    'Nouran Ahmed',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_received_sharp, color: Colors.teal),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'May 31, 12:56',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call_outlined,
                    color: Colors.teal,
                  ),
                ),
                Divider(height: 10.0, color: Colors.white),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('images/4.jpg'),
                  ),
                  title: Text(
                    'Nagat Mohamed',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_received_sharp, color: Colors.red),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'May 5, 12:56',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call_outlined,
                    color: Colors.red,
                  ),
                ),
                Divider(height: 10.0, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
