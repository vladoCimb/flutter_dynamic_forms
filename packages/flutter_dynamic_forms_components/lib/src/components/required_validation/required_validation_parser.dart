import 'package:dynamic_forms/dynamic_forms.dart';
import 'package:expression_language/expression_language.dart';

import '../required_validation/required_validation.dart';

class RequiredValidationParser extends ValidationParser<RequiredValidation> {
  @override
  String get name => "requiredValidation";

  @override
  void fillProperties(RequiredValidation validation, ParserNode parserNode,
      Element parent, parser) {
    validation
      ..id = parserNode.getPlainStringValue("id")
      ..isVisibleProperty = parserNode.getIsVisible()
      ..parentProperty = parserNode.getParentValue(parent)
      ..messageProperty = parserNode.getStringValue("message")
      ..isValidProperty = getIsValid(parent);
  }

  @override
  FormElement getInstance() => RequiredValidation();

  LazyExpressionProperty<bool> getIsValid(FormElement parent) {
    return LazyExpressionProperty(
      () => CustomFunctionExpression<bool>(
        [
          DelegateExpression(
            [parent.id],
            parent.getExpressionProvider(),
          ),
        ],
        (parameters) {
          var text = parameters[0] as String;
          return text.length > 0;
        },
      ),
    );
  }
}
