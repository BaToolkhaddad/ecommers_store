import 'package:flutter/material.dart';

import '../../../data/datasource/static/static.dart';
import '../../constant/color.dart';

class DropdownMenuAddAnalyis extends StatelessWidget {



   const DropdownMenuAddAnalyis({super.key});
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Container(
    
          decoration: const BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 116, 113, 113),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(
                                      1, 1), // changes position of shadow
                                ),
                              ],
                            ),
                           
            child: DropdownButtonFormField<String>(
              alignment: Alignment.centerRight,
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
              ),
              // iconSize: 50,
              iconEnabledColor: AppColor.primaryColor,
              iconSize: 30,
              elevation: 8,
              dropdownColor: AppColor.white,
              value: dropdownValuetypeacount,

              onChanged: (newvalue) {
                setState(() {
                  dropdownItemstypeacount= newvalue as List<String>;
                });
              },
              // ignore: missing_return

              items: dropdownItemstypeacount
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * .5,
                      ),
                      Text(value),
                      
                    ],
                  ),
                );
              }).toList(),
            ),
          );
          
  }
  
  void setState(Null Function() param0) {}
}





class DropdownMenuTypeCount extends StatelessWidget {



   const DropdownMenuTypeCount({super.key});
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Container(
    
          decoration: const BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 116, 113, 113),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(
                                      1, 1), // changes position of shadow
                                ),
                              ],
                            ),
                           
            child: DropdownButtonFormField<String>(
              alignment: Alignment.centerRight,
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
              ),
              // iconSize: 50,
              iconEnabledColor: AppColor.primaryColor,
              iconSize: 30,
              elevation: 8,
              dropdownColor: AppColor.white,
              value: dropdownValuetypeacount,

              onChanged: (newvalue) {
                setState(() {
                  dropdownItemstypeacount = newvalue as List<String>;
                });
              },
              // ignore: missing_return

              items: dropdownItemstypeacount
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * .5,
                      ),
                      Text(value),
                      
                    ],
                  ),
                );
              }).toList(),
            ),
          );
          
  }
  
  void setState(Null Function() param0) {}
}