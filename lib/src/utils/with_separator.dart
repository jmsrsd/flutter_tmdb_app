List<T> withSeparator<T>({
  required T separator,
  required List<T> children,
}) {
  return children.length < 2
      ? children
      : children
          .map((e) => [separator, e])
          .reduce((v, e) => [...v, ...e])
          .sublist(1);
}
