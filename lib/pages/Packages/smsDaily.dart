import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ussd/ussd.dart';


List<StaggeredTile> _staggeredTiles=[
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
];
List<Widget> _tiles=[
  const smsDGridTile(Colors.green,'\$2 => 18 SMS','1*1*3*1*1#'),
  const smsDGridTile(Colors.green,'\$3 => 35 SMS','1*1*3*1*2#'),
  const smsDGridTile(Colors.green,'\$5 => 70 SMS','1*1*3*1*3#'),
];

class smsDaily extends StatefulWidget {
  @override
  _smsDailyState createState() => _smsDailyState();
}

class _smsDailyState extends State<smsDaily> {
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


class smsDGridTile extends StatelessWidget {
  const smsDGridTile(this.backgroundColor,String this.name,String this.values);

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