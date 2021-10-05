import 'package:bloc/bloc.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Layout/news_app/cubit/states.dart';
import 'package:project/modules/business/business_Screen.dart';
import 'package:project/modules/science/science_screen.dart';
import 'package:project/modules/sports/sport_screen.dart';
import 'package:project/shared/Componets/componets.dart';
import 'package:project/shared/Network/dio_helper.dart';
import 'package:project/shared/Network/local/cachehelper.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  AppCubit get(context) => BlocProvider.of(context);

  bool isDark = false;

  void changeAppMode({bool? formShared}) {
    if (formShared != null) {
      isDark = formShared;
      emit(AppChangeModeState());
    } else {
      isDark = !isDark;
      CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value) {
        emit(AppChangeModeState());
      });
    }
  }
}

class NewsCubit extends Cubit<NewStates> {
  NewsCubit() : super(NewsInitalStates());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currenIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
      ),
      label: 'Business',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
      ),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: 'Science',
    ),
  ];

  void changeBottomNavBar(int index) {
    currenIndex = index;
    if (index == 1) getSports();

    if (index == 2) getScience();

    emit(NewsButtomNavStates());
  }

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
  ];

  List<dynamic> business = [];

  void getBuisness() {
    emit(NewsGetBuisnessLoadingStates());
    DioHelper.getDate(url: 'v2/top-headlines', query: {
      'country': 'us',
      'category': 'business',
      'apiKey': '6027b4d3278843199daf2cd4932ee948',
    }).then((value) {
      business = value.data['articles'];
      print(business[0]['title']);
      emit(NewsGetBuisnessSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(NewsBuisnessEorroStates(error.toString()));
    });
  }

  List<dynamic> sports = [];

  void getSports() {
    emit(NewsGetSportsLoadingStates());
    if (sports.length == 0) {
      DioHelper.getDate(url: 'v2/top-headlines', query: {
        'country': 'us',
        'category': 'sports',
        'apiKey': '6027b4d3278843199daf2cd4932ee948',
      }).then((value) {
        sports = value.data['articles'];
        print(sports[0]['title']);
        emit(NewsGetSportsSuccessStates());
      }).catchError((error) {
        print(error.toString());
        emit(NewsSportsEorroStates(error.toString()));
      });
    } else {
      emit(NewsGetSportsSuccessStates());
    }
  }

  List<dynamic> science = [];

  void getScience() {
    emit(NewsGetScienceLoadingStates());
    if (science.length == 0) {
      DioHelper.getDate(url: 'v2/top-headlines', query: {
        'country': 'us',
        'category': 'science',
        'apiKey': '6027b4d3278843199daf2cd4932ee948',
      }).then((value) {
        science = value.data['articles'];
        print(science[0]['title']);
        emit(NewsGetScienceSuccessStates());
      }).catchError((error) {
        print(error.toString());
        emit(NewsScienceEorroStates(error.toString()));
      });
    } else {
      emit(NewsGetScienceSuccessStates());
    }
  }

//6027b4d3278843199daf2cd4932ee948
  List<dynamic> search = [];

  void getSearch(String value) {
    emit(NewsGetSearchLoadingStates());

    DioHelper.getDate(url: 'v2/everything', query: {
      'q': '$value',
      'apiKey': '6027b4d3278843199daf2cd4932ee948',
    }).then((value) {
      search = value.data['articles'];
      print(search[0]['title']);
      emit(NewsGetSearchSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(NewsSearchEorroStates(error.toString()));
    });
  }
}
