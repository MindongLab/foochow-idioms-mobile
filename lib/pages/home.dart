import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildSectionTitle(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 5, 0, 5),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).hintColor,
            fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildFeatureCard(Color bgColor, final String imgUrl) {
    return Card(
      margin: EdgeInsets.all(5.5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(imgUrl)
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      color: bgColor,
      elevation: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 28),
          _buildSectionTitle(context, '每日推送'),
          Container(
            height: 140,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildFeatureCard(Color(0xffC6A66F), 'assets/banner3.png'),
                _buildFeatureCard(Color(0xff49CC76), 'assets/banner1.png'),
                _buildFeatureCard(Colors.red, 'assets/banner2.png'),
              ],
            ),
          ),
          _buildSectionTitle(context, '特色条目'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('分类')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我')),
        ],
        currentIndex: 0,
        fixedColor: Colors.deepPurple,
        onTap: (_) {},
      ),
    );
  }
}
