import 'package:flutter/material.dart';
import 'package:rick_and_morty/asset/translations/translationsExport.dart';

import '../../../repo/export_repo.dart';
import '../../../theme/enums.dart';
import '../widgetsEpisodeTile/export_episode_tile_widgets.dart';

class InfoEpisodesWidget extends StatelessWidget {
  const InfoEpisodesWidget({
    Key? key,
    required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: Paddings.twenty),
              child: Text(
                LocaleKeys.episodes.tr(),
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) {
            return EpisodeTileWidget(url: character!.episode[i]);
          },
          itemCount: character!.episode.length,
        ),
      ],
    );
  }
}
