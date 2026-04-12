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
    Mold(inventoryNumber: '587-3\n036-1\n593-2', moldName: 'Таз 12л круглый', moldWeight: 0),
    Mold(inventoryNumber: '309-1?', moldName: 'Таз 12л овальный', moldWeight: 0),
    Mold(inventoryNumber: '995-1', moldName: 'Таз 15л овальный', moldWeight: 0),
    Mold(inventoryNumber: '041-1', moldName: 'Таз 20л', moldWeight: 0),
    Mold(inventoryNumber: '706\n712-1\n704-2', moldName: 'Таз 7л', moldWeight: 0),
    Mold(inventoryNumber: '811-1', moldName: 'Таз 14л овальный с ручкой', moldWeight: 0),
    Mold(inventoryNumber: '812-1', moldName: 'Ручка к таз 14л овальный', moldWeight: 0),
    Mold(inventoryNumber: '588-1\n376-2\n589-3', moldName: 'Таз 30л овальный  ручкой', moldWeight: 0),
    Mold(inventoryNumber: '731-4\n036-3\n312-1', moldName: 'Емкость 40л', moldWeight: 0),
    Mold(inventoryNumber: '649-6', moldName: 'Ящик с ручками 40л', moldWeight: 0),
    Mold(inventoryNumber: '736-1\n732-2', moldName: 'Емкость хоз. (малая) ящик прямоуг.', moldWeight: 0),
    Mold(inventoryNumber: '004', moldName: 'Ящик ребристый 590х460х262', moldWeight: 0),
    Mold(inventoryNumber: '527-1', moldName: 'Ящик для ягод 600х400х140', moldWeight: 0),
    Mold(inventoryNumber: '528-1', moldName: 'Ящик для овощей 600х400х282', moldWeight: 0),
    Mold(inventoryNumber: '511-2', moldName: 'Ящик для овощей 550х360х255', moldWeight: 0),
    Mold(inventoryNumber: '415-1', moldName: 'Крышка к ящику для ягод/овощей', moldWeight: 0),
    Mold(inventoryNumber: '087-1\n090-2', moldName: 'Ящик балкон', moldWeight: 0),
    Mold(inventoryNumber: '094', moldName: 'Ящик балкон для цветов', moldWeight: 0),
    Mold(inventoryNumber: '318', moldName: 'Ящик хозяйственный 12л', moldWeight: 0),
    Mold(inventoryNumber: '072', moldName: 'Крышка ящик хоз. 12л', moldWeight: 0),
    Mold(inventoryNumber: '069', moldName: 'Корзина хозяйственная БП610-584', moldWeight: 0),
    Mold(inventoryNumber: '707', moldName: 'Корзина (нем) БП616-681', moldWeight: 0),
    Mold(inventoryNumber: '689-1', moldName: 'Ручка к корзина (нем)', moldWeight: 0),
    Mold(inventoryNumber: '121', moldName: 'Ящик для молочных бутылок', moldWeight: 0),
    Mold(inventoryNumber: '921', moldName: 'Ящик для рассады 500х229х90', moldWeight: 0),
    Mold(inventoryNumber: '411-1\n280-2\n413-3', moldName: 'Крышка бочки 35л / 50л', moldWeight: 0),
    Mold(inventoryNumber: '321-1', moldName: 'Бочка 36 л', moldWeight: 0),
    Mold(inventoryNumber: '317-1', moldName: 'Крышка бочки 36л', moldWeight: 0),
    Mold(inventoryNumber: '476-1', moldName: 'Бак 65л', moldWeight: 0),
    Mold(inventoryNumber: '067-1\n513-2', moldName: 'Ось фляги 40л', moldWeight: 0),
    Mold(inventoryNumber: '614-2\n460-1\n753?\n758?', moldName: 'Крышка фляги 40л', moldWeight: 0),
    Mold(inventoryNumber: '515-1\n474-2?', moldName: 'Ручка фляги 40л', moldWeight: 0),
    Mold(inventoryNumber: '754-1', moldName: 'Прокладка крышки 20л ???', moldWeight: 0),
    Mold(inventoryNumber: '258', moldName: 'Крышка канистры 5л с кон', moldWeight: 0),
    Mold(inventoryNumber: '199', moldName: 'Крышка канистры (поясок) 1,3,5л', moldWeight: 0),
    Mold(inventoryNumber: '354', moldName: 'Крышка канистры (поясок)', moldWeight: 0),
    Mold(inventoryNumber: '350-2', moldName: 'Крышка канистры 20л (поясок)', moldWeight: 0),
    Mold(inventoryNumber: '118-1', moldName: 'Крышка канистры 1,3,5л', moldWeight: 0),
    Mold(inventoryNumber: '308-1\n314-3\n315-5', moldName: 'Крышка канистры 20л', moldWeight: 0),
    Mold(inventoryNumber: '307-1', moldName: 'Прокладка крышки канистры 20л', moldWeight: 0),
    Mold(inventoryNumber: '755-1\n756-2', moldName: 'Насадка лейки 6л 10л', moldWeight: 0),
    Mold(inventoryNumber: '913-3\n915-1\n914-2', moldName: 'Сетка лейки 6л 10л', moldWeight: 0),
    Mold(inventoryNumber: '730-1', moldName: 'Сетка воронки', moldWeight: 0),
    Mold(inventoryNumber: '781-3\n424-1\n782-1', moldName: 'Трубка', moldWeight: 0),
    Mold(inventoryNumber: '475-1\n481-2', moldName: 'Корзина для бумаг БП610-524', moldWeight: 0),
    Mold(inventoryNumber: '178-1', moldName: 'Миска 5л', moldWeight: 0),
    Mold(inventoryNumber: '179-1', moldName: 'Миска 3л', moldWeight: 0),
    Mold(inventoryNumber: '180-1', moldName: 'Миска 1.5л', moldWeight: 0),
    Mold(inventoryNumber: '295', moldName: 'Ванночка для стирки', moldWeight: 0),
    Mold(inventoryNumber: '286', moldName: 'Ванночка детская', moldWeight: 0),
    Mold(inventoryNumber: '571-2\n920-3', moldName: 'Колпачок шланга для полива', moldWeight: 0),
    Mold(inventoryNumber: '144-3\n735-1\n140-2', moldName: 'Корпус шланга для полива', moldWeight: 0),
    Mold(inventoryNumber: '160-3\n165-4', moldName: 'Кронштейн шлянга для полива', moldWeight: 0),
    Mold(inventoryNumber: '051-1\n967-2', moldName: 'Червяк шланга для полива', moldWeight: 0),
    Mold(inventoryNumber: '548-2', moldName: 'Ниппель', moldWeight: 0),
    Mold(inventoryNumber: '966-4', moldName: 'Заглушка с резьбой 1/2', moldWeight: 0),
    Mold(inventoryNumber: '798', moldName: 'Ниппель с наруж. внутр. резьбой', moldWeight: 0),
    Mold(inventoryNumber: '943-1\n440-4', moldName: 'Ведро детское 610-501', moldWeight: 0),
    Mold(inventoryNumber: '901-3\n356-4', moldName: 'Ручка ведра детского', moldWeight: 0),
    Mold(inventoryNumber: '963-3\n470-5\n461-1', moldName: 'Совок детский', moldWeight: 0),
    Mold(inventoryNumber: '577-2\n579-2', moldName: 'Лопатка детская', moldWeight: 0),
    Mold(inventoryNumber: '579-1', moldName: 'Заглушка (мб лопатка/грабли детские)', moldWeight: 0),
    Mold(inventoryNumber: '591', moldName: 'Грабли детские', moldWeight: 0),
    Mold(inventoryNumber: '677-2', moldName: 'Щит детский', moldWeight: 0),
    Mold(inventoryNumber: '472-3', moldName: 'Шлем детский', moldWeight: 0),
    Mold(inventoryNumber: '039', moldName: 'Скоба детская', moldWeight: 0),
    Mold(inventoryNumber: '701-1', moldName: 'Табурет детский', moldWeight: 0),
    Mold(inventoryNumber: '700-1\n459-2\n751-3', moldName: 'Заглушка палки гимнастической', moldWeight: 0),
    Mold(inventoryNumber: '058', moldName: 'Лыжа детская', moldWeight: 0),
    Mold(inventoryNumber: '364-1\n367-2', moldName: 'Кольцо пирамидды зел', moldWeight: 0),
    Mold(inventoryNumber: '371-1\n372-2', moldName: 'Кольцо пирамидды бел', moldWeight: 0),
    Mold(inventoryNumber: '375-1\n378-2', moldName: 'Кольцо пирамидды син', moldWeight: 0),
    Mold(inventoryNumber: '374-1\n373-2', moldName: 'Кольцо пирамидды кр', moldWeight: 0),
    Mold(inventoryNumber: '412-1', moldName: 'Наконечник пирамиды', moldWeight: 0),
    Mold(inventoryNumber: '409\n410?', moldName: 'Стержень пирамиды', moldWeight: 0),
    Mold(inventoryNumber: '369-1\n352-141', moldName: 'Горшок детский', moldWeight: 0),
    Mold(inventoryNumber: '370-1\n353-2', moldName: 'Крышка горшка детского', moldWeight: 0),
    Mold(inventoryNumber: '368-1', moldName: 'Стульчик детсский', moldWeight: 0),
    Mold(inventoryNumber: '361-1', moldName: 'Горшок туалетный', moldWeight: 0),
    Mold(inventoryNumber: '716-2\n961-3\n696-2\n834-4', moldName: 'Вешалка детская', moldWeight: 0),
    Mold(inventoryNumber: '002', moldName: 'Поднос чайный', moldWeight: 0),
    Mold(inventoryNumber: '658', moldName: 'Поднос (круглый)', moldWeight: 0),
    Mold(inventoryNumber: '116-1', moldName: 'Крышка тортница', moldWeight: 0),
    Mold(inventoryNumber: '115-1', moldName: 'Крышка торт. прямоугольная', moldWeight: 0),
    Mold(inventoryNumber: '689', moldName: 'Поднос (8 угл)', moldWeight: 0),
    Mold(inventoryNumber: '091', moldName: 'Поднос', moldWeight: 0),
    Mold(inventoryNumber: '268-1', moldName: 'Поднос квадратный', moldWeight: 0),
    Mold(inventoryNumber: '269-1', moldName: 'Крышка тортн. квадр.', moldWeight: 0),
    Mold(inventoryNumber: '908-1\n906-2', moldName: 'Кружка мерная 1л', moldWeight: 0),
    Mold(inventoryNumber: '671-1', moldName: 'Горшок для цветов 0.25л', moldWeight: 0),
    Mold(inventoryNumber: '672-1', moldName: 'Поддон горшка для цветов 0.25л', moldWeight: 0),
    Mold(inventoryNumber: '953-1', moldName: 'Горшок для цветов 1л', moldWeight: 0),
    Mold(inventoryNumber: '954-1', moldName: 'Поддон горшка для цветов 1л', moldWeight: 0),
    Mold(inventoryNumber: '878-1\n871-2\n859-3', moldName: 'Горшок для цветов 2л', moldWeight: 0),
    Mold(inventoryNumber: '727\n343', moldName: 'Поддон горшка для цветов 2л', moldWeight: 0),
    Mold(inventoryNumber: '935-1', moldName: 'Горшок для цветов 4л', moldWeight: 0),
    Mold(inventoryNumber: '936-1', moldName: 'Поддон горшка для цветов 4л', moldWeight: 0),
    Mold(inventoryNumber: '887-2', moldName: 'Горшок 6л', moldWeight: 0),
    Mold(inventoryNumber: '889-1', moldName: 'Горшок для цветов 6л', moldWeight: 0),
    Mold(inventoryNumber: '890-1', moldName: 'Поддон горшка для цветов 6л', moldWeight: 0),
    Mold(inventoryNumber: '597-1', moldName: 'Горшок для цветов 2л с подставкой', moldWeight: 0),
    Mold(inventoryNumber: '598-1', moldName: 'Подставка горшка для цветов 2л', moldWeight: 0),
    Mold(inventoryNumber: '328-1', moldName: 'Горшок для цветов настенный 2л', moldWeight: 0),
    Mold(inventoryNumber: '449-1', moldName: 'Горшок 12л', moldWeight: 0),
    Mold(inventoryNumber: '448-1', moldName: 'Поддон для Горшок 12л', moldWeight: 0),
    Mold(inventoryNumber: '655-1', moldName: 'Горшок для цветов овальный', moldWeight: 0),
    Mold(inventoryNumber: '656-1', moldName: 'Поддон для горшок для цветов овальный', moldWeight: 0),
    Mold(inventoryNumber: '447-1', moldName: 'Горшой для цветов конический', moldWeight: 0),
    Mold(inventoryNumber: '446-1', moldName: 'Кашпо для цветов коническ.', moldWeight: 0),
    Mold(inventoryNumber: '534-1', moldName: 'Горшок для рассады', moldWeight: 0),
    Mold(inventoryNumber: '535-1', moldName: 'Дно к горшок для рассады', moldWeight: 0),
    Mold(inventoryNumber: '536-1', moldName: 'Поддон для горшок для рассады', moldWeight: 0),
    Mold(inventoryNumber: '134-3]n362-4\n366-5\n365-1', moldName: 'Кашпо', moldWeight: 0),
    Mold(inventoryNumber: '922-1\n651-2\n654-4', moldName: 'Горшок', moldWeight: 0),
    Mold(inventoryNumber: '830-1', moldName: 'Горшок квадратный 3л', moldWeight: 0),
    Mold(inventoryNumber: '831-1', moldName: 'Поддон для горшок квадратный 3л', moldWeight: 0),
    Mold(inventoryNumber: '129', moldName: 'Горшок квадратный 7л', moldWeight: 0),
    Mold(inventoryNumber: '130', moldName: 'Поддон для горшок квадратный 7л', moldWeight: 0),
    Mold(inventoryNumber: '802', moldName: 'Горшок квадратный 5л', moldWeight: 0),
    Mold(inventoryNumber: '803', moldName: 'Поддон для горшок квадратный 5л', moldWeight: 0),
    Mold(inventoryNumber: '433', moldName: 'Горшок квадратный 1,5л', moldWeight: 0),
    Mold(inventoryNumber: '434', moldName: 'Поддон для горшок квадратный 1,5л', moldWeight: 0),
    Mold(inventoryNumber: '222-1', moldName: 'Вазон земляной', moldWeight: 0),
    Mold(inventoryNumber: '752-1', moldName: 'Лесенка для цветов', moldWeight: 0),
    Mold(inventoryNumber: '959-1\n279-3', moldName: 'Лоток для вилок и ножей', moldWeight: 0),
    Mold(inventoryNumber: '279-6', moldName: 'Лоток для столовых приборов новый', moldWeight: 0),
    Mold(inventoryNumber: '100-1\n432-2\n104-4', moldName: 'Дуршлаг', moldWeight: 0),
    Mold(inventoryNumber: '325-1?', moldName: 'Дуршлаг (новый)', moldWeight: 0),
    Mold(inventoryNumber: '324-1', moldName: 'Поддон для Дуршлаг (новый)', moldWeight: 0),
    Mold(inventoryNumber: '254-1', moldName: 'Дуршлаг с ручкой (мал)', moldWeight: 0),
    Mold(inventoryNumber: '221-1', moldName: 'Банка 1,25л (круг)', moldWeight: 0),
    Mold(inventoryNumber: '227-1', moldName: 'Крышка для Банка 1,25л (круг)', moldWeight: 0),
    Mold(inventoryNumber: '326-2\n327-1', moldName: 'Банка 1,5л (круг)', moldWeight: 0),
    Mold(inventoryNumber: '304-3\n290-2', moldName: 'Крышка для Банка 1,5л (круг)', moldWeight: 0),
    Mold(inventoryNumber: '971-2', moldName: 'Клапан крышки / сып', moldWeight: 0),
    Mold(inventoryNumber: '698-1', moldName: 'Крышка банки 1,1л для сыпучих пр.', moldWeight: 0),
    Mold(inventoryNumber: '702', moldName: 'Банка 1,1л для сыпучих пр.', moldWeight: 0),
    Mold(inventoryNumber: '866', moldName: 'Корпус банки 2л для пищевых', moldWeight: 0),
    Mold(inventoryNumber: '342-1', moldName: 'Тарелка глубокая', moldWeight: 0),
    Mold(inventoryNumber: '343', moldName: 'Тарелка мелкая (поддон для цветов)', moldWeight: 0),
    Mold(inventoryNumber: '592-1', moldName: 'Корпус подставки для сталовых приборов', moldWeight: 0),
    Mold(inventoryNumber: '590-1', moldName: 'Поддон для Корпус подставки для сталовых приборов', moldWeight: 0),
    Mold(inventoryNumber: '520-1', moldName: 'Ложка, вилка, нож', moldWeight: 0),
    Mold(inventoryNumber: '911-1', moldName: 'Стакан мерный 250мл 0,25л', moldWeight: 0),
    Mold(inventoryNumber: '358', moldName: 'Стакан --мерный 250мл 0,25л--?', moldWeight: 0),
    Mold(inventoryNumber: '083-3\n359-2\n963-3', moldName: 'Пылевыбивалка круглая', moldWeight: 0),
    Mold(inventoryNumber: '127-4', moldName: 'Пылевыбивалка веерная', moldWeight: 0),
    Mold(inventoryNumber: '427-3\n423-1', moldName: 'Пылевыбивалка квадратная', moldWeight: 0),
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
