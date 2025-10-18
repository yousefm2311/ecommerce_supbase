import 'package:go_router/go_router.dart';

void pushRouter(String location, context, {extra}) {
  GoRouter.of(context).push(location, extra: extra);
}

void pushReplacementRouter(String location, context) {
  GoRouter.of(context).pushReplacement(location);
}

void popRouter(context) {
  GoRouter.of(context).pop();

}
void goRouter(String location, context, {extra}) {
  GoRouter.of(context).go(location, extra: extra);
}
void goNamedRouter(String name, context, {extra}) {
  GoRouter.of(context).goNamed(name, extra: extra);
}