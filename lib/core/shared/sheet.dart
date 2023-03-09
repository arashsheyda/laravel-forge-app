import 'package:flutter/cupertino.dart';
// import 'package:flutter_gen/gen_l10n/app_localization.dart';

class SheetWidget {
  static show({
    required BuildContext context,
    required String title,
    Widget? message,
    List<CupertinoActionSheetAction>? actions,
    String? cancel,
  }) {
    return showCupertinoModalPopup(
      context: context,
      builder: (ctxt) {
        return CupertinoActionSheet(
          title: Text(title),
          message: message,
          actions: [
            ...actions ?? [],
            CupertinoActionSheetAction(
              isDestructiveAction: true,
              child: Text(cancel ?? 'close'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }
}
