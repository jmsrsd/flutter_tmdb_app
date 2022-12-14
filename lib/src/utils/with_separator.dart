List<T> withSeparator<T>({
  required T separator,
  required List<T> children,
}) {
  return children
      .map((e) => [separator, e])
      .reduce((v, e) => [...v, ...e])
      .sublist(1);
}
