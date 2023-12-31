import 'package:flutter/material.dart';
import 'package:rick_and_morty/repo/export_repo.dart';

import '../../../theme/enums.dart';

class LoadedEpisode extends StatelessWidget {
  const LoadedEpisode({
    Key? key,
    required this.episode,
  }) : super(key: key);

  final EpisodeTile episode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
        padding: EdgeInsets.only(
            right: Paddings.twenty,
            left: Paddings.twenty,
            top: Paddings.sixteen),
        child: Container(
          padding: EdgeInsets.all(Paddings.sixteen),
          decoration: BoxDecoration(
            color: AppColors.backgroundSecondary,
            borderRadius: BorderRadius.circular(Rounding.twenty),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                episode.name,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: Spaces.eight),
              Text(
                episode.episode,
                style: theme.textTheme.labelSmall,
              ),
            ],
          ),
        ));
  }
}
