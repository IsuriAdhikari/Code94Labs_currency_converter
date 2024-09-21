import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/api_service.dart';

class CurrencyViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();

  double _amount = 1.0;
  String _baseCurrency = 'USD';
  Map<String, double> _rates = {};
  List<String> _targetCurrencies = [];

  bool _isLoading = false;
  String _errorMessage = '';

  double get amount => _amount;
  String get baseCurrency => _baseCurrency;
  Map<String, double> get rates => _rates;
  List<String> get targetCurrencies => _targetCurrencies;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  CurrencyViewModel() {
    loadPreferences().then((_) {
      fetchRates();
    });
  }

  void setAmount(String value) {
    _amount = double.tryParse(value) ?? 1.0;
    notifyListeners();
    savePreferences();
  }

  void setBaseCurrency(String currency) {
    _baseCurrency = currency;
    fetchRates();
    savePreferences();
    notifyListeners();
  }

  Future<void> fetchRates() async {
    _isLoading = true;
    _errorMessage = '';
    notifyListeners();

    try {
      final data = await _apiService.getRates(_baseCurrency);
      // Debugging: Print API response
      // print('API Response: $data');

      if (data['conversion_rates'] == null ||
          data['conversion_rates'].isEmpty) {
        throw Exception('Conversion rates are unavailable.');
      }

      Map<String, dynamic> conversionRatesDynamic =
          Map<String, dynamic>.from(data['conversion_rates']);
      _rates = conversionRatesDynamic
          .map((key, value) => MapEntry(key, (value as num).toDouble()));
      // Debugging: Print parsed rates
      // print('Parsed Rates: $_rates');

      if (!_rates.containsKey(_baseCurrency)) {
        _rates[_baseCurrency] = 1.0;
      }
    } catch (e) {
      // Debugging: Print error
      // print('Error fetching rates: $e');
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void addTargetCurrency(String currency) {
    if (!_targetCurrencies.contains(currency)) {
      _targetCurrencies.add(currency);
      savePreferences();
      notifyListeners();
    }
  }

  void removeTargetCurrency(String currency) {
    _targetCurrencies.remove(currency);
    savePreferences();
    notifyListeners();
  }

  Future<void> loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _targetCurrencies =
        prefs.getStringList('targetCurrencies') ?? ['EUR', 'GBP', 'JPY'];
    _baseCurrency = prefs.getString('baseCurrency') ?? 'USD';
    _amount = prefs.getDouble('amount') ?? 1.0;
    notifyListeners();
  }

  Future<void> savePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('targetCurrencies', _targetCurrencies);
    prefs.setString('baseCurrency', _baseCurrency);
    prefs.setDouble('amount', _amount);
  }
}
