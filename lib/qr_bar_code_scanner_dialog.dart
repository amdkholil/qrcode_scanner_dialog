import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'qr_bar_code_scanner_dialog_platform_interface.dart';

import 'package:flutter/widgets.dart';
export 'package:qr_code_scanner/src/types/camera.dart';

class QrBarCodeScannerDialog {
  Future<String?> getPlatformVersion() {
    return QrBarCodeScannerDialogPlatform.instance.getPlatformVersion();
  }

  void getScannedQrBarCode({BuildContext? context, required Function(String?) onCode, CameraFacing? cameraFacing}) {
    QrBarCodeScannerDialogPlatform.instance
        .scanBarOrQrCode(context: context, onScanSuccess: onCode, cameraFacing: cameraFacing);
  }
}
