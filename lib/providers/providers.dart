import 'package:provider/provider.dart' show ChangeNotifierProvider;
import 'package:provider/single_child_widget.dart' show SingleChildWidget;

import 'get_all_country/get_all_country.dart';
import 'theme/theme.dart';

// Create all Providers here
final List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => ThemeProvider()),
  ChangeNotifierProvider(create: (_) => GetCountryProvider()),
];
