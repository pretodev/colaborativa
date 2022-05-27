import 'package:colaborativa_app/core/enums/message_types_enum.dart';
import 'package:colaborativa_app/ui/navigation/routes.dart';
import 'package:colaborativa_app/ui/views/chat/widgets/chat_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/chat_service.dart';
import '../../../core/entities/message.dart';
import '../../widgets/page_body.dart';
import '../chat_input_view.dart';
import 'widgets/chat_message.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
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
  Widget build(BuildContext context) {
    final chat = context.read<ChatService>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mensagens'),
        centerTitle: true,
      ),
      body: PageBody(
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<List<Message>>(
                  stream: chat.messages,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const SizedBox();
                    }
                    final messages = snapshot.data ?? [];
                    return ListView.builder(
                      reverse: true,
                      itemCount: messages.length,
                      itemBuilder: (_, index) {
                        final message = messages[index];
                        final emitterId = message.emitter.id;
                        return ChatMessage(
                          message: message,
                          isAvatarVisible: index == 0 ||
                              emitterId != messages[index - 1].emitter.id,
                          isNameVisible: index == messages.length - 1 ||
                              emitterId != messages[index + 1].emitter.id,
                        );
                      },
                    );
                  }),
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
