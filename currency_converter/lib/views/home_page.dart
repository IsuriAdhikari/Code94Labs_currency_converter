import 'package:currency_converter/currency_country_mapping.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flag/flag.dart';
import '../viewmodels/currency_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter'),
      ),
      body: Consumer<CurrencyViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (viewModel.errorMessage.isNotEmpty) {
            return Center(child: Text(viewModel.errorMessage));
          } else {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  const Text("INSERT AMOUNT:"),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 5),

                        // Amount TextField
                        Flexible(
                          // flex: 2,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Amount',
                              border: InputBorder.none, // Remove underline
                            ),
                            onChanged: viewModel.setAmount,
                          ),
                        ),

                        // Base Currency Dropdown
                        Flexible(
                          flex: 1,
                          child: DropdownButtonFormField<String>(
                            value: viewModel.rates
                                    .containsKey(viewModel.baseCurrency)
                                ? viewModel.baseCurrency
                                : (viewModel.rates.keys.isNotEmpty
                                    ? viewModel.rates.keys.first
                                    : null),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                            items: viewModel.rates.keys
                                .map((currency) => DropdownMenuItem(
                                      value: currency,
                                      child: Row(
                                        children: [
                                          if (currencyToCountry
                                              .containsKey(currency))
                                            ClipOval(
                                              child: Flag.fromString(
                                                currencyToCountry[currency]!,
                                                height: 20,
                                                width: 20,
                                                fit: BoxFit.cover,
                                              ),
                                            )
                                          else
                                            const SizedBox(
                                              width: 20,
                                              height: 20,
                                            ),
                                          const SizedBox(width: 8),
                                          Text(currency),
                                        ],
                                      ),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              if (value != null) {
                                viewModel.setBaseCurrency(value);
                              }
                            },
                          ),
                        ),

                        const SizedBox(width: 5),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text("CONVERT TO :"),
                  // Converted Amounts List
                  Expanded(
                    child: ListView.builder(
                      itemCount: viewModel.targetCurrencies.length,
                      itemBuilder: (context, index) {
                        final target = viewModel.targetCurrencies[index];
                        final rate = viewModel.rates[target] ?? 0.0;
                        final converted = viewModel.amount * rate;

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0)),
                            ),
                            child: ListTile(
                              title: Row(
                                children: [
                                  if (currencyToCountry.containsKey(target))
                                    ClipOval(
                                      child: Flag.fromString(
                                        currencyToCountry[target]!,
                                        height: 20,
                                        width: 20,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  else
                                    const SizedBox(
                                      width: 20,
                                      height: 20,
                                    ),
                                  const SizedBox(width: 8),
                                  Text(target),
                                ],
                              ),
                              subtitle: Text(
                                '${converted.toStringAsFixed(2)} $target',
                              ),
                              trailing: IconButton(
                                icon:
                                    const Icon(Icons.delete, color: Colors.red),
                                onPressed: () {
                                  viewModel.removeTargetCurrency(target);
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
      //Add converters button
      floatingActionButton: Consumer<CurrencyViewModel>(
        builder: (context, viewModel, child) {
          return FloatingActionButton.extended(
            backgroundColor: const Color.fromARGB(255, 1, 63, 114),
            foregroundColor: Colors.white,
            onPressed: () {
              _showAddCurrencyDialog(context, viewModel);
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            label: const Text('ADD CONVERTERS'),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

//Add converters button popup
  void _showAddCurrencyDialog(
      BuildContext context, CurrencyViewModel viewModel) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add Target Currency'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Enter currency code (e.g., EUR)',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.red),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final currency = controller.text.toUpperCase();
                if (currency.isNotEmpty &&
                    viewModel.rates.containsKey(currency) &&
                    !viewModel.targetCurrencies.contains(currency)) {
                  viewModel.addTargetCurrency(currency);
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text('Invalid or duplicate currency code: $currency'),
                    ),
                  );
                }
              },
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        );
      },
    );
  }
}
