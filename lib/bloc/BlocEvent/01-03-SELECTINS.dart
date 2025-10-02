import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/P1FIRSTUI/FIRSTuiVAR.dart';

//-------------------------------------------------
String server = GLOserver;

abstract class TRICKERMASTER_Event {}

class TRICKERMASTER_GETINtoAPPKNG extends TRICKERMASTER_Event {}

class TRICKERMASTER_GETINtoGASHMVKNG001 extends TRICKERMASTER_Event {}

class TRICKERMASTER_GETINtoGASHMVKNG002 extends TRICKERMASTER_Event {}

class TRICKERMASTER_GETINtoGASHMVKNG003 extends TRICKERMASTER_Event {}

class TRICKERMASTER_GETINtoCTCXTM001 extends TRICKERMASTER_Event {}

class TRICKERMASTER_GETINtoSPLINEGAUGE extends TRICKERMASTER_Event {}

class TRICKERMASTER_GETINtoDSA01 extends TRICKERMASTER_Event {}

class TRICKERMASTER_GETINtoMAXMIN extends TRICKERMASTER_Event {}

//

class TRICKERMASTER_GETINtoKNGMCS001 extends TRICKERMASTER_Event {}

class TRICKERMASTER_GETINtoPVDSCT001 extends TRICKERMASTER_Event {}

class TRICKERMASTER_FLUSH extends TRICKERMASTER_Event {}

class TRICKERMASTER_Bloc extends Bloc<TRICKERMASTER_Event, String> {
  TRICKERMASTER_Bloc() : super('') {
    on<TRICKERMASTER_GETINtoAPPKNG>((event, emit) {
      return _TRICKERMASTER_GETINtoAPPKNG('', emit);
    });

    on<TRICKERMASTER_GETINtoGASHMVKNG001>((event, emit) {
      return _TRICKERMASTER_GETINtoGASHMVKNG001('', emit);
    });

    on<TRICKERMASTER_GETINtoGASHMVKNG002>((event, emit) {
      return _TRICKERMASTER_GETINtoGASHMVKNG002('', emit);
    });

    on<TRICKERMASTER_GETINtoGASHMVKNG003>((event, emit) {
      return _TRICKERMASTER_GETINtoGASHMVKNG003('', emit);
    });

    on<TRICKERMASTER_GETINtoPVDSCT001>((event, emit) {
      return _TRICKERMASTER_GETINtoPVDSCT001('', emit);
    });

    on<TRICKERMASTER_GETINtoKNGMCS001>((event, emit) {
      return _TRICKERMASTER_GETINtoKNGMCS001('', emit);
    });

    on<TRICKERMASTER_GETINtoCTCXTM001>((event, emit) {
      return _TRICKERMASTER_GETINtoCTCXTM001('', emit);
    });

    on<TRICKERMASTER_GETINtoSPLINEGAUGE>((event, emit) {
      return _TRICKERMASTER_GETINtoSPLINEGAUGE('', emit);
    });

    on<TRICKERMASTER_GETINtoDSA01>((event, emit) {
      return _TRICKERMASTER_GETINtoDSA01('', emit);
    });

    on<TRICKERMASTER_GETINtoMAXMIN>((event, emit) {
      return _TRICKERMASTER_GETINtoMAXMIN('', emit);
    });

    on<TRICKERMASTER_FLUSH>((event, emit) {
      return _TRICKERMASTER_FLUSH('', emit);
    });
  }

  Future<void> _TRICKERMASTER_GETINtoAPPKNG(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoAPPKNG',
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

  Future<void> _TRICKERMASTER_GETINtoGASHMVKNG001(
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

  Future<void> _TRICKERMASTER_GETINtoGASHMVKNG002(
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

  Future<void> _TRICKERMASTER_GETINtoGASHMVKNG003(
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

  Future<void> _TRICKERMASTER_GETINtoKNGMCS001(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoKNGMCS001',
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

  Future<void> _TRICKERMASTER_GETINtoPVDSCT001(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoPVDSCT001',
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

  Future<void> _TRICKERMASTER_GETINtoCTCXTM001(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoCTCXTM001',
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

  //
  Future<void> _TRICKERMASTER_GETINtoSPLINEGAUGE(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoSPLINEGAUGE',
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

  Future<void> _TRICKERMASTER_GETINtoDSA01(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoDSA01',
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

  Future<void> _TRICKERMASTER_GETINtoMAXMIN(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoMAXMIN',
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
      print(databuff);
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

  Future<void> _TRICKERMASTER_GETINtoAPPGASGW(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoAPPGASGW',
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

  Future<void> _TRICKERMASTER_FLUSH(String toAdd, Emitter<String> emit) async {
    emit('');
  }
}
