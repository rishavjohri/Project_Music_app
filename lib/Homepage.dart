import 'package:flutter/material.dart';
import './size.dart';
import './music_player.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void change() {
    setState(() {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => musicPlayer()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                // color: Colors.black54
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    // Color(0xff0d47a1),
                    // Color(0xff0d47a1),
                    // Colors.grey,
                    // Colors.black54,
                    // Color(Colors.blue)
                    Colors.black,
                    Colors.deepPurple,
                  ],
                ),
              ),
              child: Text(
                'Music',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add_to_home_screen_outlined),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.update_rounded),
              title: Text('Updates'),
            ),
            ListTile(
              leading: Icon(Icons.change_circle),
              title: Text('language'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              // Color(0xff0d47a1),
              // Color(0xff0d47a1),
              // Colors.grey,
              // Colors.black54,
              // Color(Colors.blue)
              Colors.black,
              Colors.deepPurple,
            ],
          )),
        ),
        title: Text("Explore"),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/images/pic_1.png'),
            iconSize: 50,
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Songs Lyrics')));
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          // color: Colors.black54
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              // Color(0xff0d47a1),
              // Color(0xff0d47a1),
              // Colors.grey,
              // Colors.black54,
              // Color(Colors.blue)
              Colors.black,
              Colors.deepPurple,
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 380,
              height: 70,
              margin: EdgeInsets.only(top: AppMargin.m16, left: AppMargin.m8),
              // color: Colors.white,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0)),
                // color: Colors.grey[900],
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    // Color(0xff0d47a1),
                    // Color(0xff0d47a1),
                    // Colors.grey,
                    // Colors.black54,
                    // Color(Colors.blue)
                    Colors.black,
                    Colors.deepPurple,
                  ],
                ),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     showSearch(
                  //       context: context,
                  //       delegate: CustumSearchDelegate(),);
                  //   },
                  //   icon: Icon(
                  //     Icons.search,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  Expanded(
                    child: Text(
                      "Search....",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: AppMargin.m14),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      change();
                    },
                    child: Container(
                      width: 180,
                      margin: EdgeInsets.only(left: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black45,
                              width: 4.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white24,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.black45,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image(
                            image: AssetImage("assets/images/pic_4.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Name :",
                              style: TextStyle(color: Colors.redAccent),
                            ),
                            Text(
                              "  Arijit Singh",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 25),
                          child: Row(
                            children: [
                              Text(
                                "Album :",
                                style: TextStyle(color: Colors.redAccent),
                              ),
                              Text(
                                " Saavn",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Text(
                                "Song Name :",
                                style: TextStyle(color: Colors.redAccent),
                              ),
                              Text(
                                "  Saavn",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class CustumSearchDelegate extends SearchDelegate{
//   List<String> searchitem =[
//     'Arijit Singh',
//     'SonuNigam',
//     'HoneySingh',
//     'Badshaa',
//
//   ];
//
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     // TODO: implement buildActions
//     return [
//       IconButton(onPressed: (){
//         query='';
//       }, icon: Icon(Icons.clear),),
//     ];
//     throw UnimplementedError();
//   }
//
//   @override
//   Widget? buildLeading(BuildContext context) {
//     // TODO: implement buildLeading
//     return
//       IconButton(onPressed: (){
//         close(context, null);
//       }, icon: Icon(Icons.arrow_back),);
//     throw UnimplementedError();
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     // TODO: implement buildResults
//     List<String> matchQuery=[];
//     for(var artist in searchitem)
//     {
//       if(artist.toLowerCase().contains(query.toLowerCase()))
//       {
//         matchQuery.add(artist);
//       }
//     }
//     return ListView.builder(itemCount: matchQuery.length,itemBuilder: (context, index)
//     {
//       var result = matchQuery[index];
//       return ListTile(title: Text(result),);
//     },);
//     throw UnimplementedError();
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // TODO: implement buildSuggestions
//     List<String> matchQuery=[];
//     for(var artist in searchitem)
//     {
//       if(artist.toLowerCase().contains(query.toLowerCase()))
//       {
//         matchQuery.add(artist);
//       }
//     }
//     return ListView.builder(itemCount: matchQuery.length,itemBuilder: (context, index)
//     {
//       var result = matchQuery[index];
//       return ListTile(title: Text(result),);
//     },);
//     throw UnimplementedError();
//   }
// }
