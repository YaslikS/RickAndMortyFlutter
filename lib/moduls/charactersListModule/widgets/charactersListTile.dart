import 'package:flutter/material.dart';

import '../../../theme/enums.dart';
import '/repo/repoExport.dart';

class CharacterListTile extends StatelessWidget {
  const CharacterListTile({
    Key? key,
    required this.characterItem,
    required this.itemTile,
  }) : super(key: key);

  final Character characterItem;
  final int itemTile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GridTile(
        child: InkResponse(
      enableFeedback: true,
      onTap: () {
        Navigator.of(context).pushNamed(
          '/info',
          arguments: characterItem,
        );
      },
      child: Padding(
        padding: EdgeInsets.all(Paddings.twelve),
        child: Container(
          padding: EdgeInsets.all(Paddings.twelve),
          decoration: BoxDecoration(
            color: RaM_Colors.backgroundSecondary,
            borderRadius: BorderRadius.circular(Radiuses.twenty),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Radiuses.fifteen),
                child: Image.network(
                  characterItem.image,
                  width: Sizes.oneHundredThirty,
                  height: Sizes.oneHundredThirty,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Paddings.six),
                child: Text(
                  characterItem.name,
                  style: theme.textTheme.labelSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
