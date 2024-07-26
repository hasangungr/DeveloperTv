extension StringPath on String {
  String get toPng => 'asset/img/$this.png';
  String get viewName => '/$this';

  String? get isNullValidation =>
      length < 3 ? 'Value cannot be shorter than 3 charater' : null;
}
