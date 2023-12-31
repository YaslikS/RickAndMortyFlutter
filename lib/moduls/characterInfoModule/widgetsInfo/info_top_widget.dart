import 'package:flutter/material.dart';

import '../../../repo/export_repo.dart';
import '../../../theme/enums.dart';

class InfoTopWidget extends StatelessWidget {
  const InfoTopWidget({
    Key? key,
    required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(Rounding.twenty),
          child: Image.network(
            character!.image,
            width: Sizes.oneHundredEighty,
            height: Sizes.oneHundredEighty,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: Paddings.twentyFour, bottom: Paddings.sixteen),
          child: Text(
            character!.name,
            style: theme.textTheme.labelLarge,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: Paddings.ten),
          child: Text(
            character?.status ?? "None",
            style: theme.textTheme.labelSmall,
          ),
        ),
      ],
    );
  }
}
