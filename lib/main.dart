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
    Mold(inventoryNumber: '719-1\n728-2\n749-3\n763-4', moldName: 'Ведро 15л овальное', moldWeight: 0),
    Mold(inventoryNumber: '720-1\n585-2\n583.3', moldName: 'Крышка ведра 15л овального', moldWeight: 0),
    Mold(inventoryNumber: '120-1\n011-2\n075', moldName: 'Ручка ведра 10л / 15л овального', moldWeight: 0),
    Mold(inventoryNumber: '721-1\n049-2\n088', moldName: 'Ведро 10л овальное', moldWeight: 0),
    Mold(inventoryNumber: '723-1\n740-2\n746-3', moldName: 'Крышка ведра 10л овального', moldWeight: 0),
    Mold(inventoryNumber: '647-1\n662-2', moldName: 'Ведро 5л овальное', moldWeight: 0),
    Mold(inventoryNumber: '650-2\n495-1', moldName: 'Крышка ведра 5л овального', moldWeight: 0),
    Mold(inventoryNumber: '724', moldName: 'Ведро 3л овальное', moldWeight: 0),
    Mold(inventoryNumber: '644-1', moldName: 'Ведро 3.5л овальное', moldWeight: 0),
    Mold(inventoryNumber: '725', moldName: 'Крышка ведра 3л овального', moldWeight: 0),
    Mold(inventoryNumber: '645-1', moldName: 'Ручка ведра 3.5л овального', moldWeight: 0),
    Mold(inventoryNumber: '691-1', moldName: 'Ручка ведра 3л овального', moldWeight: 0),
    Mold(inventoryNumber: '623-1\n984-2\n620-4\n983-3', moldName: 'Ведро 12л для мусора (со съем)', moldWeight: 0),
    Mold(inventoryNumber: '640-1\n639-3', moldName: 'Ручка ведра 12л для мусора (со съем)', moldWeight: 0),
    Mold(inventoryNumber: '767-5\n385-4\n119-1', moldName: 'Крышка ведра 12л для мусора (со съем)', moldWeight: 0),
    Mold(inventoryNumber: '617-2', moldName: 'Ведро 12л круглое (без съем)', moldWeight: 0),
    Mold(inventoryNumber: '733-3\n739-4\n619-1?', moldName: 'Ручка универсальная', moldWeight: 0),
    Mold(inventoryNumber: '994-4\n979-3', moldName: 'Ведро 12л (со съем) 302х266', moldWeight: 0),
    Mold(inventoryNumber: '634-1', moldName: 'Ведро 12л БП610.479', moldWeight: 0),
    Mold(inventoryNumber: '382-1', moldName: 'Ведро 12л БП610.349', moldWeight: 0),
    Mold(inventoryNumber: '186-1', moldName: 'Ведро 12л БП610.833(ПП)', moldWeight: 0),
    Mold(inventoryNumber: '198-1', moldName: 'Ручка ведра 10л 12л', moldWeight: 0),
    Mold(inventoryNumber: '298-2\n522-4?', moldName: 'Ведро 11 (без съем) 610-349', moldWeight: 0),
    Mold(inventoryNumber: '622-4', moldName: 'Ручка ведра 10л', moldWeight: 0),
    Mold(inventoryNumber: '850-4\n126-5', moldName: 'Ведро 10л (со съем)', moldWeight: 0),
    Mold(inventoryNumber: '187-1', moldName: 'Ведро 10л ПП', moldWeight: 0),
    Mold(inventoryNumber: '285-1\n135-1\n137-3', moldName: 'Ведро 10л (сад/огород)', moldWeight: 0),
    Mold(inventoryNumber: '503-1', moldName: 'Ручка ведра 10л (сад/огород)', moldWeight: 0),
    Mold(inventoryNumber: '477-1\n468-2\n469-3', moldName: 'Крышка ведра 10л (сад/огород)', moldWeight: 0),
    Mold(inventoryNumber: '189', moldName: 'Крышка контейнера для мусора', moldWeight: 0),
    Mold(inventoryNumber: '402-1', moldName: 'Ведро 5.5л', moldWeight: 0),
    Mold(inventoryNumber: '384-1', moldName: 'Ручка ведра 5.5л', moldWeight: 0),
    Mold(inventoryNumber: '774-1', moldName: 'Ручка ведра 6.5л (с носиком)', moldWeight: 0),
    Mold(inventoryNumber: '773-1', moldName: 'Ведро 6.5л (с носиком)', moldWeight: 0),
    Mold(inventoryNumber: '613', moldName: 'Ручка ведра 12л (с носиком)', moldWeight: 0),
    Mold(inventoryNumber: '612', moldName: 'Ведро 12л (с носиком)', moldWeight: 0),
    Mold(inventoryNumber: '815-1', moldName: 'Ручка ведра 10л (с носиком)', moldWeight: 0),
    Mold(inventoryNumber: '814-1', moldName: 'Ведро 10л (с носиком)', moldWeight: 0),
    Mold(inventoryNumber: '951-1', moldName: 'Ведро прямоугольное 12л', moldWeight: 0),
    Mold(inventoryNumber: '952-1', moldName: 'Ручка ведра прямоугольного 12л', moldWeight: 0),
    Mold(inventoryNumber: '471-2\n473-3\n478-4', moldName: 'Ведро 7л', moldWeight: 0),
    Mold(inventoryNumber: '501-2\n485-3', moldName: 'Ручка ведра 7л', moldWeight: 0),
    Mold(inventoryNumber: '486-1', moldName: 'Крышка ведра 7л', moldWeight: 0),
    Mold(inventoryNumber: '046', moldName: 'Ведро 6л (сердечко)', moldWeight: 0),
    Mold(inventoryNumber: '345-1', moldName: 'Ручка ведра 6л сердечко', moldWeight: 0),
    Mold(inventoryNumber: '346-2', moldName: 'Ручка ведра 5л / 6л', moldWeight: 0),
    Mold(inventoryNumber: '947-1\n488-2\n490\n487-4', moldName: 'Ведро 5л', moldWeight: 0),
    Mold(inventoryNumber: '956\n669', moldName: 'Ручка ведра 5л', moldWeight: 0),
    Mold(inventoryNumber: '402', moldName: 'Ведро 5.5л', moldWeight: 0),
    Mold(inventoryNumber: '384', moldName: 'Ручка ведра 5.5л', moldWeight: 0),
    Mold(inventoryNumber: '957-2\n050.3', moldName: 'Ведро 3л', moldWeight: 0),
    Mold(inventoryNumber: '958-2\n040-1\n357-3', moldName: 'Ручка ведра 3л', moldWeight: 0),
    Mold(inventoryNumber: '184-1\n183-2', moldName: 'Ведро педальное', moldWeight: 0),
    Mold(inventoryNumber: '188-1\n177-2', moldName: 'Планка ведра педального', moldWeight: 0),
    Mold(inventoryNumber: '191-1\n204-2', moldName: 'Педаль ведра педального', moldWeight: 0),
    Mold(inventoryNumber: '238-1\n930-2', moldName: 'Крышка ведра педального', moldWeight: 0),
    Mold(inventoryNumber: '360-1', moldName: 'Ручка ведра педального', moldWeight: 0),
    Mold(inventoryNumber: '181-1', moldName: 'Кольцо к ведру педальному', moldWeight: 0),
    Mold(inventoryNumber: '015-1', moldName: 'Вкладыш к ведру педальному', moldWeight: 0),
    Mold(inventoryNumber: '625-1', moldName: 'Ведро туалет', moldWeight: 0),
    Mold(inventoryNumber: '637-1', moldName: 'Ручка ведра туалета', moldWeight: 0),
    Mold(inventoryNumber: '635-1', moldName: 'Обод ведра туалета', moldWeight: 0),
    Mold(inventoryNumber: '636-1', moldName: 'Крышка ведра туалета', moldWeight: 0),
    Mold(inventoryNumber: '281-1', moldName: 'Ведро для мусора с педалью', moldWeight: 0),
    Mold(inventoryNumber: '239-1', moldName: 'Корпус ведра для мусора с педалью', moldWeight: 0),
    Mold(inventoryNumber: '237-1', moldName: 'Крышка ведра для мусора с педалью', moldWeight: 0),
    Mold(inventoryNumber: '240-1', moldName: 'Ручка ведра для мусора с педалью', moldWeight: 0),
    Mold(inventoryNumber: '228-1', moldName: 'Планка ведра для мусора с педалью', moldWeight: 0),
    Mold(inventoryNumber: '255-1?', moldName: 'Педаль ведра для мусора с педалью', moldWeight: 0),
    Mold(inventoryNumber: '', moldName: '', moldWeight: 0),
    Mold(inventoryNumber: '', moldName: '', moldWeight: 0),
    Mold(inventoryNumber: '', moldName: '', moldWeight: 0),
    Mold(inventoryNumber: '', moldName: '', moldWeight: 0),
    Mold(inventoryNumber: '', moldName: '', moldWeight: 0),
    Mold(inventoryNumber: '', moldName: '', moldWeight: 0),
    Mold(inventoryNumber: '', moldName: '', moldWeight: 0),
    Mold(inventoryNumber: '', moldName: '', moldWeight: 0),
    Mold(inventoryNumber: '', moldName: '', moldWeight: 0),
    Mold(inventoryNumber: '', moldName: '', moldWeight: 0),
    Mold(inventoryNumber: '', moldName: '', moldWeight: 0),
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
                    flex: 4,
                    child: Text('Название', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  // Expanded(
                  //   flex: 1,
                  //   child: Text('Вес (кг)', style: TextStyle(fontWeight: FontWeight.bold)),
                  // ),
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
                        Expanded(flex: 4, child: Text(mold.moldName)),
                        // flex: 1 - узкая колонка
                        // Expanded(flex: 1, child: Text('${mold.moldWeight}')),
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
