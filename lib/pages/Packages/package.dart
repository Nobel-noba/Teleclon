import 'package:flutter/material.dart';
import 'package:teleclone/pages/drawer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

/* 1 letekel => 1 lerase =>
                         => 1 voice
                         => 2 internet
                         => 3 sms
*
*
*
*
*  */


int _selectedIndex = 0;
 const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

 //the widget options
 List<Widget> _widgetOptions = <Widget>[
   //the 0 index value
   StaggeredGridView.count(
     crossAxisCount: 4,
     staggeredTiles: _callStaggeredTiles,
     children: _callTiles,
     mainAxisSpacing: 4.0,
     crossAxisSpacing: 4.0,
     padding: const EdgeInsets.all(4.0),
   ),
   //the 1 index value
   StaggeredGridView.count(
     crossAxisCount: 4,
     staggeredTiles: _smsStaggeredTiles,
     children: _smsTiles,
     mainAxisSpacing: 4.0,
     crossAxisSpacing: 4.0,
     padding: const EdgeInsets.all(4.0),
   ),
   //the 2 index value
   StaggeredGridView.count(
     crossAxisCount: 4,
     staggeredTiles: _internetStaggeredTiles,
     children: _internetTiles,
     mainAxisSpacing: 4.0,
     crossAxisSpacing: 4.0,
     padding: const EdgeInsets.all(4.0),
   ),
];

//the size of the greeds
List<StaggeredTile> _callStaggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
];
List<StaggeredTile> _smsStaggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
];
List<StaggeredTile> _internetStaggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
];

//the grid tiles
List<Widget> _callTiles = const <Widget>[
  const packageGridTile(Colors.green, 'Night','/CallN'),
  const packageGridTile(Colors.green, 'Daily','/CallD'),
  const packageGridTile(Colors.lightBlue, 'Weekly','/CallW'),
  const packageGridTile(Colors.amber, 'Monthly','/CallM'),
];
List<Widget> _smsTiles = const <Widget>[
  const packageGridTile(Colors.green, 'Daily','/SmsD'),
  const packageGridTile(Colors.lightBlue, 'Weekly','/SmsW'),
  const packageGridTile(Colors.amber, 'Monthly','/SmsM'),
];
List<Widget> _internetTiles = const <Widget>[
  const packageGridTile(Colors.green, 'Night','/IntN'),
  const packageGridTile(Colors.green, 'Daily','/IntD'),
  const packageGridTile(Colors.lightBlue, 'Weekly','/IntW'),
  const packageGridTile(Colors.amber, 'Monthly','/IntM'),
  const packageGridTile(Colors.brown, 'weekend','/IntWE'),
];

class package extends StatefulWidget {
  @override
  _packageState createState() => _packageState();
}

class _packageState extends State<package> {

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Choose A Type Of Package'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/"),
          ),
        ),
        child:new Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: _widgetOptions[_selectedIndex]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.green[500],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            title: Text('Call'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sms),
            title: Text('SMS'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_export),
            title: Text('Internet'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange[800],
        onTap: _onItemTapped,
      ),
      drawer: SideBar(),
    );
  }
}


class packageGridTile extends StatelessWidget {
  const packageGridTile(this.backgroundColor,String this.values,String this.link);

  final Color backgroundColor;
  final String link;
  final String values;


  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {
            Navigator.pushNamed(context, link);
        },
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(values)
          ),
        ),
      ),
    );
  }
}

