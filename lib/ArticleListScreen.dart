import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Article.dart';

class ArticleListScreen extends StatelessWidget {
  final List<Article> article = new List.generate(
    10,
    (i) => new Article(
        title: 'Airticle $i',
        content: 'Article $i: The quick brown fox jumps over the lazy dog.'),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('列表'),
      ),
      body: new ListView.builder(
          itemCount: article.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text(article[index].title),
              onTap: () async {
                String result = await Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                            new ContentScreen(article[index])));
                if (result != null) {
                  Scaffold.of(context).showSnackBar(
                    new SnackBar(
                      content: new Text('$result'),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                }
              },
            );
          }),
    );
  }
}

class ContentScreen extends StatelessWidget {
  final Article article;

  ContentScreen(this.article);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('${article.title}'),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
          children: <Widget>[
            new Text('${article.content}'),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, '喜欢');
                  },
                  child: new Text('喜欢1'),
                ),
                new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, '不喜欢');
                  },
                  child: new Text('不喜欢1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
