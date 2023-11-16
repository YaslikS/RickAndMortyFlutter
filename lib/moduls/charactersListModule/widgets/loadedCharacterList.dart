import 'package:flutter/material.dart';
import 'package:rick_and_morty/theme/enums.dart';

import '../bloc/characterListBloc.dart';
import 'characterListWidgetsExport.dart';

class LoadedCharacterList extends StatelessWidget {
  const LoadedCharacterList({
    Key? key,
    required this.state,
  }) : super(key: key);

  final CharacterListLoaded state;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(
          top: Paddings.six,
          bottom: Paddings.twelve,
          left: Paddings.six,
          right: Paddings.six),
      itemCount: state.characterList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1 / 1.2,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, i) {
        final characterItem = state.characterList[i];
        return CharacterListTile(
          characterItem: characterItem,
          itemTile: i,
        );
      },
    );
  }
}
