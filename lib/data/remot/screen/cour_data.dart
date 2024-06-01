import 'package:managmentsh/core/class/read_updata_delete_inser_view.dart';
import 'package:managmentsh/core/const/app_links.dart';

class CourData {
  ReadUpdateDeleteInsertView crud = ReadUpdateDeleteInsertView();
  CourData(this.crud);
  getCours(String id) async {
    var respones = await crud.postData(AppLinkes.courView, {"studentId": id});
    return respones.fold((l) => l, (r) => r);
  }
}
