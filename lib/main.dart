import 'package:flutter/material.dart';
import 'package:mold_list/data/mold.dart';

void main() {
  runApp(const MoldApp());
}

class MoldApp extends StatelessWidget {
  const MoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mold Inventory',
      // Устанавливаем темную тему по умолчанию
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark),
      ),
      home: const MoldListScreen(),
    );
  }
}

class MoldListScreen extends StatefulWidget {
  const MoldListScreen({super.key});

  @override
  State<MoldListScreen> createState() => _MoldListScreenState();
}

class _MoldListScreenState extends State<MoldListScreen> {
  // Наш исходный список данных
  final List<Mold> _allMolds = [
    Mold(inventoryNumber: 'A-001', moldName: 'Крышка бака', moldWeight: 0),
    Mold(inventoryNumber: 'B-042', moldName: 'Корпус фильтра', moldWeight: 0),
    Mold(inventoryNumber: 'A-003', moldName: 'Ручка двери', moldWeight: 0 ),
    Mold(inventoryNumber: 'C-110', moldName: 'Панель приборов', moldWeight: 0),
  ];

  // Список, который будет отображаться (отфильтрованный)
  List<Mold> _filteredMolds = [];
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _filteredMolds = _allMolds; // Изначально показываем все
  }

  void _filterMolds(String query) {
    setState(() {
      _searchQuery = query.toLowerCase();
      _filteredMolds = _allMolds.where((mold) {
        return mold.inventoryNumber.toLowerCase().contains(_searchQuery) ||
            mold.moldName.toLowerCase().contains(_searchQuery);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Пресс-формы от Геннадия Лыщенко'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Поиск по номеру или названию',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                filled: true,
              ),
              onChanged: _filterMolds,
            ),
            const SizedBox(height: 20),

            // Заголовки таблицы
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: const Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('Инв. №', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Название', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('Вес (кг)', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),

            // Список данных
            Expanded(
              child: ListView.separated(
                itemCount: _filteredMolds.length,
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  final mold = _filteredMolds[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    child: Row(
                      children: [
                        // flex: 1 - узкая колонка
                        Expanded(flex: 1, child: Text(mold.inventoryNumber)),
                        // flex: 3 - в 3 раза шире
                        Expanded(flex: 3, child: Text(mold.moldName)),
                        // flex: 1 - узкая колонка
                        Expanded(flex: 1, child: Text('${mold.moldWeight}')),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
