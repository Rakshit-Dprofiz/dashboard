import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';

/// Controller for managing customer data and state
class CustomerController extends GetxController {
  var dataList = <Map<String, String>>[].obs;
  var filteredDataList = <Map<String, String>>[].obs;
  var sortColumnIndex = 0.obs;
  var sortAscending = true.obs;
  final searchTextController = TextEditingController();

  late final MyData myData;

  @override
  void onInit() {
    super.onInit();
    fetchDummyData();
    myData = MyData(controller: this);
  }

  /// Fetch dummy data (Replace this with API data if needed)
  void fetchDummyData() {
    List<Map<String, String>> dummyData = List.generate(
      36,
          (index) => {
        "Id": "${index + 1}",
        "Customer Name": "Customer ${index + 1}",
        "Customer Email": "customer${index + 1}@email.com",
        "Customer Phone Number": "98765432${index % 10}",
        "Customer Pin Code": "40000${index % 10}",
        "Customer Points": "${(index + 1) * 10}",
        "Customer Offer Selected": "Offer ${index % 5 + 1}",
        "Qr Code": "QR_${index + 1}",
        "Qr Code Generated Time": "2025-03-0${(index % 9) + 1} 12:00 PM",
        "Qr Code Scanned Time": "2025-03-0${(index % 9) + 1} 12:30 PM",
        "Time Difference": "30 minutes",
      },
    );

    dataList.assignAll(dummyData);
    filteredDataList.assignAll(dummyData);
  }

  /// Search functionality: filters the list based on the query.
  void searchQuery(String query) {
    final trimmedQuery = query.trim();
    if (trimmedQuery.isEmpty) {
      filteredDataList.assignAll(dataList);
    } else {
      final lowercaseQuery = trimmedQuery.toLowerCase();
      final filtered = dataList.where((item) {
        return item.values.any(
              (value) => value.toLowerCase().contains(lowercaseQuery),
        );
      }).toList();
      filteredDataList.assignAll(filtered);
    }
    myData.notifyListeners();
  }

  /// Universal Sorting for ALL columns.
  void sortByColumn(int columnIndex, bool ascending) {
    sortAscending.value = ascending;
    sortColumnIndex.value = columnIndex;

    String key = dataList.first.keys.elementAt(columnIndex);

    filteredDataList.sort((a, b) {
      final aVal = a[key]!;
      final bVal = b[key]!;

      final aNum = int.tryParse(aVal);
      final bNum = int.tryParse(bVal);

      if (aNum != null && bNum != null) {
        return ascending ? aNum.compareTo(bNum) : bNum.compareTo(aNum);
      }
      return ascending ? aVal.compareTo(bVal) : bVal.compareTo(aVal);
    });
    myData.notifyListeners();
  }
}

/// DataTable source for PaginatedDataTable2.
class MyData extends DataTableSource {
  final CustomerController controller;
  MyData({required this.controller});

  @override
  DataRow getRow(int index) {
    final data = controller.filteredDataList[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        ...data.entries.map((entry) => DataCell(Text(entry.value))).toList(),
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

/// Main UI for displaying the customer table.
class CustomerScreen extends StatelessWidget {
  CustomerScreen({super.key});
  final CustomerController controller = Get.put(CustomerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.body,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back, color: TColors.textPrimary),
                ),
                const SizedBox(width: 8),
                const Text(
                  "User Screen",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: TColors.textPrimary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: controller.searchTextController,
              onChanged: controller.searchQuery,
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Iconsax.search_normal),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            Expanded(
              child: Obx(() => Theme(
                data: Theme.of(context).copyWith(
                  cardTheme: const CardTheme(
                    color: Colors.white,
                    elevation: 2,
                    shadowColor: Colors.black12,
                  ),
                ),
                child: PaginatedDataTable2(
                  columnSpacing: 16,
                  minWidth: 850,
                  dataRowHeight: 56,
                  rowsPerPage: 10,
                  horizontalMargin: 12,
                  dividerThickness: 1,
                  headingTextStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: TColors.textPrimary,
                  ),
                  headingRowColor: WidgetStateProperty.resolveWith(
                          (_) => TColors.primary),
                  headingRowDecoration: BoxDecoration(
                    color: TColors.primary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  showCheckboxColumn: false,
                  showFirstLastButtons: true,
                  sortColumnIndex: controller.sortColumnIndex.value,
                  sortAscending: controller.sortAscending.value,
                  sortArrowAlwaysVisible: true,
                  columns: [
                    for (var key in controller.dataList.first.keys)
                      DataColumn(
                        label: Text(key),
                        onSort: (columnIndex, ascending) {
                          controller.sortByColumn(columnIndex, ascending);
                        },
                      ),
                  ],
                  source: controller.myData,
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}