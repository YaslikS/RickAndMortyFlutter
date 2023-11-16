import 'package:flutter/material.dart';

import '../../repo/repoExport.dart';
import 'episodeTileWidget.dart';

class CharacterInfoScreen extends StatefulWidget {
  const CharacterInfoScreen({
    super.key,
  });

  @override
  State<CharacterInfoScreen> createState() => _CharacterInfoScreenPageState();
}

class _CharacterInfoScreenPageState extends State<CharacterInfoScreen> {
  Character? character;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is Character, 'args must be Character');
    character = args as Character;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Column(
                //  TOP
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      character!.image,
                      width: 180,
                      height: 180,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 16),
                    child: Text(
                      character!.name,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      character?.status ?? "None",
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                //  INFO
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Info",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20, bottom: 20, left: 20, top: 10),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 38, 42, 55),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Species",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              const Spacer(),
                              Text(
                                character?.species ?? "None",
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              const Text(
                                "Type",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              const Spacer(),
                              Container(
                                alignment: Alignment.bottomRight,
                                width: 210,
                                child: Text((
                                    character?.type != null &&
                                        character!.type.isNotEmpty
                                )
                                      ? character!.type
                                      : "None",
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              const Text(
                                "Gender",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              const Spacer(),
                              Text(
                                character?.gender ?? "None",
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                //  ORIGIN
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Origin",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20, bottom: 20, left: 20, top: 10),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 38, 42, 55),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "lib/asset/RaM_planetIcon.png",
                            height: 72,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 210,
                                  child: Text(
                                    character?.origin.name ?? "null",
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  "Planet",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.green,
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
              ),
              // EPISODES
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Episodes",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) {
                    return EpisodeTileWidget(url: character!.episodes[i]);
                  },
                  itemCount: character!.episodes.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
