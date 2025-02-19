
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';

class AllShopsScreen extends StatelessWidget {
  AllShopsScreen({super.key});
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.body,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller: controller.searchTextController,
                onChanged: (query) => controller.searchQuery(query),
                decoration: InputDecoration(
                    hintText: 'search...',
                    prefixIcon: Icon(Iconsax.search_normal)
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Obx(() {

                Visibility(visible: true,child: Text(controller.filteredDataList.length.toString()));
                return Expanded(
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      cardTheme: const CardTheme(
                        color: TColors.lightBlue,
                        elevation: 0,
                      ),
                    ),
                    child: PaginatedDataTable2(
                      columnSpacing: 12,
                      minWidth: 786,
                      dividerThickness: 0,
                      horizontalMargin: 12,
                      dataRowHeight: 56,
                      rowsPerPage: 10,
                      headingTextStyle: Theme.of(context).textTheme.titleMedium,
                      headingRowColor:
                      WidgetStateProperty.resolveWith((states) => TColors.body),
                      headingRowDecoration: BoxDecoration(
                        color: TColors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.borderRadiusMd),
                          topRight: Radius.circular(TSizes.borderRadiusMd),
                        ),
                      ),

                      // Checkbox column
                      showCheckboxColumn: true,

                      // Pagination
                      showFirstLastButtons: true,
                      onPageChanged: (value) {},
                      renderEmptyRowsInTheEnd: true,
                      onRowsPerPageChanged: (noOfRows) {},

                      // Sorting
                      sortAscending: controller.sortAscending.value,
                      sortArrowAlwaysVisible: true,
                      sortArrowIcon: Icons.arrow_drop_down_rounded,
                      sortColumnIndex: controller.sortColumnIndex.value,
                      sortArrowBuilder: (bool ascending, bool sorted){
                        if(sorted){
                          return Icon(ascending ? Iconsax.arrow_up_3 : Iconsax.arrow_down, size : TSizes.iconSm);
                        } else {
                          return const Icon(Iconsax.arrow_3 , size: TSizes.iconSm,);
                        }
                      },

                      columns: [
                        DataColumn2(
                          label: Text('Column 1'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),
                        DataColumn(
                          label: Text('Column 2'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),
                        DataColumn(
                          label: Text('Column 3'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),
                        DataColumn(
                          label: Text('Column 4'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),
                        // DataColumn(
                        //   label: const Text('Actions'),
                        // ),
                      ],
                      source: MyData(),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class MyData extends DataTableSource {
  final DashboardController controller = Get.put(DashboardController());

  @override
  DataRow? getRow(int index) {
    final data = controller.filteredDataList[index];

    return DataRow2(
      onTap: () {},
      selected: false,
      onSelectChanged: (value) {},
      cells: [
        DataCell(Text(data['Column 1'] ?? '')),
        DataCell(Text(data['Column 2'] ?? '')),
        DataCell(Text(data['Column 3'] ?? '')),
        DataCell(Text(data['Column 4'] ?? '')),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => controller.filteredDataList.length;
  @override
  int get selectedRowCount => 0;
}

// Controller
class DashboardController extends GetxController {
  var dataList = <Map<String, String>>[].obs;
  var filteredDataList = <Map<String, String>>[].obs;
  RxList<bool> selectedRows = <bool>[].obs;
  RxInt sortColumnIndex = 1.obs;
  RxBool sortAscending = true.obs;
  final searchTextController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    fetchDummyData();
  }

  void sortById(int sortColumnIndex, bool ascending) {
    sortAscending.value = ascending;
    filteredDataList.sort((a, b) {
      if (ascending) {
        return filteredDataList[0]['column1']
            .toString()
            .toLowerCase()
            .compareTo(filteredDataList[0]['column1'].toString().toLowerCase());
      } else {
        return filteredDataList[0]['column1']
            .toString()
            .toLowerCase()
            .compareTo(filteredDataList[0]['column1'].toString().toLowerCase());
      }
    });
    this.sortColumnIndex.value = sortColumnIndex;
  }

  void searchQuery(String query) {
    filteredDataList.assignAll(dataList.where((item) {
      return (item['Column 1']?.toLowerCase() ?? '').contains(query.toLowerCase());
    }).toList());
  }
  void fetchDummyData() {
    dataList.addAll(List.generate(
      36,
          (index) => {
        "Column 1": "Data ${index + 1} - 1",
        "Column 2": "Data ${index + 1} - 2",
        "Column 3": "Data ${index + 1} - 3",
        "Column 4": "Data ${index + 1} - 4",
      },
    ),
    );
    filteredDataList.addAll(List.generate(
      36,
          (index) => {
        "Column 1": "Data ${index + 1} - 1",
        "Column 2": "Data ${index + 1} - 2",
        "Column 3": "Data ${index + 1} - 3",
        "Column 4": "Data ${index + 1} - 4",
      },
    ),);
  }
}
