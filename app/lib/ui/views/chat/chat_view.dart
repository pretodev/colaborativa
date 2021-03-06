import 'package:colaborativa_app/core/enums/message_types_enum.dart';
import 'package:colaborativa_app/ui/controllers/auth_controller.dart';
import 'package:colaborativa_app/ui/controllers/chat_controller.dart';
import 'package:colaborativa_app/ui/navigation/routes.dart';
import 'package:colaborativa_app/ui/views/chat/widgets/chat_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/page_body.dart';
import '../chat_input_view.dart';
import 'widgets/chat_message_widget.dart';

const myMessage = Color(0xFFFFC107);
const otherMessage = Color(0xFF17A2B8);
const systemMessage = Color(0xFF28A745);

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  late final AuthController auth;

  void sendMessage() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) => const ChatInputView(),
    );
  }

  void menuClicked(MessageTypesEnum type) {
    if (type == MessageTypesEnum.custom) {
      return sendMessage();
    }
    Navigator.pushNamed(
      context,
      Routes.chatMessageSelector,
      arguments: type,
    );
  }

  @override
  void initState() {
    super.initState();
    auth = context.read<AuthController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mensagens'),
        centerTitle: true,
      ),
      body: PageBody(
        child: Column(
          children: [
            Expanded(
              child: Consumer<ChatController>(
                builder: (context, chat, chil) {
                  return ListView.builder(
                    reverse: true,
                    itemCount: chat.messages.length,
                    itemBuilder: (_, index) {
                      final message = chat.messages[index];
                      final emitterId = message.emitter.id;
                      final isMe = emitterId == auth.user?.id;
                      final Color color = isMe
                          ? myMessage
                          : message.emitter.name == 'ColaborAtiva'
                              ? systemMessage
                              : otherMessage;

                      return ChatMessageWidget(
                        message: message,
                        isMe: isMe,
                        titleColor: color,
                        isAvatarVisible: index == 0 ||
                            emitterId != chat.messages[index - 1].emitter.id,
                        isNameVisible: index == chat.messages.length - 1 ||
                            emitterId != chat.messages[index + 1].emitter.id,
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            ChatMenuWidget(
              onItemClicked: menuClicked,
            ),
          ],
        ),
      ),
    );
  }
}
