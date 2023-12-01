import 'package:flutter/material.dart';
import 'package:rick_and_morty/asset/translations/translationsExport.dart';

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
            LocaleKeys.info.tr(),
            style: theme.textTheme.labelLarge,
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
              color: AppColors.backgroundSecondary,
              borderRadius: BorderRadius.circular(Rounding.twenty),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      LocaleKeys.species.tr(),
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: AppColors.grey,
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
                      LocaleKeys.type.tr(),
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: AppColors.grey,
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
                      LocaleKeys.gender.tr(),
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: AppColors.grey,
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
