import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ussd/ussd.dart';


List<StaggeredTile> _staggeredTiles=[
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
];
List<Widget> _tiles=[
  const intMGridTile(Colors.green,'\$55 => 500 MB','1*1*2*3*1#'),
  const intMGridTile(Colors.green,'\$10 => 1 GB','1*1*2*3*2#'),
  const intMGridTile(Colors.green,'\$190 => 2 GB','1*1*2*3*3#'),
  const intMGridTile(Colors.green,'\$350 => 4 GB','1*1*2*3*4#'),
  const intMGridTile(Colors.green,'\$600 => 8 GB','1*1*2*3*5#'),
  const intMGridTile(Colors.green,'\$700 => 10 GB','1*1*2*3*6#'),
  const intMGridTile(Colors.green,'\$1300 => 20 GB','1*1*2*3*7#'),
  const intMGridTile(Colors.green,'\$1800 => 30 GB','1*1*2*3*8#'),
];

class internetMonthly extends StatefulWidget {
  @override
  _internetMonthlyState createState() => _internetMonthlyState();
}

class _internetMonthlyState extends State<internetMonthly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monthly package'),
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


class intMGridTile extends StatelessWidget {
  const intMGridTile(this.backgroundColor,String this.name,String this.values);

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