accessing
rebootCss
	^ '
a:hover { 
  cursor: pointer; 
}
	
.btn {
  display: inline-block;
  padding: 6px 12px;
  margin-bottom: 0;
  font-size: 14px;
  font-weight: normal;
  line-height: 1.428571429;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  cursor: pointer;
  border: 1px solid transparent;
  border-radius: 4px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  -o-user-select: none;
  user-select: none;
}
.btn-circle {
  width: 30px;
  height: 30px;
  text-align: center;
  padding: 6px 0;
  font-size: 12px;
  line-height: 1.428571429;
  border-radius: 15px;
}
.btn-circle.btn-lg {
  width: 50px;
  height: 50px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.33;
  border-radius: 25px;
}
.btn-circle.btn-xl {
  width: 70px;
  height: 70px;
  padding: 10px 16px;
  font-size: 24px;
  line-height: 1.33;
  border-radius: 35px;
}

.btn-outline-rounded {
  padding: 10px 40px;
  margin: 20px 0;
  border: 2px solid transparent;
  border-radius: 25px;
}

.btn.green {
  background-color: #5cb85c;
  border: 1px solid #5cb85c;
  color: #ffffff;
}

.btn.red { 
	background-color: #d9534f;
	border: 1px solid #d9534f;
  	color: #ffffff;
}

.btn.yellow { 
	background-color: #febe29;
	border: 1px solid #febe29;
	color: #ffffff;
}

.btn.blue { 
	background-color: #265a88;
	border: 1px solid #265a88;
	color: #ffffff;
}

.btn.light-blue { 
	background-color: #5bc0de;
	border: 1px solid #5bc0de;
	color: #ffffff;
}

@media( max-width: 585px) {
  .btn-outline-rounded {
    padding: 12px 20px;
  }
}

'