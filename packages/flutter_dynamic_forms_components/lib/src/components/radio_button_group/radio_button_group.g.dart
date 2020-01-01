// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter_dynamic_forms_components/flutter_dynamic_forms_components.dart';
import 'package:dynamic_forms/dynamic_forms.dart';
import 'package:meta/meta.dart';

class RadioButtonGroup extends SingleSelectGroup<RadioButton> {
  static const String arrangementPropertyName = "arrangement";

  Property<String> get arrangementProperty => properties[arrangementPropertyName];
  set arrangementProperty(Property<String> value) =>
      registerProperty(arrangementPropertyName, value);
  String get arrangement =>
      arrangementProperty.value;
  Stream<String> get arrangementChanged => arrangementProperty.valueChanged;

  @override
  FormElement getInstance() {
    return RadioButtonGroup();
  }
}
