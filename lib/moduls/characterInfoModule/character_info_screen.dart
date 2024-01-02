import 'package:flutter/material.dart';
import 'package:rick_and_morty/router/export_router.dart';

import '../../repo/export_repo.dart';
import 'widgetsInfo/export_info_widgets.dart';

@RoutePage()
class CharacterInfoScreen extends StatefulWidget {
  const CharacterInfoScreen({
    super.key,
    required this.character
  });

  final Character character;

  @override
  State<CharacterInfoScreen> createState() => _CharacterInfoScreenPageState();
}

class _CharacterInfoScreenPageState extends State<CharacterInfoScreen> {
  // Character? character;

  // @override
  // void didChangeDependencies() {
  //   final args = ModalRoute.of(context)?.settings.arguments;
  //   assert(args != null && args is Character, 'args must be Character');
  //   widget.character = args as Character;
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: <Widget>[
              InfoTopWidget(character: widget.character),
              InfoInfoWidget(character: widget.character),
              InfoOriginWidget(character: widget.character),
              InfoEpisodesWidget(character: widget.character),
            ],
          ),
        ),
      ),
    );
  }
}
