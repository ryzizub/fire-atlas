import '../vendor/micro_store/micro_store.dart';
import '../models/fire_atlas.dart';

class FireAtlasState {
  FireAtlas currentAtlas;
  Selection selectedSelection;
}

class Store {
  static MicroStore<FireAtlasState> instance;
}
