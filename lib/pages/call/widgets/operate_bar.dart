part of call_page;

class BuildOperateBar extends StatelessWidget {
  final Function()? onAccept;
  final Function()? onEnd;
  final Function()? onSpeaker;

  const BuildOperateBar({
    Key? key,
    this.onAccept,
    this.onEnd,
    this.onSpeaker,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton.icon(
          padding: EdgeInsets.all(15.w),
          shape: CustomButtonShape.stadium,
          foregroundColor: AppTheme.warning,
          icon: Icon(Ionicons.close_circle, size: 46.w),
          onPressed: onEnd,
        ),
        CustomButton.icon(
          padding: EdgeInsets.all(15.w),
          shape: CustomButtonShape.stadium,
          foregroundColor: AppTheme.success,
          icon: Icon(Ionicons.call, size: 46.w),
          onPressed: onAccept,
        ),
        CustomButton.icon(
          padding: EdgeInsets.all(15.w),
          shape: CustomButtonShape.stadium,
          icon: Icon(Ionicons.volume_mute, size: 46.w),
          onPressed: onSpeaker,
        ),
      ],
    );
  }
}
