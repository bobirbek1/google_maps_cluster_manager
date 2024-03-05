import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart' as local;
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

mixin ClusterItem {
  LatLng get location;

  String? _geohash;
  String get geohash => _geohash ??=
      local.Geohash.encode(location, codeLength: local.ClusterManager.precision);
}
