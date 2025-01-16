import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'route_names.dart';

// 引入页面
import '../../features/subscription/screens/subscription_list_screen.dart';
// import '../../features/settings/screens/settings_screen.dart';

final router = GoRouter(
  initialLocation: '/', // 初始路由
  debugLogDiagnostics: true, // 开发模式下启用路由日志
  routes: [
    // 配置底部导航栏的 Shell Route
    ShellRoute(
      builder: (context, state, child) {
        return ScaffoldWithBottomNav(child: child);
      },
      routes: [
        // 订阅列表页面
        GoRoute(
          path: '/',
          name: RouteNames.home,
          builder: (context, state) => const SubscriptionListScreen(),
        ),
        // 设置页面
        // GoRoute(
        //   path: '/settings',
        //   name: RouteNames.settings,
        //   builder: (context, state) => const SettingsScreen(),
        // ),
      ],
    ),
  ],
);

// 底部导航栏封装
class ScaffoldWithBottomNav extends StatelessWidget {
  final Widget child;

  const ScaffoldWithBottomNav({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _calculateSelectedIndex(context),
      //   onTap: (int idx) => _onItemTapped(idx, context),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.list),
      //       label: '订阅',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: '设置',
      //     ),
      //   ],
      // ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/settings')) {
      return 1;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).goNamed(RouteNames.home);
        break;
      case 1:
        GoRouter.of(context).goNamed(RouteNames.settings);
        break;
    }
  }
}
