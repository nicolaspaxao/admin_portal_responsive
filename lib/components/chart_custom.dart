
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class ChartCustom extends StatelessWidget {
  const ChartCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Chart(
        data: const [
          {'category': 'Shirts', 'sales': 5},
          {'category': 'Cardigans', 'sales': 20},
          {'category': 'Chiffons', 'sales': 36},
          {'category': 'Pants', 'sales': 10},
          {'category': 'Heels', 'sales': 10},
          {'category': 'Socks', 'sales': 20},
        ],
        variables: {
          'category': Variable(
            accessor: (Map map) => map['category'] as String,
          ),
          'sales': Variable(
            accessor: (Map map) => map['sales'] as num,
          ),
        },
        elements: [IntervalElement()],
        axes: [
          Defaults.horizontalAxis,
          Defaults.verticalAxis,
        ],
      ),
    );
  }
}
