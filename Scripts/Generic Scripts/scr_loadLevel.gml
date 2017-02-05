if (file_exists("Testsave.sav"))
{
  var loadFile = file_text_open_read("Testsave.sav");
  var roomLoaded = file_text_read_real(loadFile); //read the contents of the file into roomLoaded
  file_text_close(loadFile);
  room_goto(roomLoaded); 
}
else
{

}
