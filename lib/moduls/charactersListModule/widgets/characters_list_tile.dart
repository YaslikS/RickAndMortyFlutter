import 'package:flutter/material.dart';
import 'package:rick_and_morty/router/export_router.dart';

import '../../../theme/enums.dart';
import '/repo/export_repo.dart';

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
        AutoRouter.of(context)
            .push(CharacterInfoRoute(character: characterItem));
        // Navigator.of(context).pushNamed(
        //   '/info',
        //   arguments: characterItem,
        // );
      },
      child: Padding(
        padding: EdgeInsets.all(Paddings.twelve),
        child: Container(
          padding: EdgeInsets.all(Paddings.twelve),
          decoration: BoxDecoration(
            color: AppColors.backgroundSecondary,
            borderRadius: BorderRadius.circular(Rounding.twenty),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Rounding.fifteen),
                child: Image.network(
                  characterItem.image,
                  width: Sizes.oneHundredThirty,
                  height: Sizes.oneHundredThirty,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: EdgeInsets.only(
                      right: Paddings.six,
                      left: Paddings.six,
                      top: Paddings.ten),
                  child: Text(
                    characterItem.name,
                    overflow: TextOverflow.visible,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
