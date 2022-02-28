import 'package:flutter/material.dart';
import './size.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(child: Text("Header")),
          ListTile(title: Text("Home"))
        ]),
      ),
      appBar: AppBar(
        title: Text("Explore"),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/images/pic_1.png'),
            iconSize: 50,
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Songs Lyrics')));
            },
          )
        ],
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
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
            color: Colors.grey[900]),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
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

            Text(
              "Search Artist .....",
              style: TextStyle(color: Colors.grey[400]),
            ),
            Container(
                margin: EdgeInsets.only(left: AppMargin.m14),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mic_rounded,
                    color: Colors.white,
                  ),
                ))
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
