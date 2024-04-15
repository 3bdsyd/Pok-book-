// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart'
    as _i6;
import 'package:pokebook/features/home/presentation/views/screens/detils_pokemon_screen.dart'
    as _i1;
import 'package:pokebook/features/home/presentation/views/screens/elementary_screen.dart'
    as _i2;
import 'package:pokebook/features/home/presentation/views/screens/home_screen.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DetailsPokemonRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsPokemonRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(
            child: _i1.DetailsPokemonScreen(
          key: args.key,
          pokemonDetails: args.pokemonDetails,
        )),
      );
    },
    ElementaryRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(child: const _i2.ElementaryScreen()),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(child: const _i3.HomeScreen()),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailsPokemonScreen]
class DetailsPokemonRoute extends _i4.PageRouteInfo<DetailsPokemonRouteArgs> {
  DetailsPokemonRoute({
    _i5.Key? key,
    required _i6.PokemonDetails pokemonDetails,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          DetailsPokemonRoute.name,
          args: DetailsPokemonRouteArgs(
            key: key,
            pokemonDetails: pokemonDetails,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailsPokemonRoute';

  static const _i4.PageInfo<DetailsPokemonRouteArgs> page =
      _i4.PageInfo<DetailsPokemonRouteArgs>(name);
}

class DetailsPokemonRouteArgs {
  const DetailsPokemonRouteArgs({
    this.key,
    required this.pokemonDetails,
  });

  final _i5.Key? key;

  final _i6.PokemonDetails pokemonDetails;

  @override
  String toString() {
    return 'DetailsPokemonRouteArgs{key: $key, pokemonDetails: $pokemonDetails}';
  }
}

/// generated route for
/// [_i2.ElementaryScreen]
class ElementaryRoute extends _i4.PageRouteInfo<void> {
  const ElementaryRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ElementaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'ElementaryRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
