import '/components/shimmer_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shimmer_list_model.dart';
export 'shimmer_list_model.dart';

class ShimmerListWidget extends StatefulWidget {
  const ShimmerListWidget({Key? key}) : super(key: key);

  @override
  _ShimmerListWidgetState createState() => _ShimmerListWidgetState();
}

class _ShimmerListWidgetState extends State<ShimmerListWidget> {
  late ShimmerListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShimmerListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        wrapWithModel(
          model: _model.shimmerComponentModel1,
          updateCallback: () => setState(() {}),
          child: ShimmerComponentWidget(),
        ),
        wrapWithModel(
          model: _model.shimmerComponentModel2,
          updateCallback: () => setState(() {}),
          child: ShimmerComponentWidget(),
        ),
        wrapWithModel(
          model: _model.shimmerComponentModel3,
          updateCallback: () => setState(() {}),
          child: ShimmerComponentWidget(),
        ),
        wrapWithModel(
          model: _model.shimmerComponentModel4,
          updateCallback: () => setState(() {}),
          child: ShimmerComponentWidget(),
        ),
        wrapWithModel(
          model: _model.shimmerComponentModel5,
          updateCallback: () => setState(() {}),
          child: ShimmerComponentWidget(),
        ),
      ],
    );
  }
}
