import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meme_editor_app/shared/routes.dart';

import '../../domain/model/meme.dart';
import '../../shared/route_locations.dart';

class Detail extends StatelessWidget {
  final Meme meme;
  const Detail({super.key, required this.meme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meme.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => goRoute.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              goRoute.pushNamed(RouteLocationsExtension.edit, extra: meme);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            CachedNetworkImage(
              imageUrl: meme.url,
              placeholder: (context, url) {
                return const Center(child: CircularProgressIndicator());
              },
              errorWidget: (context, url, error) {
                return const Icon(Icons.error);
              },
            ),
            const SizedBox(height: 20),
            Text(
              'width ${meme.width} x height ${meme.height}',
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
