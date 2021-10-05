import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Layout/news_app/cubit/cubit.dart';
import 'package:project/Layout/news_app/cubit/states.dart';
import 'package:project/shared/Componets/componets.dart';

class SearchScreen extends StatelessWidget {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var list = NewsCubit.get(context).search;
          return Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: defaultFormField(
                    type: TextInputType.text,
                    onChanged: (value) {
                      NewsCubit.get(context).getSearch(value);
                    },
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'search must not be empty';
                      }
                      return null;
                    },
                    label: 'Search',
                    prefix: Icons.search,
                    controller: searchController,
                  ),
                ),
                Expanded(
                  child: articleBuilder(list, context, isSearch: true),
                ),
                // Expanded(child: articleBulider(list, context, isSearch: true)),
              ],
            ),
          );
        });
  }
}
