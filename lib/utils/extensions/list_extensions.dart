extension ListExtensions<T> on List<T> {
  T? safe(int index) {
    if (index < 0 || index >= length || length == 0) {
      return null;
    }
    return this[index];
  }

  T? safeLast() {
    if (length == 0) {
      return null;
    }
    return last;
  }

  int? firstIndexWhere(bool Function(T) isEqual) {
    for (int i = 0; i < length; i++) {
      if (isEqual(this[i])) {
        return i;
      }
    }
    return null;
  }
}
