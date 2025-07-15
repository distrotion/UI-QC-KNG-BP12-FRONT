import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/P1FIRSTUI/FIRSTuiVAR.dart';
import '../../page/P3GASHMVKNG001/GASHMVKNG001var.dart';

//-------------------------------------------------
String server = GLOserver;
String serverAUTO = GLOserver;

abstract class TRICKER_Event {}

//--------------------------------

class TRICKER_GETINtoGASHMVKNG001 extends TRICKER_Event {}

//-------------------------------- non returnfunction

class TRICKER_GASHMVKNG001geteachITEM extends TRICKER_Event {}

class TRICKER_GASHMVKNG001geteachGRAPH extends TRICKER_Event {}

class TRICKER_GASHMVKNG001confirmdata extends TRICKER_Event {}

class TRICKER_GASHMVKNG001confirmdata1 extends TRICKER_Event {}

class TRICKER_GASHMVKNG001confirmdata2 extends TRICKER_Event {}

class TRICKER_GASHMVKNG001confirmdata3 extends TRICKER_Event {}

class TRICKER_GASHMVKNG001CLEAR extends TRICKER_Event {}

class TRICKER_GASHMVKNG001RESETVALUE extends TRICKER_Event {}

class TRICKER_GASHMVKNG001SETZERO extends TRICKER_Event {}

//-------------------------------- FINISH

class TRICKER_GASHMVKNG001FINISH extends TRICKER_Event {}

//-------------------------------- no request

class TRICKER_FLUSH extends TRICKER_Event {}

class TRICKER_GASHMVKNG001_Bloc extends Bloc<TRICKER_Event, String> {
  TRICKER_GASHMVKNG001_Bloc() : super('') {
    //--------------------------------
    on<TRICKER_GETINtoGASHMVKNG001>((event, emit) {
      return _TRICKER_GETINtoGASHMVKNG001('', emit);
    });

    //-------------------------------- non returnfunction

    on<TRICKER_GASHMVKNG001geteachITEM>((event, emit) {
      return _TRICKER_GASHMVKNG001geteachITEM('', emit);
    });

    on<TRICKER_GASHMVKNG001geteachGRAPH>((event, emit) {
      return _TRICKER_GASHMVKNG001geteachGRAPH('', emit);
    });

    on<TRICKER_GASHMVKNG001confirmdata>((event, emit) {
      return _TRICKER_GASHMVKNG001confirmdata('', emit);
    });

    on<TRICKER_GASHMVKNG001confirmdata1>((event, emit) {
      return _TRICKER_GASHMVKNG001confirmdata1('', emit);
    });

    on<TRICKER_GASHMVKNG001confirmdata2>((event, emit) {
      return _TRICKER_GASHMVKNG001confirmdata2('', emit);
    });

    on<TRICKER_GASHMVKNG001confirmdata3>((event, emit) {
      return _TRICKER_GASHMVKNG001confirmdata3('', emit);
    });

    on<TRICKER_GASHMVKNG001CLEAR>((event, emit) {
      return _TRICKER_GASHMVKNG001CLEAR('', emit);
    });

    on<TRICKER_GASHMVKNG001RESETVALUE>((event, emit) {
      return _TRICKER_GASHMVKNG001RESETVALUE('', emit);
    });

    on<TRICKER_GASHMVKNG001SETZERO>((event, emit) {
      return _TRICKER_GASHMVKNG001SETZERO('', emit);
    });

    //-------------------------------- FINISH

    on<TRICKER_GASHMVKNG001FINISH>((event, emit) {
      return _TRICKER_GASHMVKNG001FINISH('', emit);
    });

    //-------------------------------- no request

    on<TRICKER_FLUSH>((event, emit) {
      return _TRICKER_FLUSH('', emit);
    });
  }

  Future<void> _TRICKER_GETINtoGASHMVKNG001(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoGASHMVKNG001',
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

  Future<void> _TRICKER_GASHMVKNG001geteachITEM(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG001-geteachITEM',
      data: {
        "ITEMs": GASHMVKNG001var.ItemPickSELECT,
      },
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG001geteachGRAPH(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG001-geteachGRAPH',
      data: {
        "GAPname": GASHMVKNG001var.GAPname,
      },
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG001confirmdata(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG001-confirmdata',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG001confirmdata1(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      'http://172.101.33.151:1880/' + 'deptmv01',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG001confirmdata2(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      'http://172.101.33.151:1880/' + 'surfacemv01',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG001confirmdata3(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      'http://172.101.33.151:1880/' + 'surfacemv01',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG001CLEAR(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG001-CLEAR',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG001RESETVALUE(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG001-RESETVALUE',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG001SETZERO(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG001-SETZERO',
      data: {},
    );
    emit('');
  }

  //-------------------------------- FINISH
  //TRICKER_GASHMVKNG001FINISH

  Future<void> _TRICKER_GASHMVKNG001FINISH(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG001-FINISH',
      data: {},
    );
    emit('');
  }

  //-------------------------------- no request

  Future<void> _TRICKER_FLUSH(String toAdd, Emitter<String> emit) async {
    emit('');
  }
}
