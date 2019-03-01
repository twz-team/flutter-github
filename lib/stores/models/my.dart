import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

import 'package:mz_github/beans/organization.dart';
import 'package:mz_github/beans/repository.dart';
import 'package:mz_github/services/my_api.dart';
import 'package:mz_github/stores/app_state.dart';

@immutable
class MyState {
  final String say;
  final List<Organization> orgList;
  final List<Repository> repositoryList;

  MyState({
    this.say,
    List<Organization> orgList,
    List<Repository> repositoryList,
  })  : this.orgList = orgList ?? <Organization>[],
        this.repositoryList = repositoryList ?? <Repository>[];

  factory MyState.initial() => MyState(say: 'hello world');

  MyState copyWith(MyState state) {
    return MyState(
      orgList: state.orgList ?? this.orgList,
      repositoryList: state.repositoryList ?? this.repositoryList,
    );
  }
}

MyState myReducer(MyState state, action) {
  if (action is SetMyStateAction) {
    return state.copyWith(action.myState);
  }
  return state;
}

class MyAction {
  static final _myApi = MyApi();

  static Future<void> requestMyOrgList(Store<AppState> store) async {
    final orgList = await _myApi.getOrgList();
    store.dispatch(SetMyStateAction(MyState(orgList: orgList)));
  }

  static Future<void> requestRepositoryList(Store<AppState> store) async {
    final reponsitoryList = await _myApi.getRepositoryList();
    store.dispatch(SetMyStateAction(MyState(repositoryList: reponsitoryList)));
  }
}

class SetMyStateAction {
  final MyState myState;

  SetMyStateAction(this.myState);
}
