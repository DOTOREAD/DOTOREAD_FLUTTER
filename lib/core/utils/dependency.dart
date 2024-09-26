import 'package:dotoread_app/data/repositories_impl/bookmark_repository_impl.dart';
import 'package:dotoread_app/data/repositories_impl/folder_repository_impl.dart';
import 'package:dotoread_app/domain/repositories/bookmark_repository.dart';
import 'package:dotoread_app/domain/repositories/folder_repository.dart';

import 'package:dotoread_app/data/providers/network/contract.dart';
import 'package:dotoread_app/data/providers/network/http/http_contract.dart';
import 'package:dotoread_app/data/providers/network/http/http_implemetation.dart';
import 'package:dotoread_app/data/providers/network/implemetation.dart';

import 'package:get/get.dart';

class Dependency {
  static init() {
    Get.lazyPut<HttpNetwork>(() => HttpNetworkImplementation(), fenix: true);
    Get.lazyPut<Network>(() => NetworkImplementation(Get.find<HttpNetwork>()));

    Get.lazyPut<FolderRepository>(
        () => FolderRepositoryImpl(Get.find<Network>()));
    Get.lazyPut<BookmarkRepository>(
        () => BookmarkRepositoryImpl(Get.find<Network>()),
        fenix: true);
  }
}
