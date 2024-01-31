import 'package:go_router/go_router.dart';
// ctrl+. importar HomeScreen desde screen.dart
import '../../presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  // pone como primera ruta la homescreen
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),

    GoRoute(
      path: '/buttons',
      builder: (context, state) => ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      builder: (context, state) => CardsScreen(),
    ),
  ],
);