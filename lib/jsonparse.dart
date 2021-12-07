import 'package:flutter/material.dart';
import 'match.dart';
import 'servicios.dart';

class JsonParseDemo extends StatefulWidget {
  //
  const JsonParseDemo({Key? key}) : super(key: key);

  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  //
  late List<Match> _match;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getMatches().then((matches) {
      setState(() {
        _match = matches;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? 'Loading...' : 'Matches'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: null == _match ? 0 : _match.length,
          itemBuilder: (context, index) {
            Match match = _match[index];
            return ListTile(
              title: Text(match.name),
              subtitle: Text(match.status),
            );
          },
        ),
      ),
    );
  }
}
