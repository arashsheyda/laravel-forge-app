import 'package:url_launcher/url_launcher.dart';

class UrlService {
  static Future open(String url) async {
    url = url.replaceAll('http://', '');
    url = url.replaceAll('https://', '');

    final Uri uri = Uri.parse('https://$url');
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }
}
