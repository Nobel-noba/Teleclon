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
  const callMGridTile(Colors.green,'\$40 => 100 min + 5 MB + 30 SMS','1*1*1*4*1#'),
  const callMGridTile(Colors.green,'\$60 => 166 min + 5 MB + 30 SMS','1*1*1*4*2#'),
  const callMGridTile(Colors.green,'\$100 => 280 min + 5 MB + 30 SMS','1*1*1*4*3#'),
  const callMGridTile(Colors.green,'\$140 => 415 min + 5 MB + 50 SMS','1*1*1*4*4#'),
  const callMGridTile(Colors.green,'\$150 => 450 min + 5 MB + 50 SMS','1*1*1*4*5#'),
  const callMGridTile(Colors.green,'\$200 => 600 min + 5 MB + 50 SMS','1*1*1*4*6#'),
  const callMGridTile(Colors.green,'\$250 => 750 min + 5 MB + 50 SMS','1*1*1*4*7#'),
  const callMGridTile(Colors.green,'\$270 => 830 min + 5 MB + 80 SMS','1*1*1*4*8#'),
  const callMGridTile(Colors.green,'\$300 => 930 min + 5 MB + 80 SMS','1*1*1*4*9#'),
  const callMGridTile(Colors.green,'\$350 => 1080 min + 50 MB + 80 SMS','1*1*1*4*10#'),
  const callMGridTile(Colors.green,'\$400 => 1230 min + 50 MB + 80 SMS','1*1*1*4*11#'),
  const callMGridTile(Colors.green,'\$450 => 1380 min + 50 MB + 80 SMS','1*1*1*4*12#'),
  const callMGridTile(Colors.green,'\$500 => 1545 min + 50 MB + 80 SMS','1*1*1*4*13#'),
  const callMGridTile(Colors.green,'\$540 => 1660 min + 50 MB + 100 SMS','1*1*1*4*14#'),
  const callMGridTile(Colors.green,'\$600 => 1845 min + 50 MB + 100 SMS','1*1*1*4*15#'),
  const callMGridTile(Colors.green,'\$1350 => 4150 min + 5 MB + 350 SMS','1*1*1*4*16#'),
];

class callMonthly extends StatefulWidget {
  @override
  _callMonthlyState createState() => _callMonthlyState();
}

class _callMonthlyState extends State<callMonthly> {
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
    );  }
}

class callMGridTile extends StatelessWidget {
  const callMGridTile(this.backgroundColor,String this.name,String this.values);

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
