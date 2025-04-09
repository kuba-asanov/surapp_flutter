import 'package:url_launcher/url_launcher.dart';

class AppUrlLauncher {
  //
  static Future<bool> open(String link) async {
    final uri = Uri.parse(link);
    final isValid = await canLaunchUrl(uri);
    if (isValid) await launchUrl(uri, mode: LaunchMode.externalApplication);
    return isValid;
  }

  static Future<bool> openInApp(String link) async {
    final uri = Uri.parse(link);
    final isValid = await canLaunchUrl(uri);
    if (isValid) await launchUrl(uri, mode: LaunchMode.inAppWebView);
    return isValid;
  }

  static Future<bool> browse(String url) {
    if (url.startsWith('https://') || url.startsWith('http://')) {
      return open(url);
    }
    return open('https://$url');
  }

  static Future<bool> call(String phone) {
    return open('tel:$phone');
  }

  static Future<bool> whatsApp(String phone) {
    final result = phone.replaceAll(RegExp(r'\D'), '');

    return browse('api.whatsapp.com/send/?phone=$result');
  }
}
