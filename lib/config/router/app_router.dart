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
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),
  ],
);