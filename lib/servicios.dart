import 'match.dart';
import 'package:http/http.dart' as http;

class Services {
  //
  static Uri uri = Uri.parse('https://api.cricket.com.au/matches');

  static Future<List<Match>> getMatches() async {
    try {
      final response = await http.get(uri);

      if (200 == response.statusCode) {
        final List<Match> match = matchesFromJson(response.body).cast<Match>();
        return match;
      } else {
        return <Match>[];
      }
    } catch (e) {
        return <Match>[];
    }
  }

}
