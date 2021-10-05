import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Layout/news_app/cubit/cubit.dart';
import 'package:project/Layout/news_app/cubit/states.dart';
import 'package:project/modules/search/search_screen.dart';
import 'package:project/shared/Componets/componets.dart';
// import 'package:project/shared/Network/dio_helper.dart';

//0xff1E2336
//0xff171D2D
class NewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewStates>(
        listener: (context, state) {},
        builder: (context, state) 
        {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('New APP'),
              actions: [
                IconButton(
                    onPressed: () {
                      navigatorTo(context, SearchScreen());
                    },
                    icon: Icon(Icons.search)),
                IconButton(
                    onPressed: () {
                      AppCubit().get(context).changeAppMode();
                    },
                    icon: Icon(Icons.brightness_4_outlined))
              ],
            ),
            body: cubit.screens[cubit.currenIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currenIndex,
              onTap: (index) {
                cubit.changeBottomNavBar(index);
              },
              items: cubit.bottomItems,
            ),
          );
        },
      ),
    );
  }
}
