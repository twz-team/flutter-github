import 'package:meta/meta.dart';
import 'package:mz_github/beans/organization.dart';
import 'package:mz_github/services/my_api.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:redux/redux.dart';

@immutable
class MyState {
  final String say;
  final List<Organization> orgList;
  MyState({
    this.say,
    List<Organization> orgList,
  }) : this.orgList = orgList ?? <Organization>[];

  factory MyState.initial() => MyState(say: 'hello world');
}

MyState myReducer(MyState state, action) {
  return MyState(
    orgList: orgListReducer(state.orgList, action),
  );
}

final orgListReducer = combineReducers<List<Organization>>([
  TypedReducer<List<Organization>, SetMyOrgListAction>((orgList, action) {
    return action.orgList;
  }),
]);

class MyAction {
  static final _myApi = MyApi();
  static Future<void> requestMyOrgList(Store<AppState> store) async {
    final orgList = await _myApi.getOrgList();
    store.dispatch(SetMyOrgListAction(orgList));
  }
}

class SetMyOrgListAction {
  List<Organization> orgList;
  SetMyOrgListAction(this.orgList);
}
