import 'package:flutter/cupertino.dart';
import 'package:note_making_app/models/Note.dart';

class NotesOperation extends ChangeNotifier {
  final List<Note> _notes=<Note>[];

  List<Note> get getNotes{
    return _notes;
  }

  NotesOperation(){
    addNewNote('First Node', 'First node description');
  }

  void addNewNote (String title, String description){
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }
}