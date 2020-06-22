import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ussd/ussd.dart';


List<StaggeredTile> _staggeredTiles=[
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
];
List<Widget> _tiles=[
  const intDGridTile(Colors.green,'\$3 => 25 MB','1*1*2*1*1#'),
  const intDGridTile(Colors.green,'\$5 => 45 MB','1*1*2*1*2#'),
  const intDGridTile(Colors.green,'\$10 => 100 MB','1*1*2*1*3#'),
  const intDGridTile(Colors.green,'\$15 => 200 MB','1*1*2*1*4#'),
  const intDGridTile(Colors.green,'\$35 => 500 MB','1*1*2*1*5#'),
];

class internetDaily extends StatefulWidget {
  @override
  _internetDailyState createState() => _internetDailyState();
}

class _internetDailyState extends State<internetDaily> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily package'),
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
          child: StaggeredGridView.count(
            crossAxisCount: 4,
            staggeredTiles: _staggeredTiles,
            children: _tiles,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            padding: const EdgeInsets.all(4.0),
          ),
        ),
      ),
    );
  }
}


class intDGridTile extends StatelessWidget {
  const intDGridTile(this.backgroundColor,String this.name,String this.values);

  final Color backgroundColor;
  final String name;
  final String values;


  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: ()=>Ussd.runUssd('*999*$values'),
        child: new Center(
          child: new Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(name)
          ),
        ),
      ),
    );
  }
}