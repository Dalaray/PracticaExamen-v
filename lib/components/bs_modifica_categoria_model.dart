import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BsModificaCategoriaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombreGategoria widget.
  TextEditingController? txtNombreGategoriaController;
  String? Function(BuildContext, String?)?
      txtNombreGategoriaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreGategoriaController?.dispose();
  }

  /// Additional helper methods are added here.

}
