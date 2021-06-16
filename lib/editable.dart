// Copyright 2020 Godwin Asuquo. All rights reserved.
//
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.


import 'dart:convert';

import 'package:firebase/firebase.dart';

import './editable_2.dart';
import 'package:flutter/material.dart';


class Editable extends StatefulWidget {

  Editable(
      {Key key,
      this.columns,
      this.rows,
      this.columnRatio = 0.20,
      this.onSubmitted,
      this.onRowSaved,
      this.onDelete,
      this.columnCount = 0,
      this.rowCount = 0,
      this.borderColor = Colors.grey,
      this.tdPaddingLeft = 8.0,
      this.tdPaddingTop = 8.0,
      this.tdPaddingRight = 8.0,
      this.tdPaddingBottom = 12.0,
      this.thPaddingLeft = 8.0,
      this.thPaddingTop = 0.0,
      this.thPaddingRight = 8.0,
      this.thPaddingBottom = 0.0,
      this.trHeight = 50.0,
      this.borderWidth = 0.5,
      this.thWeight = FontWeight.w600,
      this.thSize = 18,
      this.showDeleteIcon = false,
      this.deleteIcon = Icons.delete,
      this.deleteIconColor = Colors.black12,
      this.deleteIconSize = 18,
      this.tdAlignment = TextAlign.start,
      this.tdStyle,
      this.tdEditableMaxLines = 1,
      this.thAlignment = TextAlign.start,
      this.thStyle,
      this.thVertAlignment = CrossAxisAlignment.center,
      this.showCreateButton = false,
      this.createButtonAlign = CrossAxisAlignment.start,
      this.createButtonIcon,
      this.createButtonColor,
      this.createButtonShape,
      this.createButtonLabel,
      this.color1 = Colors.white,
      this.color2 = Colors.black12,
      this.color3 = Colors.white,
      this.color4 = Colors.black12,
      this.zebraStripe = false,
      this.focusedBorder,
      this.height,
      this.gender,
      this.formKey})
      : super(key: key);

  /// A data set to create headers
  ///
  /// Can be null if blank columns are needed, else:
  /// Must be array of objects
  /// with the following keys: [title], [widthFactor] and [key]
  ///
  /// example:
  /// ```dart
  /// List cols = [
  ///   {"title":'Name', 'widthFactor': 0.1, 'key':'name', 'editable': false},
  ///   {"title":'Date', 'widthFactor': 0.2, 'key':'date'},
  ///   {"title":'Month', 'widthFactor': 0.1, 'key':'month', 'editable': false},
  ///   {"title":'Status', 'widthFactor': 0.1, 'key':'status'},
  /// ];
  /// ```
  /// [title] is the column heading
  ///
  /// [widthFactor] a custom size ratio of each column width, if not provided, defaults to  [columnRatio = 0.20]
  /// ```dart
  /// 'widthFactor': 0.1 //gives 10% of screen size to the column
  /// 'widthFactor': 0.2 //gives 20% of screen size to the column
  /// ```
  ///
  /// [key] an identifier preferably a short string
  /// [editable] a boolean, if the column should be editable or not, [true] by default.
  final List columns;

  /// A data set to create rows
  ///
  /// Can be null if empty rows are needed. else,
  /// Must be array of objects
  /// with keys matching [key] provided in the column array
  ///
  /// example:
  /// ```dart
  ///List rows = [
  ///          {"name": 'James Joe', "date":'23/09/2020',"month":'June',"status":'completed'},
  ///          {"name": 'Daniel Paul', "date":'12/4/2020',"month":'March',"status":'new'},
  ///        ];
  /// ```
  /// each objects DO NOT have to be positioned in same order as its column

  final List rows;

  /// Interger value of number of rows to be generated:
  ///
  /// Optional if row data is provided
  final int rowCount;

  /// Interger value of number of columns to be generated:
  ///
  /// Optional if column data is provided
  final int columnCount;

  /// aspect ration of each column,
  /// sets the ratio of the screen width occupied by each column
  /// it is set in fraction between 0 to 1.0
  /// 0.8 indicates 80 percent width per column
  final double columnRatio;

  /// Color of table border
  final Color borderColor;

  /// width of table borders
  final double borderWidth;

  /// Table data cell padding left
  final double tdPaddingLeft;

  /// Table data cell padding top
  final double tdPaddingTop;

  /// Table data cell padding right
  final double tdPaddingRight;

  /// Table data cell padding bottom
  final double tdPaddingBottom;

  /// Aligns the table data
  final TextAlign tdAlignment;

  /// Style the table data
  final TextStyle tdStyle;

  /// Max lines allowed in editable text, default: 1 (longer data will not wrap and be hidden), setting to 100 will allow wrapping and not increase row size
  final int tdEditableMaxLines;

  /// Table header cell padding left
  final double thPaddingLeft;

  /// Table header cell padding top
  final double thPaddingTop;

  /// Table header cell padding right
  final double thPaddingRight;

  /// Table header cell padding bottom
  final double thPaddingBottom;

  /// Aligns the table header
  final TextAlign thAlignment;

  /// Style the table header - use for more control of header style, using this OVERRIDES the thWeight and thSize parameters and those will be ignored.
  final TextStyle thStyle;

  /// Table headers fontweight (use thStyle for more control of header style)
  final FontWeight thWeight;

  /// Table header label vertical alignment
  final CrossAxisAlignment thVertAlignment;

  /// Table headers fontSize  (use thStyle for more control of header style)
  final double thSize;

  /// Table Row Height
  /// cannot be less than 40.0
  final double trHeight;

  /// Toogles the save button,
  /// if [true] displays an icon to save rows,
  /// adds an addition column to the right
  final bool showDeleteIcon;

  /// Icon for to save row data
  /// example:
  ///
  /// ```dart
  /// saveIcon : Icons.add
  /// ````
  final IconData deleteIcon;

  /// Color for the save Icon
  final Color  deleteIconColor;

  /// Size for the saveIcon
  final double deleteIconSize;

  /// displays a button that adds a new row onPressed
  final bool showCreateButton;

  /// Aligns the button for adding new rows
  final CrossAxisAlignment createButtonAlign;

  /// Icon displayed in the create new row button
  final Icon createButtonIcon;

  /// Color for the create new row button
  final Color createButtonColor;

  /// border shape of the create new row button
  ///
  /// ```dart
  /// createButtonShape: RoundedRectangleBorder(
  ///   borderRadius: BorderRadius.circular(8)
  /// )
  /// ```
  final BoxShape createButtonShape;

  /// Label for the create new row button
  final Widget createButtonLabel;

 final Color color1;
 final Color color2;
 final Color color3;
 final Color color4;

  /// enable zebra-striping, set to false by default
  /// if enabled, you can style the colors [stripeColor1] and [stripeColor2]
  final bool zebraStripe;

  final InputBorder focusedBorder;


  ///[onSubmitted] callback is triggered when the enter button is pressed on a table data cell
  /// it returns a value of the cell data
  final ValueChanged<String> onSubmitted;

  /// [onRowSaved] callback is triggered when a [saveButton] is pressed.
  /// returns only values if row is edited, otherwise returns a string ['no edit']
  final ValueChanged<dynamic> onRowSaved;

    final ValueChanged<dynamic> onDelete;


    final String height;
    final String gender;
    final GlobalKey<FormState> formKey;

  @override
  EditableState createState() => EditableState(
      rows: this.rows,
      columns: this.columns,
      rowCount: this.rowCount,
      columnCount: this.columnCount);
}

class EditableState extends State<Editable> {
  List rows, columns;
  int columnCount;
  int rowCount;

  ///Get all edited rows
  List get editedRows => _editedRows;
  List get editedRows2 => _editedRows2;
  String get editedKey => _editedKey;
  Database firebaseDatabase = database();
  ///Create a row after the last row
  createRow() => addOneRow(columns, rows);


  EditableState({this.rows, this.columns, this.columnCount, this.rowCount});

  /// Temporarily holds all edited rows
  List _editedRows = [];
  List _editedRows2 = [];
  String _editedKey;
   bool cargando =false;
  @override
  Widget build(BuildContext context) {
    /// initial Setup of columns and row, sets count of column and row
    rowCount = rows == null || rows.isEmpty ? widget.rowCount : rows.length;
    columnCount =
        columns == null || columns.isEmpty ? columnCount : columns.length;
    columns = columns ?? columnBlueprint(columnCount, columns);
    rows = rows ?? rowBlueprint(rowCount, columns, rows);

    /// Builds saveIcon widget
    Widget _deleteIcon(index) {
      return IconButton(
        padding: EdgeInsets.only(right: widget.tdPaddingRight),
        hoverColor: Colors.transparent,
        icon: Icon(
          widget.deleteIcon,
          color: widget.deleteIconColor,
          size: widget.deleteIconSize,
        ),
        onPressed: () async{
      setState((){
     cargando=true;
      });
   
    DatabaseReference ref =
      firebaseDatabase.ref('W8BP78bU2oSUsOkiJvQTFLicseg1/seguimiento');
      await ref.remove();
      print(rows);
     
    rows.removeAt(index);
       
      
      print(rows);
 
List rows2 = [];

rows.forEach((element) {
  rows2.add(element);
});
print(rows2);
 print('acaba');
   
  
  int i=0;
 rows2.forEach((element) {
   print(element);
if (element!= {}) {
  
  element.forEach((key,value) async{
  
  
       firebaseDatabase.ref(
                  'W8BP78bU2oSUsOkiJvQTFLicseg1/seguimiento/$i/$key').set(value);
                  
       
          
           
  });
 i=i+1;
}

print('esta aquí');

  });
 
setState(() {
      cargando=false;
    });

        },
      );
    }
 /// Builds saveIcon widget
    Widget _saveIcon() {
      return Flexible(
        fit: FlexFit.loose,
        child: IconButton(
          padding: EdgeInsets.only(right: widget.tdPaddingRight),
          hoverColor: Colors.transparent,
          icon: Icon(
            Icons.save,
            color: Color(0xff0A183D),
            size: 32,
          ),
          onPressed: () {
            int i;
         print(editedRows2);
         editedRows2.forEach((element) {
           element.forEach(
             (key,value) {
             if (key=='row')
                i = value;
             else {
       firebaseDatabase.ref(
                  'W8BP78bU2oSUsOkiJvQTFLicseg1/seguimiento/$i/$key').set(value);
             }
                  });
         });
          },
        ),
      );
    }
    /// Generates table columns
    List<Widget> _tableHeaders() {

      return List<Widget>.generate(columnCount + 1, (index) {
        return columnCount + 1 == (index + 1)
            ? Container()
            : 
           
            THeader(
                widthRatio: columns[index]['widthFactor'] != null
                    ? columns[index]['widthFactor'].toDouble()
                    : widget.columnRatio,
                thAlignment: widget.thAlignment,
                thStyle: widget.thStyle,
                thPaddingLeft: widget.thPaddingLeft,
                thPaddingTop: widget.thPaddingTop,
                thPaddingBottom: widget.thPaddingBottom,
                thPaddingRight: widget.thPaddingRight,
                headers: columns,
                thWeight: widget.thWeight,
                thSize: widget.thSize,
                index: index);
      });
    }

    /// Generates table rows
    List<Widget> _tableRows() {
      return List<Widget>.generate(rowCount, (index) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(columnCount + 1, (rowIndex) {
            var ckeys = [];
            var cwidths = [];
            var ceditable = <bool>[];
            columns.forEach((e) {
              ckeys.add(e['key']);
              cwidths.add(e['widthFactor'] ?? widget.columnRatio);
              ceditable.add(e['editable'] ?? true);
            });
            var list = rows[index];
            return columnCount + 1 == (rowIndex + 1)
                ? _deleteIcon(index)
                : RowBuilder(
                    index: index,
                    rowIndex:rowIndex,
                    col: ckeys[rowIndex],
                    trHeight: widget.trHeight,
                    borderColor: widget.borderColor,
                    borderWidth: widget.borderWidth,
                    cellData: list[ckeys[rowIndex]],
                    tdPaddingLeft: widget.tdPaddingLeft,
                    tdPaddingTop: widget.tdPaddingTop,
                    tdPaddingBottom: widget.tdPaddingBottom,
                    tdPaddingRight: widget.tdPaddingRight,
                    tdAlignment: widget.tdAlignment,
                    tdStyle: widget.tdStyle,
                    tdEditableMaxLines: widget.tdEditableMaxLines,
                    onSubmitted: widget.onSubmitted,
                    widthRatio: cwidths[rowIndex].toDouble(),
                    isEditable: ceditable[rowIndex],
                    zebraStripe: widget.zebraStripe,
                    focusedBorder: widget.focusedBorder,
                    color1: widget.color1,
                    color2: widget.color2,
                    color3: widget.color1,
                    color4: widget.color2,
                    onChanged: (value) {
                       
                     
                              print('cambiaaaaa');
                       _editedKey = ckeys[rowIndex];
                    
                   

                      ///adds a new edited data to a temporary holder
                      
                        var temp = {};
                        temp['row'] = index;
                        temp[ckeys[rowIndex]] = value;
                         editedRows.clear();
                 
                        editedRows.add(temp);
                       
                   var result = editedRows2.indexWhere((element) {
                        return element['row'] != index ? false : true;
                      });

                      ///adds a new edited data to a temporary holder
                      if (result != -1) {
                        editedRows2[result][ckeys[rowIndex]] = value;
                      } else {
                        var temp = {};
                        temp['row'] = index;
                        temp[ckeys[rowIndex]] = value;
                        editedRows2.add(temp);
                      }
               
                    },
                  );
          }),
        );
      });
    }

    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        
        (cargando==false) ?  SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
              Form(
                 key: widget.formKey,
                              child: Column(crossAxisAlignment: widget.createButtonAlign, children: [
            //Table Header
            _saveIcon(),
            createButton(),
            Container(
                width: MediaQuery.of(context).size.width*0.125,
                child:
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
            Column(
              children: [
                Text('Altura:',style: widget.thStyle ?? TextStyle(fontWeight: widget.thWeight, fontSize: widget.thSize) ,),
              Text('(cm)',style: widget.thStyle ?? TextStyle(fontWeight: widget.thWeight, fontSize: widget.thSize) ,),
              ],
            ),
            SizedBox(width: 10,),
            Container(
                width: 100,
                child: TextFormField(
                    textAlign: widget.tdAlignment,
                    style: widget.tdStyle,
                    initialValue: (widget.height == 'null') ? '' : widget.height,
                    onFieldSubmitted: widget.onSubmitted,
                    onChanged: (_){
                    print('hay cambio');
                    },
                    textAlignVertical: TextAlignVertical.center,
                    maxLines: widget.tdEditableMaxLines,
                    decoration: InputDecoration(
                      filled: widget.zebraStripe,
             
                      contentPadding: EdgeInsets.only(
                          left: widget.tdPaddingLeft,
                          right: widget.tdPaddingRight,
                          top: widget.tdPaddingTop,
                          bottom: widget.tdPaddingBottom),
                      border: InputBorder.none,
                      focusedBorder: widget.focusedBorder,
                      errorMaxLines: 5
                    ),
                  validator: (value){
                      if (int.tryParse(value)!=null){
                      if (int.parse(value) < 100)
                      return 'Tu altura en cm no puede ser menor que 100';
                      if (int.parse(value) > 250)
                      return 'Tu altura en cm no puede ser mayor que 250';
                      else return null; }
                      else return 'Debes escribir un número entero';

                    }
                  ),
            ),
            
       
            ],)),
             Container(
                 width: MediaQuery.of(context).size.width*0.125,
                 child:
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
            Text('Sexo:',style: widget.thStyle ?? TextStyle(fontWeight: widget.thWeight, fontSize: widget.thSize) ,),
            SizedBox(width: 10,),
            Container(
                width: 100,
                child: TextFormField(
                  
                    textAlign: widget.tdAlignment,
                    style: widget.tdStyle,
                    initialValue: (widget.gender == 'null') ? '' : widget.gender,
                    onFieldSubmitted: widget.onSubmitted,
                    onChanged: (value){
                      
                    
                    },
                    textAlignVertical: TextAlignVertical.center,
                    maxLines: widget.tdEditableMaxLines,
                    decoration: InputDecoration(
                      filled: widget.zebraStripe,
             
                      contentPadding: EdgeInsets.only(
                          left: widget.tdPaddingLeft,
                          right: widget.tdPaddingRight,
                          top: widget.tdPaddingTop,
                          bottom: widget.tdPaddingBottom),
                      border: InputBorder.none,
                      focusedBorder: widget.focusedBorder,
                      errorMaxLines: 5
                    ),
                    validator: (value){
                      if (value.toLowerCase() =='hombre' || value.toLowerCase() == 'mujer')
                      return null;
                      else return 'Debes escribir tu sexo (hombre o mujer)';

                    },
                  ),
            )
       
            ],)),
            Container(
                padding: EdgeInsets.only(bottom: widget.thPaddingBottom),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: widget.borderColor,
                            width: widget.borderWidth))),
                child: Row(
                    crossAxisAlignment: widget.thVertAlignment,
                    mainAxisSize: MainAxisSize.min,
                    children: _tableHeaders()),
            ),

            Expanded(
                child: 
            
                SingleChildScrollView(
                  child: 
                  
                  
                  Column(
                    children: _tableRows(),
                  )
                )
            )
          ]),
              ),
        ): Center(child: CircularProgressIndicator(backgroundColor: Colors.orange,)),
      ) 
    );
  }

  /// Button for creating a new empty row
  Widget createButton() {
    return Visibility(
      visible: widget.showCreateButton,
      child: Padding(
        padding: EdgeInsets.only(left: 4.0, bottom: 4),
        child: InkWell(
          onTap: () {
             rows = addOneRow(columns, rows);
            rowCount = rowCount + 1;
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: widget.createButtonColor ?? Colors.white,
              boxShadow: [
                BoxShadow(blurRadius: 2, color: Colors.grey.shade400)
              ],
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
            ),
            child: widget.createButtonIcon ?? Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
class THeader extends StatelessWidget {
  ///Builds elements for the table headers
THeader(
      {Key key,
      this.thPaddingLeft,
      this.thPaddingTop,
      this.thPaddingBottom,
      this.thPaddingRight,
      List headers,
      this.thAlignment,
      this.thStyle,
      FontWeight thWeight,
      double thSize,
      double widthRatio,
      int index})
      : _headers = headers,
        _thWeight = thWeight,
        _thSize = thSize,
        _index = index,
        _widthRatio = widthRatio,
        super(key: key);

  final double thPaddingLeft;
  final double thPaddingTop;
  final double thPaddingBottom;
  final double thPaddingRight;
  List _headers;
  final TextAlign thAlignment;
  final TextStyle thStyle;
  final FontWeight _thWeight;
  final double _thSize;
  final int _index;
  final double _widthRatio;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        width: width * _widthRatio,
        child: Padding(
          padding: EdgeInsets.only(
              left: thPaddingLeft,
              top: thPaddingTop,
              bottom: thPaddingBottom,
              right: thPaddingRight),
          child: Text(
            _headers != null ? _headers.isNotEmpty
                ? _headers[_index]['title'] : ''
                : '',
            style:
                thStyle ?? TextStyle(fontWeight: _thWeight, fontSize: _thSize),
            textAlign: thAlignment ?? TextAlign.start,
          ),
        ),
      ),
    );
  }
}


class RowBuilder extends StatefulWidget {
  ///Builds row elements for the table
  /// its properties are not nullable
  const RowBuilder({
    Key key,
    this.tdAlignment,
    this.tdStyle,
    double trHeight,
    Color borderColor,
    double borderWidth,
    this.cellData,
    this.index,
    this.rowIndex,
    this.col,
    this.tdPaddingLeft,
    this.tdPaddingTop,
    this.tdPaddingBottom,
    this.tdPaddingRight,
    this.tdEditableMaxLines,
    this.onSubmitted,
    this.onChanged,
    this.widthRatio,
    this.isEditable,
    this.color1,
    this.color2,
    this.color3,
    this.color4,
    this.zebraStripe,
    this.focusedBorder,
  })   : _trHeight = trHeight,
        _borderColor = borderColor,
        _borderWidth = borderWidth,
        super(key: key);

  /// Table row height
  final double _trHeight;
  final Color _borderColor;
  final double _borderWidth;
  final cellData;
  final double widthRatio;
  final bool isEditable;
  final TextAlign tdAlignment;
  final TextStyle tdStyle;
  final int index;
  final int rowIndex;
  final col;
  final double tdPaddingLeft;
  final double tdPaddingTop;
  final double tdPaddingBottom;
  final double tdPaddingRight;
  final int tdEditableMaxLines;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final bool zebraStripe;
  final InputBorder focusedBorder;
  final ValueChanged<String> onSubmitted;
  final ValueChanged<String> onChanged;

  @override
  _RowBuilderState createState() => _RowBuilderState();
}

class _RowBuilderState extends State<RowBuilder> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    return Flexible(
      fit: FlexFit.loose,
      flex: 6,
      child: Container(
        height: widget._trHeight < 40 ? 40 : widget._trHeight,
        width: width * widget.widthRatio,
        decoration: BoxDecoration(
            color: !widget.zebraStripe
                ? null
                : (widget.rowIndex<=2
                    ? widget.color2
                    : widget.color1),
            border: Border.all(
                color: widget._borderColor, width: widget._borderWidth)),
        child: widget.isEditable
            ? TextFormField(
                textAlign: widget.tdAlignment,
                style: widget.tdStyle,
                initialValue: (widget.cellData.toString() == 'null') ? '' : widget.cellData.toString(),
                onFieldSubmitted: widget.onSubmitted,
                onChanged: widget.onChanged,
                textAlignVertical: TextAlignVertical.center,
                maxLines: widget.tdEditableMaxLines,
                decoration: InputDecoration(
                  filled: widget.zebraStripe,
                  fillColor:(widget.rowIndex<=2
                    ? widget.color2
                    : widget.color1),
                  contentPadding: EdgeInsets.only(
                      left: widget.tdPaddingLeft,
                      right: widget.tdPaddingRight,
                      top: widget.tdPaddingTop,
                      bottom: widget.tdPaddingBottom),
                  border: InputBorder.none,
                  focusedBorder: widget.focusedBorder,
                ),
              )
            : Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  left: widget.tdPaddingLeft,
                  right: widget.tdPaddingRight,
                  // top: widget.tdPaddingTop,
                  // bottom: widget.tdPaddingBottom,
                ),
                decoration: BoxDecoration(
                  color: !widget.zebraStripe
                      ? null
                      :    (widget.rowIndex<=2
                    ? widget.color2
                    : widget.color1),
                ),
                child: Text(
                  (widget.cellData.toString() == 'null') ? '' : widget.cellData.toString(),
                  textAlign: widget.tdAlignment,
                  style: widget.tdStyle ??
                      TextStyle(
                          // fontSize: Theme.of(context).textTheme.bodyText1.fontSize), // returns 14?
                          fontSize: 16),
                ),
              ),
      ),
    );
  }
}

