import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kazumi/bean/widget/error_widget.dart';
import 'package:path_provider/path_provider.dart';
import 'package:kazumi/l10n/l10n.dart';

class StorageErrorPage extends StatelessWidget {
  const StorageErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.internalError),
      ),
      body: Center(
        child: FutureBuilder<Directory>(
          future: getApplicationSupportDirectory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final supportDir = snapshot.data;
              final path =
                  supportDir != null ? '$supportDir' : context.l10n.unknownPath;
              return GeneralErrorWidget(
                errMsg: context.l10n.storageInitializationError(path),
                actions: [
                  GeneralErrorButton(
                    onPressed: () {
                      exit(0);
                    },
                    text: context.l10n.exitProgram,
                  ),
                ],
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
