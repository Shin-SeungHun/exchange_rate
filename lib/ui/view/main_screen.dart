import 'package:exchange_rate/ui/view_model/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final MainViewModel viewModel = GetIt.instance<MainViewModel>();
    List<String> dropdownList = ['1', '2', '3'];
    String selectedDropdown = '1';
    return Scaffold(
      appBar: AppBar(
        leading: const FlutterLogo(),
        title: const Text('환율 계산기'),
      ),
      body:  Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 기준 통화 금액 입력 필드
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '기준 통화 금액',
              ),
            ),
            // 기준 통화 드롭다운 목록
            // DropdownButton<String> (
            //   value: state.baseCode,
            //   onChanged: (value) async {
            //     viewModel.inputBaseCode(value!);
            //   },
            //   items:  await viewModel.resultList ?? [];
            //
            // ),
            DropdownButton<String>(
              value: viewModel.state.baseCode,
              onChanged: (value)  {
                viewModel.updateRateResult(baseCode: 'KRW', targetCode: 'EUR', amount: '1000');
              },
              items: ( viewModel.resultList)!.map<DropdownMenuItem<String>>((item) {
                return DropdownMenuItem<String>(
                  value: item.toString(),
                  child: Text(item.toString()),
                );
              }).toList(),
            ),

            // 대상 통화 금액 입력 필드
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '대상 통화 금액',
              ),
            ),
            // 대상 통화 드롭다운 목록
          ],
        ),
      ),
    );
  }
}
