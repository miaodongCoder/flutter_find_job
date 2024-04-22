import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_find_job/routes/index.dart';
import 'package:flutter_find_job/store/index.dart';
import 'package:flutter_find_job/widgets/index.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import 'generated/l10n.dart';
import 'global.dart';
import 'theme.dart';

void main() {
  Global.init().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) => RefreshConfiguration(
        headerBuilder: () => const ClassicHeader(
          refreshingIcon: CupertinoActivityIndicator(),
        ),
        footerBuilder: () => const ClassicFooter(
          loadingIcon: CupertinoActivityIndicator(),
        ),
        hideFooterWhenNotFull: true,
        child: GetBuilder<ConfigStore>(
          builder: (config) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Find Job',
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: AppTheme.mode,
            routerConfig: Routes.config,
            builder: CustomToast.init(
              context: context,
              builder: (context, child) {
                return ScrollConfiguration(
                  behavior: _NoShadowScrollBehavior(),
                  child: child ?? const Material(),
                );
              },
            ),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              S.delegate,
            ],
            locale: config.locale,
            supportedLocales: S.delegate.supportedLocales,
          ),
        ),
      ),
    );
  }
}

class _NoShadowScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return child;
      case TargetPlatform.android:
        return GlowingOverscrollIndicator(
          showLeading: false,
          showTrailing: false,
          axisDirection: details.direction,
          color: Theme.of(context).colorScheme.primary,
          child: child,
        );
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return GlowingOverscrollIndicator(
          showLeading: false,
          showTrailing: false,
          axisDirection: details.direction,
          color: Theme.of(context).colorScheme.primary,
          child: child,
        );
    }
  }
}
