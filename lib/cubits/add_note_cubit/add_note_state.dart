part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}
class AddNoteLoadign extends AddNoteState {}
class AddNoteSuccess extends AddNoteState {}
class AddNoteFailure extends AddNoteState {
 final String message;

  AddNoteFailure({required this.message});
}//git commit -m "add validat to add bottom sheet,register adapter and generate cutbit"
