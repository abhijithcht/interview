import 'package:flutter/material.dart';
import 'package:interview/widgets/textwidget.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  TextEditingController barcodeC = TextEditingController();
  TextEditingController locationC = TextEditingController();
  TextEditingController branchC = TextEditingController();
  TextEditingController statusC = TextEditingController();
  TextEditingController counter = TextEditingController();
  TextEditingController sourceC = TextEditingController();
  TextEditingController categoryC = TextEditingController();
  TextEditingController collectionC = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController metal_Grp = TextEditingController();
  TextEditingController sTK_Section = TextEditingController();
  TextEditingController mfgd_By = TextEditingController();
  TextEditingController notes = TextEditingController();
  TextEditingController in_STK_Since = TextEditingController();
  TextEditingController cert_No = TextEditingController();
  TextEditingController hUID_No = TextEditingController();
  TextEditingController order_No = TextEditingController();
  TextEditingController cus_Name = TextEditingController();
  TextEditingController sizeC = TextEditingController();
  TextEditingController quality = TextEditingController();
  TextEditingController kT = TextEditingController();
  TextEditingController pcs = TextEditingController();
  TextEditingController gross_Wt = TextEditingController();
  TextEditingController net_Wt = TextEditingController();
  TextEditingController dia_Pcs = TextEditingController();
  TextEditingController dia_Wt = TextEditingController();
  TextEditingController cls_Pcs = TextEditingController();
  TextEditingController cls_Wt = TextEditingController();
  TextEditingController chain_Wt = TextEditingController();
  TextEditingController m_Rate = TextEditingController();
  TextEditingController m_Value = TextEditingController();
  TextEditingController l_Rate = TextEditingController();
  TextEditingController l_Charges = TextEditingController();
  TextEditingController r_Charges = TextEditingController();
  TextEditingController o_Charges = TextEditingController();
  TextEditingController mRP = TextEditingController();

  final List<String> providedBarcodes = [
    "2PGMBN0000914",
    "2PGMBN0000915",
    "2PGMBN0000916",
    "2PGMBN0000917",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2),
                  child: Row(
                    children: [
                      Expanded(
                        child: SearchAnchor(builder: (BuildContext context,
                            SearchController controller) {
                          return SearchBar(hintText: 'Search',textStyle: MaterialStateProperty.all(TextStyle(color: Colors.black)),
                            backgroundColor:MaterialStateProperty.all(Color(0xff6C6C6C).withOpacity(0.1)),overlayColor: MaterialStateProperty.all(
                                Color(0xff6C6C6C).withOpacity(0.1)),
                            controller: controller,
                            padding: const MaterialStatePropertyAll<EdgeInsets>(
                                EdgeInsets.symmetric(horizontal: 16.0)),
                            onTap: () {
                              controller.openView();
                            },
                            onChanged: (_) {
                              controller.openView();
                            },
                            leading: const Icon(Icons.search,color: Colors.black,),
                          );
                        }, suggestionsBuilder: (BuildContext context,
                            SearchController controller) {
                          return List<ListTile>.generate(4, (int index) {
                            final String suggestion = providedBarcodes[
                                index]; // Use providedBarcodes list
                            return ListTile(
                              title: Text(suggestion),
                              onTap: () {
                                setState(() {
                                  controller.closeView(suggestion);
                                });
                              },
                            );
                          });
                        }),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('clear'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  CustomTextField(
                                      controller: barcodeC, hint: 'Barcode No'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: locationC, hint: 'Location'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: branchC, hint: 'Branch'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: statusC, hint: 'Status'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: counter, hint: 'Counter'),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  CustomTextField(
                                      controller: barcodeC, hint: 'Source'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: locationC, hint: 'Category'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: branchC, hint: 'Collection'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: statusC,
                                      hint: 'Description',
                                      flex: 2),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  CustomTextField(
                                      controller: barcodeC, hint: 'Metal Grp'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: locationC, hint: 'STK Section'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: branchC, hint: 'Mfgd By'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: statusC,
                                      hint: 'Notes',
                                      flex: 2),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  CustomTextField(
                                      controller: barcodeC, hint: 'In STK Since'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: locationC, hint: 'Cert No.'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: branchC, hint: 'HUID No.'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: statusC, hint: 'Order No.'),
                                  SizedBox(width: 8),
                                  CustomTextField(
                                      controller: counter, hint: 'Cus Name'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        height: 320,
                        width: MediaQuery.of(context).size.width*0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomTextField(controller: barcodeC, hint: 'Size'),
                    SizedBox(width: 8),
                    CustomTextField(controller: locationC, hint: 'Quality'),
                    SizedBox(width: 8),
                    CustomTextField(controller: branchC, hint: 'KT'),
                    SizedBox(width: 8),
                    CustomTextField(controller: statusC, hint: 'Pcs'),
                    SizedBox(width: 8),
                    CustomTextField(controller: counter, hint: 'Gross Wt'),
                    SizedBox(width: 8),
                    CustomTextField(controller: counter, hint: 'Net Wt'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomTextField(controller: barcodeC, hint: 'Dia Pcs'),
                    SizedBox(width: 8),
                    CustomTextField(controller: locationC, hint: 'Dia Wt'),
                    SizedBox(width: 8),
                    CustomTextField(controller: branchC, hint: 'Cis Pcs'),
                    SizedBox(width: 8),
                    CustomTextField(controller: statusC, hint: 'Cls Wt'),
                    SizedBox(width: 8),
                    CustomTextField(controller: counter, hint: 'Chain Wt'),
                    SizedBox(width: 8),
                    CustomTextField(controller: counter, hint: 'M Rate'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomTextField(controller: barcodeC, hint: 'M Value'),
                    SizedBox(width: 8),
                    CustomTextField(controller: locationC, hint: 'LRate'),
                    SizedBox(width: 8),
                    CustomTextField(controller: branchC, hint: 'L Charges'),
                    SizedBox(width: 8),
                    CustomTextField(controller: statusC, hint: 'R Charges'),
                    SizedBox(width: 8),
                    CustomTextField(controller: counter, hint: 'O Charges'),
                    SizedBox(width: 8),
                    CustomTextField(controller: counter, hint: 'MRP'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: DataTable(
                      headingRowColor:
                          MaterialStatePropertyAll(Color(0xffD9D9D9)),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                      ),
                      columns: [
                        DataColumn(
                          label: Text('LOT Description'),
                        ),
                        DataColumn(
                          label: Text('Group'),
                        ),
                        DataColumn(
                          label: Text('Units'),
                        ),
                        DataColumn(
                          label: Text('Pcs'),
                        ),
                        DataColumn(
                          label: Text('Weight'),
                        ),
                        DataColumn(
                          label: Text('Rate'),
                        ),
                        DataColumn(
                          label: Text('Value'),
                        ),
                        DataColumn(
                          label: Text('S Rate'),
                        ),
                        DataColumn(
                          label: Text('S Value'),
                        ),
                      ],
                      rows: [],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
