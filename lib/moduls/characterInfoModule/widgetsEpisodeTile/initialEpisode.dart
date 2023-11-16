import 'package:flutter/material.dart';

import '../../../theme/enums.dart';

class InitialEpisode extends StatelessWidget {
  const InitialEpisode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Container(
                height: Sizes.twenty,
                width: Sizes.oneHundred,
                decoration: BoxDecoration(
                  color: RaM_Colors.background,
                  borderRadius: BorderRadius.circular(Radiuses.five),
                ),
              ),
              SizedBox(height: Spaces.eight),
              Container(
                height: Sizes.twenty,
                width: Sizes.oneHundredFifty,
                decoration: BoxDecoration(
                  color: RaM_Colors.background,
                  borderRadius: BorderRadius.circular(Radiuses.five),
                ),
              ),
            ],
          ),
        ));
  }
}
