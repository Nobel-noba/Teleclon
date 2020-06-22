import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:teleclone/pages/drawer.dart';


List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 3),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(4, 2),
];

List<Widget> _tiles = const <Widget>[
  const homeGridTile(Colors.green, Icons.monetization_on,'/Charge'),
  const homeGridTile(Colors.lightBlue, Icons.send,'/ChargeForOthers'),
  const homeGridTile(Colors.amber, Icons.autorenew,'/CheckBalance'),
  const homeGridTile(Colors.brown, Icons.add_to_home_screen,'/CallMeBack'),
  const homeGridTile(Colors.deepOrange, Icons.headset_mic,''),
  const homeGridTile(Colors.indigo, Icons.redeem,'/Package'),
  const homeGridTile(Colors.red, Icons.info,'/Info'),
];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('TELECLONE'),
      ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/"),
          ),
        ),
        child: new Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: new StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: const EdgeInsets.all(4.0),
            )),
      ),
      drawer: SideBar(),
    );
  }
}

class homeGridTile extends StatelessWidget {
  const homeGridTile(this.backgroundColor, this.iconData,String this.values);

  final Color backgroundColor;
  final IconData iconData;
  final String values;


  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {
          if(values.isEmpty){
            launch('tel:994');
          }else{
            Navigator.pushNamed(context, values);
          }
        },
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
