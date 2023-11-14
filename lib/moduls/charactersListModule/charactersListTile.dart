import 'package:flutter/material.dart';

import '/repo/repoExport.dart';

class CharacterListTile extends StatelessWidget {
  const CharacterListTile({
    Key? key,
    required this.characterItem,
    required this.itemTile,
  }) : super(key: key);

  final Character characterItem;
  final int itemTile;

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: InkResponse(
      enableFeedback: true,
      onTap: () {
        Navigator.of(context).pushNamed(
          '/info',
          arguments: characterItem,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 38, 42, 55),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  characterItem.image,
                  width: 130,
                  height: 130,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  characterItem.name,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
