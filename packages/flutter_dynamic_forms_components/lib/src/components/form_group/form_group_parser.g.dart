// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter_dynamic_forms_components/flutter_dynamic_forms_components.dart';
import 'package:dynamic_forms/dynamic_forms.dart';

class FormGroupParser<TFormGroup extends FormGroup>
    extends ContainerParser<TFormGroup> {
  @override
  String get name => "formGroup";

  @override
  FormElement getInstance() => FormGroup();

  @override
  void fillProperties(
    TFormGroup formGroup, 
    ParserNode parserNode, 
    Element parent,
    ElementParserFunction parser,
  ) {
    super.fillProperties(formGroup, parserNode, parent, parser);
    formGroup
      ..nameProperty = parserNode.getStringValue(
        "name",
        isImmutable: true,
      );
  }
}
