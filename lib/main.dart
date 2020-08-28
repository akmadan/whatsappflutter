import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    _scrollController = new ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder:
                (BuildContext context, bool isinnerBoxScrolled) {
              return <Widget>[
                SliverAppBar(
                  actions: [
                    Icon(Icons.search),
                    Padding(padding: EdgeInsets.only(left: 10.0)),
                    Icon(Icons.more_vert),
                    Padding(padding: EdgeInsets.only(right: 10.0)),
                  ],
                  pinned: true,
                  floating: true,
                  title: Text("WhatsApp"),
                  backgroundColor: Color(0xFF075e54),
                  bottom: TabBar(
                      indicatorColor: Colors.white,
                      indicatorWeight: 5.0,
                      controller: _tabController,
                      tabs: [
                        Tab(
                          child: Icon(Icons.camera),
                        ),
                        Tab(child: Text("CHATS")),
                        Tab(child: Text("STATUS")),
                        Tab(child: Text("CALLS")),
                      ]),
                )
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                Text("camera"),
                Chat(),
                Status(),
                Calls(),
              ],
            )),
      ),
    );
  }
}

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<String> names = [
    'Asif',
    'Karan',
    'Vaishnavi',
    'Aditya',
    'Priyanshu',
    'Dad',
    'Teesha'
  ];
  List<String> texts = [
    'Aur Kaisa hai bro',
    'Aur Kaisa hai bro',
    'Sab Badiya?',
    'Aur Kaisa hai bro',
    'Hey there',
    'Hey there',
    'Hey there',
  ];
  List<String> url = [
    'https://static.boredpanda.com/blog/wp-content/uploads/2020/07/shiba-cheems-meme-dog-balltze-5-5f030ec3cf823__700.jpg',
    'https://www.abc.net.au/cm/rimage/10369618-4x3-xlarge.jpg?v=4',
    'https://www.gardendesign.com/pictures/images/263x300Exact_62x0/site_3/helianthus-yellow-flower-pixabay_11863.jpg',
    'https://www.nationalobserver.com/sites/nationalobserver.com/files/styles/nat_header_full_size/public/img/2020/04/26/eastern_moose._zack_metcalfe_photo_002_-_a_flower_for_the_prosecution_-_december_20_-_2019_-_resized.jpg?itok=gYbqZEiw',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR5UgJ2JZ5gnPv3Y0A_0BTCh7UrRz5DSwdhlg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTu4Fl-3iqNt-VvrFxwioqNz_Q7of57BvCesQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTtLpqlpyahSbnZ_SsFt5eIQ84M86j7zVvohQ&usqp=CAU'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF25d366),
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                      url[index],
                    ),
                  ),
                  title: Text(names[index]),
                  subtitle: Text(texts[index]),
                  trailing: Text("12:00"),
                ),
                Divider()
              ],
            );
          },
        ),
      ),
    );
  }
}

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List<String> names = [
    'Asif',
    'Karan',
    'Vaishnavi',
    'Aditya',
    'Priyanshu',
    'Dad',
    'Teesha'
  ];
  List<String> texts = [
    'Aur Kaisa hai bro',
    'Aur Kaisa hai bro',
    'Sab Badiya?',
    'Aur Kaisa hai bro',
    'Hey there',
    'Hey there',
    'Hey there',
  ];
  List<String> url = [
    'https://static.boredpanda.com/blog/wp-content/uploads/2020/07/shiba-cheems-meme-dog-balltze-5-5f030ec3cf823__700.jpg',
    'https://www.abc.net.au/cm/rimage/10369618-4x3-xlarge.jpg?v=4',
    'https://www.gardendesign.com/pictures/images/263x300Exact_62x0/site_3/helianthus-yellow-flower-pixabay_11863.jpg',
    'https://www.nationalobserver.com/sites/nationalobserver.com/files/styles/nat_header_full_size/public/img/2020/04/26/eastern_moose._zack_metcalfe_photo_002_-_a_flower_for_the_prosecution_-_december_20_-_2019_-_resized.jpg?itok=gYbqZEiw',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR5UgJ2JZ5gnPv3Y0A_0BTCh7UrRz5DSwdhlg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTu4Fl-3iqNt-VvrFxwioqNz_Q7of57BvCesQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTtLpqlpyahSbnZ_SsFt5eIQ84M86j7zVvohQ&usqp=CAU'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF25d366),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR5UgJ2JZ5gnPv3Y0A_0BTCh7UrRz5DSwdhlg&usqp=CAU'),
            ),
            title: Text("My Status"),
            subtitle: Text("Add Status"),
          ),
          Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width,
            height: 20.0,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Recent Updates",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://static.boredpanda.com/blog/wp-content/uploads/2020/07/shiba-cheems-meme-dog-balltze-5-5f030ec3cf823__700.jpg'),
            ),
            title: Text('Asif'),
            subtitle: Text('Tap to Add Status'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://www.wwe.com/f/styles/og_image/public/all/2016/07/John_Cena_bio--b51ea9d0b6f475af953923ac7791391b.jpg'),
            ),
            title: Text('bhavya'),
            subtitle: Text('Tap to Add Status'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://www.abc.net.au/cm/rimage/10369618-4x3-xlarge.jpg?v=4'),
            ),
            title: Text('Karan'),
            subtitle: Text('Tap to Add Status'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR5UgJ2JZ5gnPv3Y0A_0BTCh7UrRz5DSwdhlg&usqp=CAU'),
            ),
            title: Text('My Status'),
            subtitle: Text('Tap to Add Status'),
          ),
        ],
      ),
    );
  }
}

class Calls extends StatefulWidget {
  CallsState createState() => CallsState();
}

class CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.wwe.com/f/styles/og_image/public/all/2016/07/John_Cena_bio--b51ea9d0b6f475af953923ac7791391b.jpg'),
          ),
          title: Text('Gaurav'),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_downward,
                color: Colors.red,
              ),
              Text('Today 1:25 pm'),
            ],
          ),
          trailing: Icon(
            Icons.phone,
            color: Color(0xFF075e54),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.abc.net.au/cm/rimage/10369618-4x3-xlarge.jpg?v=4'),
          ),
          title: Text('Karan'),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_downward,
                color: Colors.red,
              ),
              Text('Today 1:25 pm'),
            ],
          ),
          trailing: Icon(
            Icons.phone,
            color: Color(0xFF075e54),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.gardendesign.com/pictures/images/263x300Exact_62x0/site_3/helianthus-yellow-flower-pixabay_11863.jpg'),
          ),
          title: Text('Vaihnavi'),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_downward,
                color: Colors.red,
              ),
              Text('Today 3:55 pm'),
            ],
          ),
          trailing: Icon(
            Icons.phone,
            color: Color(0xFF075e54),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://static.boredpanda.com/blog/wp-content/uploads/2020/07/shiba-cheems-meme-dog-balltze-5-5f030ec3cf823__700.jpg'),
          ),
          title: Text('Asif'),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_downward,
                color: Colors.red,
              ),
              Text('Today 1:25 pm'),
            ],
          ),
          trailing: Icon(
            Icons.video_call,
            color: Color(0xFF075e54),
          ),
        ),
      ],
    );
  }
}
