import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/P1FIRSTUI/FIRSTuiVAR.dart';
import '../../page/P5GASHMVKNG003/GASHMVKNG003var.dart';

//-------------------------------------------------
String server = GLOserver;
String serverAUTO = GLOserver;

abstract class TRICKER_Event {}

//--------------------------------

class TRICKER_GETINtoGASHMVKNG003 extends TRICKER_Event {}

//-------------------------------- non returnfunction

class TRICKER_GASHMVKNG003geteachITEM extends TRICKER_Event {}

class TRICKER_GASHMVKNG003geteachGRAPH extends TRICKER_Event {}

class TRICKER_GASHMVKNG003confirmdata extends TRICKER_Event {}

class TRICKER_GASHMVKNG003confirmdata1 extends TRICKER_Event {}

class TRICKER_GASHMVKNG003confirmdata2 extends TRICKER_Event {}

class TRICKER_GASHMVKNG003confirmdata3 extends TRICKER_Event {}

class TRICKER_GASHMVKNG003CLEAR extends TRICKER_Event {}

class TRICKER_GASHMVKNG003RESETVALUE extends TRICKER_Event {}

class TRICKER_GASHMVKNG003SETZERO extends TRICKER_Event {}

//-------------------------------- FINISH

class TRICKER_GASHMVKNG003FINISH extends TRICKER_Event {}

//-------------------------------- no request

class TRICKER_FLUSH extends TRICKER_Event {}

class TRICKER_GASHMVKNG003_Bloc extends Bloc<TRICKER_Event, String> {
  TRICKER_GASHMVKNG003_Bloc() : super('') {
    //--------------------------------
    on<TRICKER_GETINtoGASHMVKNG003>((event, emit) {
      return _TRICKER_GETINtoGASHMVKNG003('', emit);
    });

    //-------------------------------- non returnfunction

    on<TRICKER_GASHMVKNG003geteachITEM>((event, emit) {
      return _TRICKER_GASHMVKNG003geteachITEM('', emit);
    });

    on<TRICKER_GASHMVKNG003geteachGRAPH>((event, emit) {
      return _TRICKER_GASHMVKNG003geteachGRAPH('', emit);
    });

    on<TRICKER_GASHMVKNG003confirmdata>((event, emit) {
      return _TRICKER_GASHMVKNG003confirmdata('', emit);
    });

    on<TRICKER_GASHMVKNG003confirmdata1>((event, emit) {
      return _TRICKER_GASHMVKNG003confirmdata1('', emit);
    });

    on<TRICKER_GASHMVKNG003confirmdata2>((event, emit) {
      return _TRICKER_GASHMVKNG003confirmdata2('', emit);
    });
    //
    on<TRICKER_GASHMVKNG003confirmdata3>((event, emit) {
      return _TRICKER_GASHMVKNG003confirmdata3('', emit);
    });

    on<TRICKER_GASHMVKNG003CLEAR>((event, emit) {
      return _TRICKER_GASHMVKNG003CLEAR('', emit);
    });

    on<TRICKER_GASHMVKNG003RESETVALUE>((event, emit) {
      return _TRICKER_GASHMVKNG003RESETVALUE('', emit);
    });

    on<TRICKER_GASHMVKNG003SETZERO>((event, emit) {
      return _TRICKER_GASHMVKNG003SETZERO('', emit);
    });

    //-------------------------------- FINISH

    on<TRICKER_GASHMVKNG003FINISH>((event, emit) {
      return _TRICKER_GASHMVKNG003FINISH('', emit);
    });

    //-------------------------------- no request

    on<TRICKER_FLUSH>((event, emit) {
      return _TRICKER_FLUSH('', emit);
    });
  }

  Future<void> _TRICKER_GETINtoGASHMVKNG003(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoGASHMVKNG003',
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

  Future<void> _TRICKER_GASHMVKNG003geteachITEM(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG003-geteachITEM',
      data: {
        "ITEMs": GASHMVKNG003var.ItemPickSELECT,
      },
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG003geteachGRAPH(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG003-geteachGRAPH',
      data: {
        "GAPname": GASHMVKNG003var.GAPname,
      },
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG003confirmdata(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG003-confirmdata',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG003confirmdata1(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      'http://172.101.33.151:1880/' + 'deptmv03',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG003confirmdata2(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      'http://172.101.33.151:1880/' + 'surfacemv03',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG003confirmdata3(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      'http://172.101.33.151:1880/' + 'surfacemv03',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG003CLEAR(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG003-CLEAR',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG003RESETVALUE(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG003-RESETVALUE',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_GASHMVKNG003SETZERO(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG003-SETZERO',
      data: {},
    );
    emit('');
  }

  //-------------------------------- FINISH
  //TRICKER_GASHMVKNG003FINISH

  Future<void> _TRICKER_GASHMVKNG003FINISH(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GASHMVKNG003-FINISH',
      data: {},
    );
    emit('');
  }

  //-------------------------------- no request

  Future<void> _TRICKER_FLUSH(String toAdd, Emitter<String> emit) async {
    emit('');
  }
}
