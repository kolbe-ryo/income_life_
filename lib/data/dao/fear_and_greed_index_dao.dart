// Project imports:
import '../interface/fear_and_greed_index_interface.dart';
import '../model/fgi_root_model.dart';
import '../model/now_fgi_value_model.dart';
import 'fear_and_greed_diox.dart';

class FearAndGreedIndexDao extends FearAndGreedDiox implements FearAndGreedIndexInterface {
  @override
  Future<NowFgiValueModel> fetchFGIndex() async {
    final rawResponse = await get<Map<String, dynamic>>('https://fear-and-greed-index.p.rapidapi.com/v1/fgi');
    return FgiRootModel.fromJson(rawResponse.data!).fgi.now;
  }
}
