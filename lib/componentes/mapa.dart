import 'package:cinemeu/entidade/cinema.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

typedef OnCinemaClicked = void Function(Cinema cinema);

class Mapa extends StatefulWidget {
  final List<Cinema> cinemas;
  final OnCinemaClicked? onClick;

  const Mapa({super.key, required this.cinemas, this.onClick});

  @override
  State<Mapa> createState() => _MapaState();
}

class _MapaState extends State<Mapa> with AutomaticKeepAliveClientMixin {
  late MapController controller;

  @override
  void initState() {
    super.initState();

    controller = MapController(
      initMapWithUserPosition: const UserTrackingOption(
        enableTracking: true,
        unFollowUser: false,
      ),
    );

    controller.addMarker(
      GeoPoint(
          latitude: widget.cinemas[0].latitude,
          longitude: widget.cinemas[0].latitude),
    );
  }

  @override
  @mustCallSuper
  Widget build(BuildContext context) {
    super.build(context);

    final tema = Theme.of(context);

    return OSMFlutter(
      controller: controller,
      onGeoPointClicked: (point) {
        final Cinema = cinemaByLocation(point);

        if (Cinema == null) {
          return;
        }

        if (widget.onClick != null) {
          widget.onClick!(Cinema);
        }
      },
      osmOption: OSMOption(
        zoomOption: const ZoomOption(
          initZoom: 17,
          minZoomLevel: 2,
          maxZoomLevel: 19,
          stepZoom: 1.0,
        ),
        staticPoints: [
          StaticPositionGeoPoint(
            "cinema",
            MarkerIcon(
              icon: Icon(
                Icons.movie,
                color: tema.colorScheme.secondary,
                size: 32,
              ),
            ),
            cinemasCoords,
          )
        ],
        userLocationMarker: UserLocationMaker(
          personMarker: MarkerIcon(
            icon: Icon(
              Icons.location_history_rounded,
              color: tema.colorScheme.primary,
              size: 32,
            ),
          ),
          directionArrowMarker: const MarkerIcon(
            icon: Icon(
              Icons.double_arrow,
              size: 32,
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  Cinema? cinemaByLocation(GeoPoint point) {
    return widget.cinemas
        .where((c) =>
            c.latitude == point.latitude && c.longitude == point.longitude)
        .firstOrNull;
  }

  List<GeoPoint> get cinemasCoords => widget.cinemas
      .map((e) => GeoPoint(latitude: e.latitude, longitude: e.longitude))
      .toList();
}
