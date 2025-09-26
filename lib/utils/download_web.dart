import 'dart:html' as html;
import 'package:flutter/services.dart' show rootBundle;

Future<void> downloadResume() async {
  final bytes = await rootBundle.load('assets/resume.pdf');
  final blob = html.Blob([bytes.buffer.asUint8List()], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..setAttribute("download", "Abdul_Haseeb_Resume.pdf")
    ..click();
  html.Url.revokeObjectUrl(url);
}
