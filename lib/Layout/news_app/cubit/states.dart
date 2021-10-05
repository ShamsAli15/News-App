abstract class NewStates {}

abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppChangeModeState extends AppStates {}

class NewsInitalStates extends NewStates {}

class NewsButtomNavStates extends NewStates {}

class NewsGetBuisnessLoadingStates extends NewStates {}

class NewsGetBuisnessSuccessStates extends NewStates {}

class NewsBuisnessEorroStates extends NewStates {
  final String error;

  NewsBuisnessEorroStates(this.error);
}

class NewsGetSportsLoadingStates extends NewStates {}

class NewsGetSportsSuccessStates extends NewStates {}

class NewsSportsEorroStates extends NewStates {
  final String error;

  NewsSportsEorroStates(this.error);
}

class NewsGetScienceLoadingStates extends NewStates {}

class NewsGetScienceSuccessStates extends NewStates {}

class NewsScienceEorroStates extends NewStates {
  final String error;

  NewsScienceEorroStates(this.error);
}

class NewsGetSearchLoadingStates extends NewStates {}

class NewsGetSearchSuccessStates extends NewStates {}

class NewsSearchEorroStates extends NewStates {
  final String error;

  NewsSearchEorroStates(this.error);
}
