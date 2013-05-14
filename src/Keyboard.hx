import js.html.*;
import js.*;
import data.*;
class Keyboard {
	static var current(default, null):Null<Int> = null;
	public static var highlighted(get, null):Element;
	static function get_highlighted():Element {
		return current == null ? null : Reditn.getLinkContainer(Reditn.links[current]);
	}
	public static function init() {
		Browser.document.onkeydown = function(e) keyDown(untyped e.keyCode);
	}
	static function unhighlight() {
		var h = highlighted;
		if(h != null) {
			h.style.border = "";
		}
	}
	static function highlight(dir:Int) {
		unhighlight();
		if(current != null && untyped Reditn.links[current + dir])
			current += dir;
		else
			dir = 0;
		if(current == null)
			current = 0;
		var h = highlighted;
		h.style.border = "3px solid grey";
		h.scrollIntoView(true);
		h.focus();
	}
	static function show(s:Bool=true) {
		var h = highlighted;
		var tg:AnchorElement = cast h.getElementsByClassName("toggle")[0];
		if(untyped tg.toggle != null)
			untyped tg.toggle(s);
		else {
			var btn:Element = cast h.getElementsByClassName("expando-button")[0];
			if(btn != null && (s ? btn.className.indexOf("expanded") == -1 : btn.className.indexOf("expanded") != -1))
				btn.onclick(null);
		}
		h.scrollIntoView(true);
		h.focus();
	}
	static function keyDown(c:Int) {
		switch(c) {
			case 39: // right
				show(true);
			case 37: // left
				show(false);
			case 38: //up
				highlight(-1);
			case 40: //down
				highlight(1);
		}
	}
}