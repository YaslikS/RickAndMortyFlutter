import 'package:flutter/material.dart';

import '../../../repo/repoExport.dart';
import '../../../theme/enums.dart';

class InfoOriginWidget extends StatelessWidget {
  const InfoOriginWidget({
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
            "Origin",
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
            child: Row(
              children: [
                Image.asset(
                  "lib/asset/RaM_planetIcon.png",
                  height: Sizes.seventyTwo,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Paddings.sixteen, right: Paddings.sixteen),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Sizes.twoHundred,
                        child: Text(
                          character?.origin.name ?? "null",
                          style: theme.textTheme.labelSmall?.copyWith(fontSize: 18),
                        ),
                      ),
                      SizedBox(height: Spaces.eight),
                      Text(
                        "Planet",
                        style: theme.textTheme.labelSmall?.copyWith(
                          fontSize: 15,
                          color: RaM_Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
