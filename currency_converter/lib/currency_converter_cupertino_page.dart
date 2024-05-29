import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
/*for borderradius parent widgets will be Outlineinputborder,InputDecoration,TextField,column,Center and scaffold.S

                  BorderRadius.circular(50) =BorderRadius.all(Radius: circular(50))
                  */

    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 227, 125, 207),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 227, 125, 207),
        middle: Text('Currency Converter'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 255)),
              ),
              //below textField is wraped with padding.
              //we can use container instead of padding.

              CupertinoTextField(
                controller: textEditingController, //to take value from user
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter the amount in USD',
                placeholderStyle: const TextStyle(
                  color: CupertinoColors.black,
                ),
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true, //android cannot required decimal: true.
                ),
              ),
              const SizedBox(height: 10),
              CupertinoButton(
                color: CupertinoColors.black,
                onPressed: () {
                  //we can use just debugprint instead of if statement.
                  //it triggers the rebuilt using the build fn.
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
