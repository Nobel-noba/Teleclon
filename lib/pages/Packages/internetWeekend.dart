import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ussd/ussd.dart';


List<StaggeredTile> _staggeredTiles=[
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 1),
];
List<Widget> _tiles=[
  const intWEGridTile(Colors.green,'\$35 => 500 MB','1*1*2*5*1#'),
  const intWEGridTile(Colors.green,'\$60 => 1 GB','1*1*2*5*2#'),
  const intWEGridTile(Colors.green,'\$110 => 2 GB','1*1*2*5*3#'),
];

class inetrnetWeekend extends StatefulWidget {
  @override
  _inetrnetWeekendState createState() => _inetrnetWeekendState();
}

class _inetrnetWeekendState extends State<inetrnetWeekend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weekend package'),
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

class intWEGridTile extends StatelessWidget {
  const intWEGridTile(this.backgroundColor,String this.name,String this.values);

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
