import 'package:flutter/material.dart';
import 'package:rick_and_morty/repo/repoExport.dart';

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
            color: RaM_Colors.backgroundSecondary,
            borderRadius: BorderRadius.circular(Radiuses.twenty),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                episode.name,
                style: theme.textTheme.labelSmall?.copyWith(fontSize: 18),
              ),
              SizedBox(height: Spaces.eight),
              Text(
                episode.episode,
                style: theme.textTheme.labelSmall?.copyWith(
                  fontSize: 15,
                  color: RaM_Colors.green,
                ),
              ),
            ],
          ),
        ));
  }
}
