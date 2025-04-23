/*import 'package:data_table_2/data_table_2.dart';
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
                    prefixIcon: Icon(Iconsax.search_normal)),
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Obx(() {
                Visibility(
                    visible: true,
                    child: Text(controller.filteredDataList.length.toString()));
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
                      headingRowColor: WidgetStateProperty.resolveWith(
                          (states) => TColors.body),
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
                      sortArrowBuilder: (bool ascending, bool sorted) {
                        if (sorted) {
                          return Icon(
                              ascending
                                  ? Iconsax.arrow_up_3
                                  : Iconsax.arrow_down,
                              size: TSizes.iconSm);
                        } else {
                          return const Icon(
                            Iconsax.arrow_3,
                            size: TSizes.iconSm,
                          );
                        }
                      },

                      columns: [
                        DataColumn2(
                          label: Text('Shop ID'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),
                        DataColumn(
                          label: Text('Shop Name'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),
                        DataColumn(
                          label: Text('Shop Address'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),
                        DataColumn(
                          label: Text('Pin Code'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),DataColumn(
                          label: Text('Shop Gst'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),DataColumn(
                          label: Text('Owner Name'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),DataColumn(
                          label: Text('Phone No'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),DataColumn(
                          label: Text('Owner Email'),
                          onSort: (columnIndex, ascending) =>
                              controller.sortById(columnIndex, ascending),
                        ),DataColumn(
                          label: Text('Action'),
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
        DataCell(Text(data['Shop Id'] ?? '')),
        DataCell(Text(data['Shop Name'] ?? '')),
        DataCell(Text(data['Shop Address'] ?? '')),
        DataCell(Text(data['Pin Code'] ?? '')),
        DataCell(Text(data['Shop Gst'] ?? '')),
        DataCell(Text(data['Owner Name'] ?? '')),
        DataCell(Text(data['Phone no'] ?? '')),
        DataCell(Text(data['Owner Email'] ?? '')),
        DataCell(Text(data['Action'] ?? '')),
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
      return (item['Column 1']?.toLowerCase() ?? '')
          .contains(query.toLowerCase());
    }).toList());
  }

  void fetchDummyData() {
    dataList.addAll(
      List.generate(
        36,
        (index) => {
          "Shop ID": "Data ${index + 1} - 1",
          "Shop Name": "Data ${index + 1} - 2",
          "Shop Address": "Data ${index + 1} - 3",
          "Pin Code": "Data ${index + 1} - 4",
          "Shop Gst": "Data ${index + 1} - 5",
          "Owner Name": "Data ${index + 1} - 6",
          "Phone No": "Data ${index + 1} - 7",
          "Owner Email": "Data ${index + 1} - 8",
          "Action": "Data ${index + 1} - 9",
        },
      ),
    );
    filteredDataList.addAll(
      List.generate(
        36,
        (index) => {
          "Shop ID": "Data ${index + 1} - 1",
          "Shop Name": "Data ${index + 1} - 2",
          "Shop Address": "Data ${index + 1} - 3",
          "Pin Code": "Data ${index + 1} - 4",
          "Shop Gst": "Data ${index + 1} - 5",
          "Owner Name": "Data ${index + 1} - 6",
          "Phone No": "Data ${index + 1} - 7",
          "Owner Email": "Data ${index + 1} - 8",
          "Action": "Data ${index + 1} - 9",
        },
      ),
    );
  }
}*/

//------old original----------------


/*
  import 'package:data_table_2/data_table_2.dart';
  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:iconsax/iconsax.dart';
  import 'package:trashee_dashboard/utils/constants/colors.dart';
  import 'package:trashee_dashboard/utils/constants/sizes.dart';

  import '../../dashboard/pages/shop detail/shop_detail_page.dart';

  /// Controller for managing shop data and state
  class DashboardController extends GetxController {
    var dataList = <Map<String, String>>[].obs;
    var filteredDataList = <Map<String, String>>[].obs;
    var sortColumnIndex = 0.obs;
    var sortAscending = true.obs;
    final searchTextController = TextEditingController();

    @override
    void onInit() {
      super.onInit();
      fetchDummyData();
    }

    /// Fetch dummy data (Replace this with API data if needed)
    void fetchDummyData() {
      List<Map<String, String>> dummyData = List.generate(
        36,
        (index) => {
          "Shop ID": "${index + 1}",
          "Shop Name": "Shop ${index + 1}",
          "Shop Address": "Address ${index + 1}",
          "Pin Code": "12345${index % 10}",
          "Shop Gst": "GST${index + 1000}",
          "Owner Name": "Owner ${index + 1}",
          "Phone No": "98765432${index % 10}",
          "Owner Email": "owner${index + 1}@shop.com",
          // "Action": "",
        },
      );

      dataList.assignAll(dummyData);
      filteredDataList.assignAll(dummyData);
    }

    /// Search functionality
    void searchQuery(String query) {
      if (query.isEmpty) {
        filteredDataList.assignAll(dataList);
      } else {
        final lowercaseQuery = query.toLowerCase();
        filteredDataList.assignAll(
          dataList.where((item) => item.values.any((value) => value.toLowerCase().contains(lowercaseQuery))).toList(),
        );
      }
    }


    /// Universal Sorting for **ALL** columns
    void sortByColumn(int columnIndex, bool ascending) {
      sortAscending.value = ascending;
      sortColumnIndex.value = columnIndex;

      String key = dataList.first.keys.elementAt(columnIndex);

      filteredDataList.sort((a, b) {
        final aVal = a[key]!;
        final bVal = b[key]!;

        // Numeric Sorting (if applicable)
        final aNum = num.tryParse(aVal);
        final bNum = num.tryParse(bVal);

        if (aNum != null && bNum != null) {
          return ascending ? aNum.compareTo(bNum) : bNum.compareTo(aNum);
        }

        // Alphabetical Sorting (fallback)
        return ascending ? aVal.compareTo(bVal) : bVal.compareTo(aVal);
      });
    }
  }

  /// DataTable source for PaginatedDataTable2
class MyData extends DataTableSource {
  final DashboardController controller = Get.find();

  @override
  DataRow getRow(int index) {
    final data = controller.filteredDataList[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        ...data.entries.map((entry) => DataCell(Text(entry.value))).toList(),
        DataCell(
          IconButton(
            icon: Icon(Iconsax.eye3, color: Colors.red),
            onPressed: () {},
          ),
        ),
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

  /// Main UI for displaying the shop table
  class AllShopsScreen extends StatelessWidget {
    AllShopsScreen({super.key});
    final DashboardController controller = Get.put(DashboardController());

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: TColors.body,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Search Bar
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

              // Data Table
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
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                        showCheckboxColumn: false,
                        showFirstLastButtons: true,
                        sortColumnIndex: controller.sortColumnIndex.value,
                        sortAscending: controller.sortAscending.value,
                        sortArrowAlwaysVisible: true,
                        columns: controller.dataList.first.keys.map((key) {
                          int index = controller.dataList.first.keys
                              .toList()
                              .indexOf(key);
                          return DataColumn(
                            label: Text(key),
                            onSort: (columnIndex, ascending) {
                              controller.sortByColumn(columnIndex, ascending);
                            },
                          );
                        }).toList()
                          ..add(const DataColumn(label: Text("Actions"))),
                        source: MyData(),
                      ),
                    )),
              ),
            ],
          ),
        ),
      );
    }
  }
*/

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';

import 'shops detail/shop_detail_page.dart';

/// Controller for managing shop data and state
class DashboardController extends GetxController {
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
        "Shop ID": "${index + 1}",
        "Shop Name": "Shop ${index + 1}",
        "Shop Address": "Address ${index + 1}",
        "Pin Code": "12345${index % 10}",
        "Shop Gst": "GST${index + 1000}",
        "Owner Name": "Owner ${index + 1}",
        "Phone No": "98765432${index % 10}",
        "Owner Email": "owner${index + 1}@shop.com",
      },
    );

    dataList.assignAll(dummyData);
    filteredDataList.assignAll(dummyData);
  }

  /// Search functionality: filters the list based on the query.
  void searchQuery(String query) {
    final trimmedQuery = query.trim();
    if (trimmedQuery.isEmpty) {
      // If the query is empty, show all data.
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
    // Notify the DataTableSource to rebuild the table.
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

      // Try to parse both values as integers.
      final aNum = int.tryParse(aVal);
      final bNum = int.tryParse(bVal);

      if (aNum != null && bNum != null) {
        return ascending ? aNum.compareTo(bNum) : bNum.compareTo(aNum);
      }
      // Fallback: compare as strings.
      return ascending ? aVal.compareTo(bVal) : bVal.compareTo(aVal);
    });
    // Notify the DataTableSource to rebuild the table after sorting.
    myData.notifyListeners();
  }
}

/// DataTable source for PaginatedDataTable2.
class MyData extends DataTableSource {
  final DashboardController controller;
  MyData({required this.controller});

  @override
  DataRow getRow(int index) {
    final data = controller.filteredDataList[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        ...data.entries.map((entry) => DataCell(Text(entry.value))).toList(),
        DataCell(
          IconButton(
            icon: const Icon(Iconsax.eye3, color: Colors.red),
            onPressed: () {
              Get.to(() => ShopDetailPage(), arguments: data);
            },
          ),
        ),
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

/// Main UI for displaying the shop table.
class AllShopsScreen extends StatelessWidget {
  AllShopsScreen({super.key});
  final DashboardController controller = Get.put(DashboardController());

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
                  "All Shop",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: TColors.textPrimary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Search Bar
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
            // Data Table
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
                    const DataColumn(label: Text("Actions")),
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
