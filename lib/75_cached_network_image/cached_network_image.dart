import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class MyCachedNetworkImage extends StatefulWidget {
  const MyCachedNetworkImage({Key? key}) : super(key: key);

  @override
  State<MyCachedNetworkImage> createState() => _MyCachedNetworkImageState();
}

class _MyCachedNetworkImageState extends State<MyCachedNetworkImage> {
   static final customCacheManager = CacheManager(
    Config(
      'customCacheKey',
      maxNrOfCacheObjects: 100,
      stalePeriod: const Duration(days: 15)
    )
  );
  // for clearing the cached image files
  void clearCache() {
    // from the flutter_cache_manager.dart
    DefaultCacheManager().emptyCache();

    // this will clear internal app cache
    imageCache.clear();
    imageCache.clearLiveImages();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cached Network Image'),
        actions: [
          IconButton(
            onPressed: () => clearCache(),
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 50,
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: ListTile(
                leading: buildImage(index),
                title: Text(
                  'Image ${index + 1}',
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  buildImage(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        cacheManager: customCacheManager,
        key: UniqueKey(),
        imageUrl: "https://source.unsplash.com/random?sig=$index",
        height: 60,
        width: 60,
        fit: BoxFit.cover,
        placeholder: (context, url) => Center(
          child: Image.asset(
            'assets/images/placeholder/default_image.jpeg',
            height: 60,
            width: 60,
            fit: BoxFit.cover,
          ),
        ),
        errorWidget: (context, url, error) => Container(
          color: Colors.black12,
          child: const Icon(
            Icons.error,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
