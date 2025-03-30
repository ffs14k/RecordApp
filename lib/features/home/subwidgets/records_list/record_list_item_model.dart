class RecordsListItemModel {
  final String recordId;
  final Duration duration;
  final Duration currentPosition;
  final void Function() onPlayTap;
  final void Function() onDeleteTap;

  RecordsListItemModel(
    this.recordId,
    this.duration,
    this.currentPosition,
    this.onPlayTap,
    this.onDeleteTap,
  );
}
