import 'package:flutter/material.dart';

import '../../../repo/repoExport.dart';
import '../../../theme/enums.dart';
import '../widgetsEpisodeTile/episodeTileWidgetsExport.dart';

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
                "Episodes",
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) {
            return EpisodeTileWidget(url: character!.episodes[i]);
          },
          itemCount: character!.episodes.length,
        ),
      ],
    );
  }
}
