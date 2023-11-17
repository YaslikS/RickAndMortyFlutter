import 'package:flutter/material.dart';

import '../../../repo/repoExport.dart';
import '../../../theme/enums.dart';

class InfoInfoWidget extends StatelessWidget {
  const InfoInfoWidget({
    Key? key,
    required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: Paddings.twenty),
          child: Text(
            "Info",
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              right: Paddings.twenty,
              bottom: Paddings.twenty,
              left: Paddings.twenty,
              top: Paddings.ten),
          child: Container(
            padding: EdgeInsets.all(Paddings.sixteen),
            decoration: BoxDecoration(
              color: RaM_Colors.backgroundSecondary,
              borderRadius: BorderRadius.circular(Radiuses.twenty),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Species",
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: RaM_Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      character?.species ?? "None",
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
                SizedBox(height: Spaces.eight),
                Row(
                  children: [
                    Text(
                      "Type",
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: RaM_Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: Sizes.twoHundred,
                      child: Text(
                        (character?.type != null && character!.type.isNotEmpty)
                            ? character!.type
                            : "None",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Spaces.eight),
                Row(
                  children: [
                    Text(
                      "Gender",
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: RaM_Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      character?.gender ?? "None",
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
