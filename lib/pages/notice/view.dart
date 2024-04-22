part of notice_page;

class NoticePage extends StatelessWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Notification'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverSafeArea(
            minimum: const EdgeInsets.symmetric(horizontal: AppTheme.margin),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 20.w),
                  child: const BuildNoticeItem(),
                );
              }, childCount: 10),
            ),
          ),
        ],
      ),
    );
  }
}
