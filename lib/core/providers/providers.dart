import 'package:outlay/core/services/public_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ..._publicUseServices,
];

// List<SingleChildWidget> services = [
//   ChangeNotifierProxyProvider2<ApiImp, SecureLocalStorageImpl,
//       AuthenticationService>(
//     create: (_) => AuthenticationService.instance(),
//     update: (context, apiImp, secureLocalStorageImpl, authenticationService) =>
//         authenticationService!..update(apiImp, secureLocalStorageImpl),
//   ),
//   ChangeNotifierProxyProvider<ApiImp, PublicService>(
//     create: (_) => PublicService.instance(),
//     update: (context, apiImp, pulicService) => pulicService!..update(apiImp),
//   ),
//   ChangeNotifierProxyProvider<ApiImp, ShipmentServices>(
//     create: (_) => ShipmentServices.instance(),
//     update: (context, apiImp, shipmentServices) =>
//         shipmentServices!..update(apiImp),
//   ),
// ];

// List<SingleChildWidget> apis = [
//   Provider<ApiImp>.value(value: ApiImp()),
//   Provider<SecureLocalStorageImpl>.value(value: SecureLocalStorageImpl()),
// ];
// ignore: non_constant_identifier_names
List<SingleChildWidget> _publicUseServices = [
  ChangeNotifierProvider<PublicService>(create: (_) => PublicService()),
];
