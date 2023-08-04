import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import '../constants/style.dartstyle.dart';
import '../responsive.dart';

/// pdf picker
class PickPDF extends StatefulWidget {
  const PickPDF({Key? key,})
      : super(key: key);

  @override
  State<PickPDF> createState() => _PickPDFState();
}

class _PickPDFState extends State<PickPDF> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  PdfViewerController pdfViewerController = PdfViewerController();
  FilePickerResult? result;
  String? fileName;
  PlatformFile? pickedFile;
  bool isLoading = false;
  File? fileToDisplay;

  void _pickPDF() async {
    try {
      setState(() {
        isLoading = true;
      });
      result = await FilePicker.platform.pickFiles(
        dialogTitle: 'Select Resume',
        type: FileType.custom,
        allowedExtensions: ['pdf','jpg'],
        allowMultiple: false,
      );

      if (result != null) {
        fileName = result!.files.first.name;
        pickedFile = result!.files.first;
        fileToDisplay = File(
          pickedFile!.path.toString(),
        );
        print("fileName: $fileName");
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print("error loading the file");
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              _pickPDF();
            },
            child: pickedFile != null
                ? const Text("Change Document")
                : const Text("Add Document"),
          ),
          SizedBox(
            height: 20,
          ),
          if (pickedFile != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: wDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_up,
                          color: primary,
                        ),
                        onPressed: () {
                          pdfViewerController.previousPage();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: primary,
                        ),
                        onPressed: () {
                          pdfViewerController.nextPage();
                        },
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        color: Colors.white,
                        width: Responsive.isDesktop(context)
                            ? 800
                            : size.width / 1.1,
                        height: Responsive.isMobile(context)? 400 : 900,
                        child: pickedFile != null
                            ? SfPdfViewerTheme(
                            data: SfPdfViewerThemeData(
                              backgroundColor: Colors.white,
                            ),
                            child:SfPdfViewer.file(
                                fileToDisplay!,
                                scrollDirection: PdfScrollDirection.horizontal,
                                controller: pdfViewerController,
                                enableDoubleTapZooming: false,
                                enableTextSelection: false,
                                pageLayoutMode: PdfPageLayoutMode.single,
                                canShowScrollHead: false,
                                key: _pdfViewerKey,
                              ),)
                            : SizedBox(),
                      ),
                      Container(
                        color: Colors.transparent,
                        width: Responsive.isDesktop(context)
                            ? 800
                            : size.width / 1.1,
                        height:Responsive.isMobile(context)? 385 : 885,
                      ),
                    ],
                  ),
                ),
              ],
            )
          else
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Add only the required document",
                style: MyTextStyles.regularPrimary,
              ),
            ),
        ],
      ),
    );
  }
}
