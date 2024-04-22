part of conversation_page;

class BuildOperateBar extends StatelessWidget {
  final TextEditingController? textInput;
  final void Function()? onSendText;

  const BuildOperateBar({
    Key? key,
    this.onSendText,
    this.textInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBottomAppBar(
      child: Row(
        children: [
          Expanded(
            child: CustomInput(
              hintText: 'Type message ...',
              minLines: 1,
              maxLines: 3,
              controller: textInput,
            ),
          ),
          SizedBox(width: 15.w),
          CustomButton.icon(
            padding: const EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            icon: Icon(Ionicons.send, size: 32.w),
            onPressed: onSendText,
          ),
        ],
      ),
    );
  }
}
