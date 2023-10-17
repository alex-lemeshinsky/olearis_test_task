// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:olearis_test_task/application/injections/domain_module.dart'
    as _i6;
import 'package:olearis_test_task/application/injections/foundation_module.dart'
    as _i5;
import 'package:olearis_test_task/domain/services/navigation_service.dart'
    as _i4;
import 'package:olearis_test_task/foundation/routing/app_router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreModule = _$CoreModule();
    final domainModule = _$DomainModule();
    gh.singleton<_i3.AppRouter>(coreModule.appRouter());
    gh.singleton<_i4.NavigationService>(
        domainModule.navigationService(gh<_i3.AppRouter>()));
    return this;
  }
}

class _$CoreModule extends _i5.CoreModule {}

class _$DomainModule extends _i6.DomainModule {}
