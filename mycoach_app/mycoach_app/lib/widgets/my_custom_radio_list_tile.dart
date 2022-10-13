import 'package:flutter/material.dart';

class MyCustomRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String leading;
  final Widget? title;
  final ValueChanged<T?> onChanged;

  const MyCustomRadioListTile({
    required this.value,
    required this.groupValue,
    required this.leading,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _customRadioButton,
            const SizedBox(width: 150),
            if (title != null) title,
          ],
        ),
      ),
    );
  }
}

Widget get _customRadioButton {
  final isSelected = value == groupValue;
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: BoxDecoration(
      color: isSelected ? const Color.fromRGBO(0, 173, 181, 1) : null,
      borderRadius: BorderRadius.circular(32),
      border: Border.all(
        color: isSelected
            ? const Color.fromRGBO(0, 173, 181, 1)
            : Colors.grey[300]!,
        width: 2,
      ),
    ),
    child: Text(
      leading,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        letterSpacing: 1.5,
      ),
    ),
  );
}

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({Key? key}) : super(key: key);

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyCustomRadioListTile<int>(
            value: 1,
            groupValue: _value,
            leading: 'Running',
            title: null,
            onChanged: (value) => setState(() => _value = value!),
          ),
          MyCustomRadioListTile<int>(
            value: 2,
            groupValue: _value,
            leading: 'Walking',
            title: null,
            onChanged: (value) => setState(() => _value = value!),
          ),
          MyCustomRadioListTile<int>(
            value: 3,
            groupValue: _value,
            leading: 'Meal plan',
            title: null,
            onChanged: (value) => setState(() => _value = value!),
          ),
          MyCustomRadioListTile<int>(
            value: 4,
            groupValue: _value,
            leading: 'Cycling',
            title: null,
            onChanged: (value) => setState(() => _value = value!),
          ),
          MyCustomRadioListTile<int>(
            value: 5,
            groupValue: _value,
            leading: 'Yoga',
            title: null,
            onChanged: (value) => setState(() => _value = value!),
          ),
          MyCustomRadioListTile<int>(
            value: 6,
            groupValue: _value,
            leading: 'Health',
            title: null,
            onChanged: (value) => setState(() => _value = value!),
          ),
        ],
      ),
    );
  }
}
