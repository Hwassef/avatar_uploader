import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> showOpenSettingsAlertDialog({required BuildContext context}) {
  // Create button
  Widget cancelButton = ElevatedButton(
    child: const Text("Cancel"),
    onPressed: () => Navigator.pop(context),
  );
  Widget okButton = OutlinedButton(
    child: const Text("open setting"),
    onPressed: () {
      openAppSettings();
      Navigator.pop(context);
    },
  );

  return showDialog(
      context: context,
      builder: (BuildContext context) {
        // show the dialog
        return AlertDialog(
          title: const Text('Enable permission from settings'),
          actions: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: cancelButton,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: okButton,
                  ),
                ],
              ),
            ),
          ],
        );
      });
}
