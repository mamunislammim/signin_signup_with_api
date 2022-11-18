

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Authentication/latestNewsRepo/latestNewsAuthentication.dart';
import '../Authentication/newsDetailsRepo/newsDetailsRepository.dart';

final latestNewsProvider = FutureProvider((ref) => LatestNewsAuth().getLatestNews());
final detailsNewsProvider = FutureProviderFamily((ref, arg) => NewsDetailsRepo().getDetails(arg.toString()));