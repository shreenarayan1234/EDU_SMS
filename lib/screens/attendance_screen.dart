import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.attendance),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(AppLocalizations.of(context)!.attendance),
      ),
    );
  }
}
