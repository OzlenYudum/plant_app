import 'package:url_launcher/url_launcher.dart';

Future<void> openExternal(String url) async {
  final uri = Uri.parse(url);            // Dart'ın yerleşik Uri'ı
  final ok = await launchUrl(
    uri,
    mode: LaunchMode.externalApplication, // dış tarayıcıda aç
  );
  if (!ok) {
    // hata yönetimi (örn. snackbar/log)
  }
}