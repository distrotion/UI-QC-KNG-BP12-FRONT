import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/P1FIRSTUI/FIRSTuiVAR.dart';
import '../../page/P4GASHMVKNG002/GASHMVKNG002var.dart';

//-------------------------------------------------
String server = GLOserver;
String serverAUTO = GLOserver;

abstract class TRICKER_Event {}

//--------------------------------

class TRICKER_GETINtoGASHMVKNG002 extends TRICKER_Event {}

//-------------------------------- non returnfunction

class TRICKER_GASHMVKNG002geteachITEM extends TRICKER_Event {}

class TRICKER_GASHMVKNG002geteachGRAPH extends TRICKER_Event {}

class TRICKER_GASHMVKNG002confirmdata extends TRICKER_Event {}

class TRICKER_GASHMVKNG002confirmdata1 extends TRICKER_Event {}

class TRICKER_GASHMVKNG002confirmdata2 extends TRICKER_Event {}

class TRICKER_GASHMVKNG002confirmdata3 extends TRICKER_Event {}

class TRICKER_GASHMVKNG002CLEAR extends TRICKER_Event {}

class TRICKER_GASHMVKNG002RESETVALUE extends TRICKER_Event {}

class TRICKER_GASHMVKNG002SETZERO extends TRICKER_Event {}

//-------------------------------- FINISH

class TRICKER_GASHMVKNG002FINISH extends TRICKER_Event {}

//-------------------------------- no request

class TRICKER_FLUSH extends TRICKER_Event {}

class TRICKER_GASHMVKNG002_Bloc extends Bloc<TRICKER_Event, String> {
  TRICKER_GASHMVKNG002_Bloc() : super('') {
    //--------------------------------
    on<TRICKER_GETINtoGASHMVKNG002>((event, emit) {
      return _TRICKER_GETINtoGASHMVKNG002('', emit);
    });

    //-------------------------------- non returnfunction

    on<TRICKER_GASHMVKNG002geteachITEM>((event, emit) {
      return _TRICKER_GASHMVKNG002geteachITEM('', emit);
    });

    on<TRICKER_GASHMVKNG002geteachGRAPH>((event, emit) {
      return _TRICKER_GASHMVKNG002geteachGRAPH('', emit);
    });

    on<TRICKER_GASHMVKNG002confirmdata>((event, emit) {
      return _TRICKER_GASHMVKNG002confirmdata('', emit);
    });

    on<TRICKER_GASHMVKNG002confirmdata1>((event, emit) {
      return _TRICKER_GASHMVKNG002confirmdata1('', emit);
    });

    on<TRICKER_GASHMVKNG002confirmdata2>((event, emit) {
      return _TRICKER_GASHMVKNG002confirmdata2('', emit);
    });
    //
    on<TRICKER_GASHMVKNG002confirmdata3>((event, emit) {
      return _TRICKER_GASHMVKNG002confirmdata3('', emit);
    });

    on<TRICKER_GASHMVKNG002CLEAR>((event, emit) {
      return _TRICKER_GASHMVKNG002CLEAR('', emit);
    });

    on<TRICKER_GASHMVKNG002RESETVALUE>((event, emit) {
      return _TRICKER_GASHMVKNG002RESETVALUE('', emit);
    });

    on<TRICKER_GASHMVKNG002SETZERO>((event, emit) {
      return _TRICKER_GASHMVKNG002SETZERO('', emit);
    });

    //-------------------------------- FINISH

    on<TRICKER_GASHMVKNG002FINISH>((event, emit) {
      return _TRICKER_GASHMVKNG002FINISH('', emit);
    });

    //-------------------------------- no request

    on<TRICKER_FLUSH>((event, emit) {
      return _TRICKER_FLUSH('', emit);
    });
  }

  Future<void> _TRICKER_GETINtoGASHMVKNG002(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoGASHMVKNG002',
      data: {
        "PO": FIRSTUI.POACTIVE,
        "CP": FIRSTUI.CPACTIVE,
        "USER": USERDATA.NAME,
        "USERID": USERDATA.ID,
      },
    );
    String output = '';
    if (response.statusCode == 200) {
      var databuff = response.data;
      if (databuff.toString() == 'OK') {
        output = 'OK';
      } else {
        output = 'NOK';
      }
    } else {
      //
    }
    emit(output);
  }

  Future<void> _TRICKER_GASHMVKNG002geteachITEM(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG002-geteachITEM',
      data: {
        "ITEMs": GASHMVKNG002var.ItemPickSELECT,
      },
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG002geteachGRAPH(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG002-geteachGRAPH',
      data: {
        "GAPname": GASHMVKNG002var.GAPname,
      },
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG002confirmdata(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG002-confirmdata',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG002confirmdata1(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      'http://172.101.33.151:1880/' + 'deptmv02',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG002confirmdata2(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      'http://172.101.33.151:1880/' + 'surfacemv02',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG002confirmdata3(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      'http://172.101.33.151:1880/' + 'surfacemv02',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG002CLEAR(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG002-CLEAR',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG002RESETVALUE(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG002-RESETVALUE',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG002SETZERO(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG002-SETZERO',
      data: {},
    );
    emit('');
  }

  //-------------------------------- FINISH
  //TRICKER_GASHMVKNG002FINISH

  Future<void> _TRICKER_GASHMVKNG002FINISH(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG002-FINISH',
      data: {},
    );
    emit('');
  }

  //-------------------------------- no request

  Future<void> _TRICKER_FLUSH(String toAdd, Emitter<String> emit) async {
    emit('');
  }
}
