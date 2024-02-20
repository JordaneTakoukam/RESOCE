import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/models/country_model.dart';
import 'package:resoce/modules/create_organization/controllers/controller_create_company.dart';
import 'package:resoce/modules/onboardingscreen/controller.dart';

class CountryPage extends GetView<CreateCompanyController> {
  const CountryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var languageController = Get.find<OnBoardingController>();

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CountrySearchDelegate(languageController.countries),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: languageController.countries.length,
          itemBuilder: (context, index) {
            var country = languageController.countries[index];
            return ListTile(
              leading: Text(
                convertirUnicodeEnEmoji(country.unicode),
                style: TextStyle(fontSize: Get.width * 0.045),
              ),
              title: Text(
                country.name,
                style: TextStyle(
                  fontSize: Get.width * .035,
                ),
              ),
              trailing: Text(
                country.dialCode,
                style: TextStyle(
                  fontSize: Get.width * .033,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                print(
                  'Unicode: ${country}',
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class CountrySearchDelegate extends SearchDelegate<CountryModel> {
  final List<CountryModel> countries;

  CountrySearchDelegate(this.countries);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, CountryModel(name: '', dialCode: '', unicode: ''));
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final filteredCountries = countries
        .where((country) =>
            country.name.toLowerCase().contains(query.toLowerCase()) ||
            country.dialCode.contains(query))
        .toList();

    return ListView.builder(
      itemCount: filteredCountries.length,
      itemBuilder: (context, index) {
        var country = filteredCountries[index];
        return ListTile(
          leading: Text(
            convertirUnicodeEnEmoji(country.unicode),
            style: TextStyle(fontSize: 24),
          ),
          title: Text(country.name),
          trailing: Text(country.dialCode),
          onTap: () {
            print('Unicode: ${country}');
            close(context, country);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestedCountries = countries
        .where((country) =>
            country.name.toLowerCase().contains(query.toLowerCase()) ||
            country.dialCode.contains(query))
        .toList();

    return ListView.builder(
      itemCount: suggestedCountries.length,
      itemBuilder: (context, index) {
        var country = suggestedCountries[index];
        return ListTile(
          title: Text(country.name),
          onTap: () {
            query = country.name;
            showResults(context);
          },
        );
      },
    );
  }
}
