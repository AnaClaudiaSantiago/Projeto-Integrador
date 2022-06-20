import 'dart:ffi';

import 'package:flutter/material.dart';



import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {

  const MyStatefulWidget({Key? key, this.restorationId}) : super(key: key);

 
  final String? restorationId;
    
  
   
  @override

  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
  

}

/// RestorationProperty objects can be used because of RestorationMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>


    with RestorationMixin {
      
  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.
  DateTime _data = DateTime.now();
  


  static get child => null;
  
 TimeOfDay timePicked= TimeOfDay.now();
  final timeController = TextEditingController();

  
   
  
Future<DateTime?> showDatePicker({
  required BuildContext context,
  required DateTime  initialDate,
  required DateTime firstDate,
  required DateTime lastDate,
  DateTime? currentDate,
  DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar,
  SelectableDayPredicate? selectableDayPredicate,
  String? helpText,
  String? cancelText,
  String? confirmText,
  Locale? locale,
  bool useRootNavigator = true,
  RouteSettings? routeSettings,
  TextDirection? textDirection,
  TransitionBuilder? builder,
  DatePickerMode initialDatePickerMode = DatePickerMode.day,
  String? errorFormatText,
  String? errorInvalidText,
  String? fieldHintText,
  String? fieldLabelText,
  TextInputType? keyboardType,
  Offset? anchorPoint,
}) async {
  assert(context != null);
  assert(initialDate != null);
  assert(firstDate != null);
  assert(lastDate != null);
  initialDate = DateUtils.dateOnly(initialDate);
  firstDate = DateUtils.dateOnly(firstDate);
  lastDate = DateUtils.dateOnly(lastDate);
  assert(
    !lastDate.isBefore(firstDate),
    'lastDate $lastDate must be on or after firstDate $firstDate.',
  );
  assert(
    !initialDate.isBefore(firstDate),
    'initialDate $initialDate must be on or after firstDate $firstDate.',
  );
  assert(
    !initialDate.isAfter(lastDate),
    'initialDate $initialDate must be on or before lastDate $lastDate.',
  );
  assert(
    selectableDayPredicate == null || selectableDayPredicate(initialDate),
    'Provided initialDate $initialDate must satisfy provided selectableDayPredicate.',
  );
  assert(initialEntryMode != null);
  assert(useRootNavigator != null);
  assert(initialDatePickerMode != null);
  assert(debugCheckHasMaterialLocalizations(context));

  Widget dialog = DatePickerDialog(
    initialDate: initialDate,
    firstDate: firstDate,
    lastDate: lastDate,
    currentDate: currentDate,
    initialEntryMode: initialEntryMode,
    selectableDayPredicate: selectableDayPredicate,
    helpText: helpText,
    cancelText: cancelText,
    confirmText: confirmText,
    initialCalendarMode: initialDatePickerMode,
    errorFormatText: errorFormatText,
    errorInvalidText: errorInvalidText,
    fieldHintText: fieldHintText,
    fieldLabelText: fieldLabelText,
   // keyboardType: keyboardType,
  );

  if (textDirection != null) {
    dialog = Directionality(
      textDirection: textDirection,
      child: dialog,
    );
  }

  if (locale != null) {
    dialog = Localizations.override(
      context: context,
      locale: locale,
      child: dialog,
    );
  }

  return showDialog<DateTime>(
    context: context,
    useRootNavigator: useRootNavigator,
    routeSettings: routeSettings,
    builder: (BuildContext context) {
      return builder == null ? dialog : builder(context, dialog);
    },
    //anchorPoint: anchorPoint,
  );
}



  Future<TimeOfDay?> showTimePicker({
  required BuildContext context,
  required TimeOfDay initialTime,
  TransitionBuilder? builder,
  bool useRootNavigator = true,
  TimePickerEntryMode initialEntryMode = TimePickerEntryMode.dial,
  String? cancelText,
  String? confirmText,
  String? helpText,
  String? errorInvalidText,
  String? hourLabelText,
  String? minuteLabelText,
  RouteSettings? routeSettings,
  EntryModeChangeCallback? onEntryModeChanged,
  Offset? anchorPoint,
}) async {
  assert(context != null);
  assert(initialTime != null);
  assert(useRootNavigator != null);
  assert(initialEntryMode != null);
  assert(debugCheckHasMaterialLocalizations(context));

  final Widget dialog = TimePickerDialog(
    initialTime: initialTime,
    initialEntryMode: initialEntryMode,
    cancelText: cancelText,
    confirmText: confirmText,
    helpText: helpText,
    errorInvalidText: errorInvalidText,
    hourLabelText: hourLabelText,
    minuteLabelText: minuteLabelText,
    onEntryModeChanged: onEntryModeChanged,
  );
  return showDialog<TimeOfDay>(
    context: context,
    useRootNavigator: useRootNavigator,
    builder: (BuildContext context) {
      return builder == null ? dialog : builder(context, dialog);
    },
    routeSettings: routeSettings,
    //anchorPoint: anchorPoint,
  );
}

  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
         
         
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(1947),
          lastDate: DateTime(2030),
          
        );
      
      },
  
    );
    
    
  }
 void openClock() async {
    TimeOfDay time = TimeOfDay.now();
    FocusScope.of(context).requestFocus(new FocusNode());
    timePicked = (await showTimePicker(
      context: context, 
      initialTime: time,
    ))!;
    if (timePicked != null && timePicked != time) {
      timeController.text = timePicked.format(context);
      time = timePicked;
    }
  } 
  

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }
  

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        print(_data.toString(),
       

        );
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
              
             
        ),
        
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
   
    var controle;
    var controller;
    var _teme;
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Agendar Atendimento'),
        
        backgroundColor:Color.fromARGB(255, 255, 236, 162),
               
        centerTitle: true,
         

        
      ),


      body: Container(

        color:Color.fromARGB(255, 255, 236, 162), 
        child: Center(
          
          child: ListView(children:<Widget>[
     
        
   Padding(
              padding: const EdgeInsets.all(16.0),
           child: TextField(
                      showCursor: true,
                      readOnly: true,
             decoration: InputDecoration(
             hintText: (_data.toString()),      
                  //     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 2.0)),
                        labelText: 'Data Prevista',
                        icon: Icon(Icons.today),

                      ),
                      onTap:
                       (){
                        setState(() {
                          _restorableDatePickerRouteFuture.present(context );
                        }
                        );
                      },
                      
                    
           ),
         ),
     
         Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  
                  showCursor: true,
                  readOnly: true,
                  decoration: InputDecoration(
                    
                    labelText: 'Hora Prevista',
                    icon: Icon(Icons.access_time),
                  ),
                  onTap: openClock,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Campo requerido.';
                    }
                    return null;
                  },
                ),
              ),
               Container(
            height: 40,
          ),
              Container(
                      alignment: Alignment.center,
                      //margin: (EdgeInsets.only(top: 10, left: 20, right: 0)),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: TextButton(
                          child: Center(
                            child: Text(
                              'Agendar',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('mensgem-final');
                          }),
                    ),
          ],
        ),
        
        ),
      ),
    );
  }
}
