import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meme_editor_app/presentation/widgets/meme_card.dart';
import 'package:meme_editor_app/shared/common_utils.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../application/meme/meme_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SmartRefresher(
          controller: context.read<MemeBloc>().state.refreshController,
          onRefresh: () {
            context.read<MemeBloc>().add(MemeEventStarted());
            context.read<MemeBloc>().state.refreshController.refreshCompleted();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField(
                          controller:
                              context.read<MemeBloc>().state.searchController,
                          decoration: InputDecoration(
                            labelText: 'Search',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            if (value.isEmpty) {
                              context.read<MemeBloc>().add(
                                MemeEventFilter(value),
                              );
                            }
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          final filter =
                              context
                                  .read<MemeBloc>()
                                  .state
                                  .searchController
                                  .text;
                          context.read<MemeBloc>().add(MemeEventFilter(filter));
                        },
                      ),
                    ],
                  ),
                ),
                BlocBuilder<MemeBloc, MemeState>(
                  builder: (context, state) {
                    return state.successOrFailureMeme.match(
                      () => SliverToBoxAdapter(
                        child: Center(child: CircularProgressIndicator()),
                      ),
                      (t) => t.fold(
                        (failures) => SliverToBoxAdapter(
                          child: Text(
                            CommonUtils.commonFailuresHandlerWidget(failures),
                          ),
                        ),
                        (meme) => SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                            childCount: state.memes.length,
                            (context, index) =>
                                MemeCard(meme: state.memes[index]),
                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 0.5,
                              ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
