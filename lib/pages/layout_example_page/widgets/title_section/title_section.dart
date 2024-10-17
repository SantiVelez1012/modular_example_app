import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String name;
  final String location;

  const TitleSection({super.key, required this.name, required this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(location, style: const TextStyle(color: Colors.grey))
            ],
          )),
          const _FavoriteWidget()
        ],
      ),
    );
  }
}

class _FavoriteWidget extends StatefulWidget {
  const _FavoriteWidget({super.key});

  @override
  State<_FavoriteWidget> createState() => __FavoriteWidgetState();
}

class __FavoriteWidgetState extends State<_FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _favoriteCount -= 1;
        _isFavorite = false;
        return;
      }
      _isFavorite = true;
      _favoriteCount += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
              color: Colors.red[500],
              onPressed: _toggleFavorite,
              icon: (_isFavorite
                  ? const Icon(Icons.star)
                  : const Icon(Icons.star_border))),
        ),
        SizedBox(
          width: 20,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        )
      ],
    );
  }
}
