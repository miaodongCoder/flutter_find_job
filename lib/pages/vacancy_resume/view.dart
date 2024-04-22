part of vacancy_resume;

class VacancyResumePage extends StatefulWidget {
  const VacancyResumePage({Key? key}) : super(key: key);

  @override
  State<VacancyResumePage> createState() => _VacancyResumePageState();
}

class _VacancyResumePageState extends State<VacancyResumePage> {
  final PdfControllerPinch _controller = PdfControllerPinch(
    document: PdfDocument.openAsset('assets/hello.pdf'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Resume'),
      ),
      body: PdfViewPinch(controller: _controller),
    );
  }
}
