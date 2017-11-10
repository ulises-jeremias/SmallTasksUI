accessing
mainCss
	^ '
	
::-webkit-scrollbar-track {
  -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
  border-radius: 10px;
  background-color: #F5F5F5;
}
::-webkit-scrollbar {
  width: 8px;
  background-color: #F5F5F5;
}
::-webkit-scrollbar-thumb {
  border-radius: 10px;
  -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
  background-color: #E4E0E0;
}
*,
*::before,
*::after {
  padding: 0;
  margin: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
body { 
	background: #eaeaea url("bg.png");
	color: #4d4d4d;
}
'