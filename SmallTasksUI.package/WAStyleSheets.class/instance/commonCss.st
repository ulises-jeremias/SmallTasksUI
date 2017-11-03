accessing
commonCss
	^ '

#currentTasks.list-group { 
	max-height: 265px;
	overflow-y: scroll;
	overflow-x: hidden;
}

li button {
	cursor: pointer;
	top: 0;
	bottom: 0;
	width: 45px;
	height: 45px;
	margin: auto 0;
	font-size: 100%;
	border: 0;
	background: none;
	vertical-align: baseline;
	font-family: inherit;
	color: inherit;
	-webkit-appearance: none;
	/*-moz-appearance: none;*/
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none;
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	-ms-transition: all 0.2s;
	-o-transition: all 0.2s;
	transition: all 0.2s;
}

li button:hover {
	text-shadow: 0 0 1px #000,
				 0 0 10px rgba(199, 107, 107, 0.8);
	-webkit-transform: scale(1.3);
	-moz-transform: scale(1.3);
	-ms-transform: scale(1.3);
	-o-transform: scale(1.3);
}

li .toggle {
	text-align: center;
	top: 0;
	bottom: 0;
	margin: auto 0;
	border: none;
	color: #0000FF;
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none;
}

li .destroy {
	font-size: 22px;
	color: #a88a8a;
}

li .destroy:after { 
	content: ''✖'';
}

li label {
	word-break: break-word;
	padding: 10px;
	margin: auto;
	margin-left: 45px;
	display: block;
	line-height: 1.2;
	-webkit-transition: color 0.4s;
	-moz-transition: color 0.4s;
	-ms-transition: color 0.4s;
	-o-transition: color 0.4s;
	transition: color 0.4s;
}

'