part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}
class NoteLoading extends NoteState {}
class NoteSuccess extends NoteState {
  final List<NoteModel> noteList;
  NoteSuccess(this.noteList);
}
class NoteFailure extends NoteState {
  final message;

  NoteFailure({this.message});
}