import 'package:flutter/material.dart';
import 'package:flutter_store/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;
  CustomDrawer(this.pageController);

      Widget _buildDrawerBack() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 34, 163, 156),
            Color.fromARGB(255, 116, 194, 189),
            Colors.white
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ) 
      ,);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.fromLTRB(0, 16, 16, 8),
                height: 170,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8,
                      left: 0,
                      child: Text("Restaurante\nVegetariano",
                      style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Olá",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                            ),
                            GestureDetector(child: Text("Entre ou cadastre-se >",
                            
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            onTap: (){
                            },
                            )
                        ],
                      ) ,)
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.home, "Inicio",pageController,0),
              DrawerTile(Icons.list, "Produtos",pageController,1),
              DrawerTile(Icons.location_on, "Localize-nos",pageController,2),
              DrawerTile(Icons.playlist_add_check, "Meus Pedidos",pageController,3),
            ],

          )
          ],
      ),
    );
  }
}