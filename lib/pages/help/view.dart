part of help_page;

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Help'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: AppTheme.margin),
          child: CustomCellGroup(
            children: [
              CustomCell(
                title: const Text('FAQ'),
                onTap: () => Get.toNamed(Routes.helpFAQ),
              ),
              CustomCell(
                title: const Text('Terms & Conditions'),
                onTap: () {},
              ),
              CustomCell(
                title: const Text('Privay Policy'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
