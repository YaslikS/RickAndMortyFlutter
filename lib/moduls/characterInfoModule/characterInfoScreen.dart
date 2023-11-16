import 'package:flutter/material.dart';

import '../../repo/repoExport.dart';
import 'widgetsInfo/infoWidgetsExport.dart';

class CharacterInfoScreen extends StatefulWidget {
  const CharacterInfoScreen({
    super.key,
  });

  @override
  State<CharacterInfoScreen> createState() => _CharacterInfoScreenPageState();
}

class _CharacterInfoScreenPageState extends State<CharacterInfoScreen> {
  Character? character;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is Character, 'args must be Character');
    character = args as Character;
    super.didChangeDependencies();
  }

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
              InfoTopWidget(character: character!),
              InfoInfoWidget(character: character!),
              InfoOriginWidget(character: character!),
              InfoEpisodesWidget(character: character!),
            ],
          ),
        ),
      ),
    );
  }
}
