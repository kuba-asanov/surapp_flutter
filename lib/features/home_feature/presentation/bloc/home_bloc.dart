
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_some_data_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required GetSomeDataUsecase getSomeDataUsecase,
  }): 
      _getSomeDataUsecase = getSomeDataUsecase,
      super(InitialHomeState()){
    on<InitEvent>(_onInit);
  }

  final GetSomeDataUsecase _getSomeDataUsecase;

  Future<void> _onInit(InitEvent event, Emitter emit) async{
    emit(LoadingHomeState()); 
    
    final result = await _getSomeDataUsecase.invoke(GetSomeDataParams());

    result.fold(
      onFailure: (failure) {},   
      onSuccess: (data) => emit(LoadedHomeState()),    
    );
  }
}
