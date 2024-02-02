import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/global_widgets/appbar/appbar_home.dart';
import 'package:resoce/models/client.dart';
import 'package:resoce/modules/dashboard_page/chat/controllers/chat_controller.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/body_discussion.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/new_chat_button.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isFabVisible = true;
  double _scrollPosition = 0.0;
  double _lastScrollPosition = 0.0;
  late Client client;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

 

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    _scrollPosition = _scrollController.position.pixels;
    if (_scrollPosition <= 0) {
      setState(() {
        _isFabVisible = true;
      });
    } else if (_scrollPosition > _lastScrollPosition) {
      setState(() {
        _isFabVisible = false;
      });
    } else {
      setState(() {
        _isFabVisible = true;
      });
    }
    _lastScrollPosition = _scrollPosition;
  }

  @override
  Widget build(BuildContext context) {
    Get.put(ChatController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarHome(titleAppbar: 'chats'),
      body: BodyDiscussionPage(scrollController: _scrollController),
      
      floatingActionButton: Visibility(
        visible: _isFabVisible,
        child: const NewChatButton(),
      ),
  
    );
  }
}
