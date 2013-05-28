class Style {
	public static function init() {
		var s = ext.Browser.document.createStyleElement();
		s.type = "text/css";
		ext.Resource.get("data/sprites.png", function(url) {
		s.textContent = '.expando-button.image.collapsed{
	background-image:url("$url");
	background-position:-24px -0px;
	background-repeat:no-repeat
}
.expando-button.image.collapsed:hover {
	background-image:url("$url");
	background-position:-0px -0px;
	background-repeat:no-repeat
}
.expando-button.image.expanded {
	background-image:url("$url");
	background-position:-72px -0px;
	background-repeat:no-repeat
}
.expando-button.image.expanded:hover {
	background-image:url("$url");
	background-position:-48px -0px;
	background-repeat:no-repeat
}
.expando-button.item.collapsed{
	background-image:url("$url");
	background-position:-24px -23px;
	background-repeat:no-repeat
}
.expando-button.item.collapsed:hover {
	background-image:url("$url");
	background-position:-0px -23px;
	background-repeat:no-repeat
}
.expando-button.item.expanded {
	background-image:url("$url");
	background-position:-72px -23px;
	background-repeat:no-repeat
}
.expando-button.item.expanded:hover {
	background-image:url("$url");
	background-position:-48px -23px;
	background-repeat:no-repeat
}
.expando-button {
	float: left;
}
.expando-button.collapsed {
	padding: 0px;
}
p .expando-button {
	display: inline-block;
	float: none;
	margin: 0px;
	padding: 0px;
}
dl.reditn-table  {
	float: left;
	width: 100%;
	padding: 0;
}
.reditn-table dt {
	clear: left;
	float: left;
	width: 16%;
	font-weight: bold;
	text-align: right;
}
.reditn-table dd {
	float: left;
	text-align: left;
}';
		});
		ext.Browser.document.head.appendChild(s);
	}
}