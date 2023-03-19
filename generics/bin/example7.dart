void main(List<String> args) {
  const tuple = Tuple(left: 1, right: 'one');
  print(tuple.swap());
  const tuple2 = Tuple(left: 20, right: 30);
  print(tuple2.sum);
}

class Tuple<L, R> {
  final L left;
  final R right;

  const Tuple({
    required this.left,
    required this.right,
  });

  @override
  String toString() => 'Tuple, left = $left, right = $right';
}

extension <L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(left: right, right: left);
}

extension <L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
