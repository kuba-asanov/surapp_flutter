import 'package:surapp_flutter/common/network/auth_rest_client.dart';
import 'package:surapp_flutter/features/ustaz_selector/data/data_sources/remote/ustaz_picker_remote_data_source.dart';
import 'package:surapp_flutter/features/ustaz_selector/data/repositories/ustaz_picker_repository_impl.dart';
import 'package:surapp_flutter/features/ustaz_selector/domain/repository_interfaces/ask_question_repository.dart';
import 'package:surapp_flutter/features/ustaz_selector/domain/use_cases/get_reciters_use_case.dart';
import 'package:surapp_flutter/features/ustaz_selector/presentation/bloc/ustaz_selector_bloc.dart';
import 'package:take_it/take_it.dart';

class UstazPickerDiModule extends DiModule {
  UstazPickerDiModule();

  @override
  void setup(SyncRegistrar it) {
    // Data
    //
    it
      ..registerFactory<UstazPickerRemoteDataSource>(
        () => UstazPickerRemoteDataSourceImpl(
          restClientService: get<AuthRestClient>(),
        ),
      )
      ..registerFactory<UstazPickerRepository>(
        () => UstazPickerRepositoryImpl(
          remoteDataSource: get<UstazPickerRemoteDataSource>(),
        ),
      )

      ///Domain
      ..registerFactory<GetRecitersUseCase>(
        () => GetRecitersUseCase(
          repository: get<UstazPickerRepository>(),
        ),
      );

    ///Presentation
    it.registerFactory<UstazPickerBloc>(
      () => UstazPickerBloc(
        getRecitersUseCase: get<GetRecitersUseCase>(),
      ),
    );
  }
}
