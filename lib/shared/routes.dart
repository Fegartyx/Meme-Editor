import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meme_editor_app/domain/model/meme.dart';
import 'package:meme_editor_app/presentation/pages/detail.dart';
import 'package:meme_editor_app/presentation/pages/edit.dart';
import 'package:meme_editor_app/presentation/pages/home.dart';
import 'package:meme_editor_app/shared/route_locations.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter goRoute = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RouteLocations.home,
  routerNeglect: true,
  extraCodec: const JsonCodec(),
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: RouteLocations.home,
      name: RouteLocationsExtension.home,
      builder: (context, state) {
        return Home();
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: RouteLocations.detail,
      name: RouteLocationsExtension.detail,
      builder: (context, state) {
        // Extract the meme from the state extra
        final meme = state.extra as Meme;
        return Detail(meme: meme);
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: RouteLocations.edit,
      name: RouteLocationsExtension.edit,
      builder: (context, state) {
        final meme = state.extra as Meme;
        return EditProvider(meme: meme);
      },
    ),
  ],
);
