import 'package:flutter/material.dart';
import '../constants.dart' show AppColors, AppStyles, Constants;
import '../modal/conversation.dart' show mockConversation, Conversation;

class _ConversationItem extends StatelessWidget {
  const _ConversationItem({Key key, this.conversation})
      : assert(conversation != null),
        super(key: key);

  final Conversation conversation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: Color(AppColors.DividerColor),
                width: Constants.DividerWidth)),
        color: Color(AppColors.ConversationItemBg),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
            conversation.avatar,
            width: Constants.ConversationAvatarSize,
            height: Constants.ConversationAvatarSize,
          ),
          Container(width: 10.0),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(conversation.title, style: AppStyles.TitleStyle),
              Text(conversation.des, style: AppStyles.DesStyle)
            ],
          )),
          Container(width: 10.0),
          Column(
            children: <Widget>[Text(conversation.updateAt, style: AppStyles.DesStyle)],
          )
        ],
      ),
    );
  }
}

class ConversationPage extends StatefulWidget {
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return _ConversationItem(conversation: mockConversation[index]);
      },
      itemCount: mockConversation.length,
    );
  }
}
