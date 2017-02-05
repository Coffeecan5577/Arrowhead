if (file_exists("Testsave.sav"))
{
  file_delete("Testsave.sav");
}

var Savefile = file_text_open_write("Testsave.sav"); //write to a new file called Testsave
var SavedRoom = room; //contains room index
file_text_write_real(Savefile, SavedRoom); //Writes the name of the room in the new save file.
file_text_close(Savefile);
