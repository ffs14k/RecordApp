// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter/widgets.dart' as _i718;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/generic/app_language_picker_page/app_language_picker_page_vmmapper.dart'
    as _i319;
import '../../features/generic/widgets/language_text/language_text_widget_vmmapper.dart'
    as _i790;
import '../../features/home/home_page_view_model_mapper.dart' as _i1040;
import '../../features/home/redux/actions/delete_record_tapped.dart' as _i336;
import '../../features/home/redux/actions/gif_record_button_tapped.dart'
    as _i372;
import '../../features/home/redux/actions/records_changed.dart' as _i872;
import '../../features/home/redux/actions/start_recording.dart' as _i854;
import '../../features/home/subwidgets/record_contol/record_control_widget_view_model_mapper.dart'
    as _i133;
import '../../features/home/subwidgets/records_list/records_list_view_model_mapper.dart'
    as _i200;
import '../../features/home/subwidgets/send_query_btn/send_query_button_view_model_mapper.dart'
    as _i870;
import '../../features/pre_recording_dialog_page/pre_recording_dialog_page_vmmapper.dart'
    as _i931;
import '../../l10n/app_text_provider.dart' as _i3;
import '../../network/api/record_app_rest_api.dart' as _i425;
import '../../network/service/user_query_service/user_query_service.dart'
    as _i1009;
import '../../network/service/user_query_service/user_query_service_impl.dart'
    as _i1040;
import '../../network/service/user_query_service/user_query_service_mock.dart'
    as _i56;
import '../../redux/app/app_store.dart' as _i465;
import '../../repositories/audio_recorder/audio_recorder.dart' as _i777;
import '../../repositories/config/app_config.dart' as _i113;
import '../../repositories/env_vars/env_vars.dart' as _i456;
import '../../repositories/env_vars/env_vars_impl.dart' as _i820;
import '../../repositories/mapper_helper/app_language_picker_mapper_helper.dart'
    as _i107;
import '../../repositories/records_pool/records_pool.dart' as _i480;
import '../../routing/app_router.dart' as _i605;
import '../app_router_inject.dart' as _i182;
import '../app_store_inject.dart' as _i325;
import '../dio/dio_base_option_builder.dart' as _i752;
import '../dio/dio_inject.dart' as _i563;
import '../retrofit_rest_api_inject.dart' as _i677;

const String _mock = 'mock';
const String _prod = 'prod';
const String _profile = 'profile';
const String _dev = 'dev';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> $initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appRouterInject = _$AppRouterInject();
    final appStoreInject = _$AppStoreInject();
    final dioInject = _$DioInject();
    final retrofitRestApiInject = _$RetrofitRestApiInject();
    gh.factory<_i870.SendQueryButtonViewModelMapper>(
        () => _i870.SendQueryButtonViewModelMapper());
    gh.singleton<_i605.AppRouter>(() => appRouterInject.appRouter());
    gh.singleton<_i465.AppStore>(() => appStoreInject.appState());
    gh.singleton<_i113.AppConfig>(() => _i113.AppConfig());
    gh.singleton<_i777.AudioRecorder>(() => _i777.AudioRecorder());
    gh.singleton<_i480.RecordsPool>(() => _i480.RecordsPool());
    gh.factory<_i200.RecordsListViewModelMapper>(
        () => _i200.RecordsListViewModelMapper(gh<_i777.AudioRecorder>()));
    gh.factory<_i854.StartRecording>(
        () => _i854.StartRecording(gh<_i777.AudioRecorder>()));
    gh.factory<_i319.AppLanguagePickerPageVmmapper>(
        () => _i319.AppLanguagePickerPageVmmapper(gh<_i465.AppStore>()));
    gh.factory<_i931.PreRecordingDialogPageVmmapper>(
        () => _i931.PreRecordingDialogPageVmmapper(gh<_i465.AppStore>()));
    gh.lazySingleton<_i3.AppTextProvider>(
        () => _i3.AppTextProvider(gh<_i465.AppStore>()));
    await gh.lazySingletonAsync<_i456.EnvVars>(
      () => _i820.EnvVarsImpl.create(),
      preResolve: true,
    );
    gh.factoryParam<_i336.DeleteRecordButtonTapped, String, dynamic>((
      recordId,
      _,
    ) =>
        _i336.DeleteRecordButtonTapped(
          recordId,
          gh<_i480.RecordsPool>(),
        ));
    gh.factoryParam<_i372.GifRecordButtonTapped, _i718.BuildContext, dynamic>((
      context,
      _,
    ) =>
        _i372.GifRecordButtonTapped(
          context,
          gh<_i777.AudioRecorder>(),
          gh<_i480.RecordsPool>(),
          gh<_i113.AppConfig>(),
        ));
    gh.factory<_i107.AppLanguagePickerMapperHelper>(
        () => _i107.AppLanguagePickerMapperHelper(gh<_i3.AppTextProvider>()));
    gh.factory<_i752.DioOptionsBuilder>(
        () => _i752.DioOptionsBuilderImpl(gh<_i456.EnvVars>()));
    gh.factory<_i361.Dio>(() => dioInject.dio(gh<_i752.DioOptionsBuilder>()));
    gh.factory<_i790.LanguageTextWidgetVmmapper>(
        () => _i790.LanguageTextWidgetVmmapper(
              gh<_i465.AppStore>(),
              gh<_i107.AppLanguagePickerMapperHelper>(),
            ));
    gh.factory<_i872.RecordsChanged>(
        () => _i872.RecordsChanged(gh<_i480.RecordsPool>()));
    gh.factory<_i133.RecordControlWidgetViewModelMapper>(
        () => _i133.RecordControlWidgetViewModelMapper(gh<_i113.AppConfig>()));
    gh.factory<_i1040.HomePageVmmapper>(() => _i1040.HomePageVmmapper(
          gh<_i465.AppStore>(),
          gh<_i133.RecordControlWidgetViewModelMapper>(),
          gh<_i200.RecordsListViewModelMapper>(),
          gh<_i870.SendQueryButtonViewModelMapper>(),
        ));
    gh.factory<_i425.RecordAppRestApi>(
        () => retrofitRestApiInject.build(gh<_i361.Dio>()));
    gh.factory<_i1009.UserQueryService>(
      () => _i56.UserQueryServiceMock(gh<_i425.RecordAppRestApi>()),
      registerFor: {_mock},
    );
    gh.factory<_i1009.UserQueryService>(
      () => _i1040.UserQueryServiceImpl(gh<_i425.RecordAppRestApi>()),
      registerFor: {
        _prod,
        _profile,
        _dev,
      },
    );
    return this;
  }
}

class _$AppRouterInject extends _i182.AppRouterInject {}

class _$AppStoreInject extends _i325.AppStoreInject {}

class _$DioInject extends _i563.DioInject {}

class _$RetrofitRestApiInject extends _i677.RetrofitRestApiInject {}
