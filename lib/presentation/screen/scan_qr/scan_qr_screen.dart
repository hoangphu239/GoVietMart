import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';
import 'package:hunty/theme/theme.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';


class ScanQRScreen extends StatefulWidget {
  const ScanQRScreen({super.key});

  @override
  State<ScanQRScreen> createState() => _ScanQRScreenState();
}

class _ScanQRScreenState extends State<ScanQRScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String? result;
  QRViewController? controller;

  @override
  void initState() {
    super.initState();
    controller?.resumeCamera();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    controller?.resumeCamera();
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    return AppScaffold(
      statusBarColor: kColorTransparent,
      statusBarIconBrightness: Brightness.light,
      child: QRView(
        key: qrKey,
        onQRViewCreated: (controller) {
          this.controller = controller;
          controller.scannedDataStream.listen((scanData) {
            setState(() {
              result = scanData.code;
            });
          });
        },
        overlay: QrScannerOverlayShape(
          borderColor: kColorYellow,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea,
        ),
        onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
      ),
    );
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }
}
