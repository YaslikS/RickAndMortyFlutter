import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../repo/repoExport.dart';
import '../../../theme/enums.dart';
import '../bloc/characterListBloc.dart';

class FailureLoadingCharacterList extends StatelessWidget {
  FailureLoadingCharacterList({
    Key? key, // required this._characterListBloc,
  }) : super(key: key);

  final _characterListBloc =
      CharacterListBloc(GetIt.I<AbstractCharactersRepo>());

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Something went wrong',
          style: theme.textTheme.displaySmall,
        ),
        Text(
          'Please try again later',
          style: theme.textTheme.displaySmall,
        ),
        SizedBox(height: Spaces.thirtyTwo),
        TextButton(
            onPressed: () {
              _characterListBloc.add(LoadCharacterList());
            },
            child: const Text('Try again')),
      ],
    ));
  }
}
