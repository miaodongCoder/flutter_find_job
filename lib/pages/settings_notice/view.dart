part of settings_notice_page;

class SettingsNoticePage extends StatelessWidget {
  const SettingsNoticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Notification'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: AppTheme.margin),
          child: CustomCellGroup(
            children: [
              CustomCell(
                title: const Text('New tips'),
                value: CustomSwitch(
                  value: false,
                  onChanged: (value) {},
                ),
              ),
              CustomCell(
                title: const Text('New service'),
                value: CustomSwitch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
