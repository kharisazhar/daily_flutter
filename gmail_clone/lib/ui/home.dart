import 'package:flutter/material.dart';
import 'package:gmail_clone/data/classes/email.dart';
import 'package:gmail_clone/data/dummy_data.dart';
import 'package:gmail_clone/ui/app/app_drawer.dart';
import 'package:gmail_clone/ui/app/side_menu.dart';
import 'package:gmail_clone/ui/common/email_fab.dart';
import 'package:gmail_clone/ui/common/email_tile.dart';
import 'package:gmail_clone/ui/common/email_view.dart';
import 'package:responsive_scaffold/responsive_scaffold.dart';
import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:responsive_scaffold/utils/breakpoint.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<EmailItem> _emails = [];
  @override
  void initState() {
    _emails = emails;
    super.initState();
  }

  final Size _tabletBreakpoint = Size(510.0, 510.0);

  @override
  Widget build(BuildContext context) {
    final bool _tablet = isTablet(context, breakpoint: _tabletBreakpoint);
    return ResponsiveScaffold.builder(
      itemCount: _emails?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        return EmailListTile(
          item: _emails[index],
          favoriteChanged: () {
            setState(() {
              _emails[index].favorite = !_emails[index].favorite;
            });
          },
        );
      },
      tabletFlexListView: 4,
      tabletSideMenu: _tablet? Flexible(
        flex: 1,
        child: AppSideMenu(),
      ): null,
      detailBuilder: (BuildContext context, int index, bool tablet) {
        return DetailsScreen(
          appBar: AppBar(
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.archive),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.delete_outline),
                onPressed: () {
                  setState(() {
                    _emails.removeAt(index);
                  });
                  if (!tablet) Navigator.of(context, rootNavigator: true).pop();
                },
              ),
              IconButton(
                icon: Icon(Icons.mail_outline),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
          body: EmailView(
            item: _emails[index],
            favoriteChanged: () {
              setState(() {
                _emails[index].favorite = !_emails[index].favorite;
              });
            },
          ),
        );
      },
      floatingActionButton: EmailFab(onPressed: () {
        setState(() {
          _emails.add(EmailItem(
              avatar: "KA",
              title: "Hello Kharis",
              description: "Subscribe now and get free ticket",
              favorite: true,
              date: DateTime.now()));
        });
      }),
      drawer: AppDrawer(),
      slivers: <Widget>[
        SliverFloatingBar(
          automaticallyImplyLeading: !_tablet ,
          title: TextField(
            decoration: InputDecoration.collapsed(hintText: "Search Mail"),
          ),
          trailing: CircleAvatar(
            child: Text("MK"),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Text("All inbox"),
          ),
        )
      ],
    );
  }
}
