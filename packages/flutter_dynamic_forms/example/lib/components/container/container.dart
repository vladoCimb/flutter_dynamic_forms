import 'package:dynamic_forms/dynamic_forms.dart';

class Container extends FormElement {
  static const String childrenPropertyName = 'children';

  Property<List<FormElement>> get childrenProperty =>
      properties[childrenPropertyName];
  set childrenProperty(Property<List<FormElement>> value) =>
      registerProperty(childrenPropertyName, value);
  List<FormElement> get children => childrenProperty.value;
  Stream<List<FormElement>> get childrenChanged =>
      childrenProperty.valueChanged;

  @override
  FormElement getInstance() {
    return Container();
  }
}
