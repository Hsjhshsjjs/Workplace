Set WMP = WScript.CreateObject("MediaPlayer.MediaPlayer","WMP_")
WMP.Open "dd.mp3"
WMP.Play
msgbox "Нажмите ок чтобы выключить музыку"