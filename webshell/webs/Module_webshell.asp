﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Pragma" content="no-cache"/>
<meta http-equiv="Expires" content="-1"/>
<link rel="shortcut icon" href="images/favicon.png"/>
<link rel="icon" href="images/favicon.png"/>
<title>WebShell</title>
<link rel="stylesheet" type="text/css" href="index_style.css"/>
<link rel="stylesheet" type="text/css" href="form_style.css"/>
<script language="JavaScript" type="text/javascript" src="/state.js"></script>
<script language="JavaScript" type="text/javascript" src="/help.js"></script>
<script language="JavaScript" type="text/javascript" src="/general.js"></script>
<script language="JavaScript" type="text/javascript" src="/popup.js"></script>
<script language="JavaScript" type="text/javascript" src="/client_function.js"></script>
<script language="JavaScript" type="text/javascript" src="/validator.js"></script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/switcherplugin/jquery.iphone-switch.js"></script>

<script language="JavaScript" type="text/javascript">
var Base64={toBase64Table:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".split(""),base64Pad:"=",encode:function(e){var a="",h=Base64.toBase64Table,k=Base64.base64Pad,f=e.length,l;for(l=0;l<f-2;l+=3)a+=h[e[l]>>2],a+=h[((e[l]&3)<<4)+(e[l+1]>>4)],a+=h[((e[l+1]&15)<<2)+(e[l+2]>>6)],a+=h[e[l+2]&63];f%3&&(l=f-f%3,a+=h[e[l]>>2],2===f%3?(a+=h[((e[l]&3)<<4)+(e[l+1]>>4)],a+=h[(e[l+1]&15)<<2],a+=k):(a+=h[(e[l]&3)<<4],a+=k+k));return a},toBinaryTable:[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,-1,-1,-1,63,52,53,54,55,56,57,58,59,60,61,-1,-1,-1,0,-1,-1,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,-1,-1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,-1,-1,-1,-1,-1],decode:function(e,a){a="undefined"!==typeof a?a:0;var h=Base64.toBinaryTable,k=Base64.base64Pad,f,l,u,q,m,t=0,r=0;f=e.indexOf("=")-a;0>f&&(f=e.length-a);f=Array(3*
(f>>2)+Math.floor(f%4/1.5));l=0;for(u=a;u<e.length;u++)q=h[e.charCodeAt(u)&127],m=e.charAt(u)===k,-1===q?console.error("Illegal character code "+e.charCodeAt(u)+" at position "+u):(r=r<<6|q,t+=6,8<=t&&(t-=8,m||(f[l++]=r>>t&255),r&=(1<<t)-1));if(t)throw{name:"Base64-Error",message:"Corrupted base64 string"};return f}};function getKeysym(e){var a;e=e?e:window.event;switch(e.keyCode){case 8:a=65288;break;case 9:a=65289;break;case 13:a=65293;break;case 27:a=65307;break;case 45:a=65379;break;case 46:a=65535;break;case 36:a=65360;break;case 35:a=65367;break;case 33:a=65365;break;case 34:a=65366;break;case 37:a=65361;break;case 38:a=65362;break;case 39:a=65363;break;case 40:a=65364;break;case 112:a=65470;break;case 113:a=65471;break;case 114:a=65472;break;case 115:a=65473;break;case 116:a=65474;break;case 117:a=65475;
break;case 118:a=65476;break;case 119:a=65477;break;case 120:a=65478;break;case 121:a=65479;break;case 122:a=65480;break;case 123:a=65481;break;case 16:a=65505;break;case 17:a=65507;break;case 18:a=65513;break;default:a=e.keyCode}switch(a){case 186:a=59;break;case 187:a=61;break;case 188:a=44;break;case 109:Util.Engine.gecko&&(a=45);break;case 189:a=45;break;case 190:a=46;break;case 191:a=47;break;case 192:a=96;break;case 219:a=91;break;case 220:a=92;break;case 221:a=93;break;case 222:a=39}if(e.shiftKey)switch(a){case 48:a=
41;break;case 49:a=33;break;case 50:a=64;break;case 51:a=35;break;case 52:a=36;break;case 53:a=37;break;case 54:a=94;break;case 55:a=38;break;case 56:a=42;break;case 57:a=40;break;case 59:a=58;break;case 61:a=43;break;case 44:a=60;break;case 45:a=95;break;case 46:a=62;break;case 47:a=63;break;case 96:a=126;break;case 91:a=123;break;case 92:a=124;break;case 93:a=125;break;case 39:a=34}else 65<=a&&90>=a&&(a+=32);return a};(function(){function e(){this._events=this._events||{}}function a(b,n,c){var d=this;if(!(this instanceof a))return new a(b,n,c);e.call(this);"number"===typeof b&&(b={cols:b,rows:n,handler:c});b=b||{};t(r(a.defaults),function(c){null==b[c]&&(b[c]=a.options[c],a[c]!==a.defaults[c]&&(b[c]=a[c]));d[c]=b[c]});8===b.colors.length?b.colors=b.colors.concat(a._colors.slice(8)):16===b.colors.length?b.colors=b.colors.concat(a._colors.slice(16)):10===b.colors.length?b.colors=b.colors.slice(0,-2).concat(a._colors.slice(8,
-2),b.colors.slice(-2)):18===b.colors.length&&(b.colors=b.colors.slice(0,-2).concat(a._colors.slice(16,-2),b.colors.slice(-2)));this.colors=b.colors;this.options=b;this.parent=b.body||b.parent||(w?w.getElementsByTagName("body")[0]:null);this.cols=b.cols||b.geometry[0];this.rows=b.rows||b.geometry[1];if(b.handler)this.on("data",b.handler);this.cursorState=this.y=this.x=this.ydisp=this.ybase=0;this.cursorHidden=!1;this.convertEol;this.state=0;this.queue="";this.scrollTop=0;this.scrollBottom=this.rows-
1;this.wraparoundMode=this.insertMode=this.originMode=this.applicationCursor=this.applicationKeypad=!1;this.normal=null;this.searchMode=this.visualMode=this.selectMode=this.prefixMode=!1;this.searchDown;this.entry="";this.entryPrefix="Search: ";this._real;this._selected;this._textarea;this.gcharset=this.charset=null;this.glevel=0;this.charsets=[null];this.decLocator;this.x10Mouse;this.vt200Mouse;this.vt300Mouse;this.normalMouse;this.mouseEvents;this.sendFocus;this.utfMouse;this.sgrMouse;this.urxvtMouse;
this.element;this.children;this.refreshStart;this.refreshEnd;this.savedX;this.savedY;this.savedCols;this.writable=this.readable=!0;this.curAttr=this.defAttr=131840;this.params=[];this.currentParam=0;this.postfix=this.prefix="";this.lines=[];for(n=this.rows;n--;)this.lines.push(this.blankLine());this.tabs;this.setupStops()}function h(b,a,c,d){b.addEventListener(a,c,d||!1)}function k(b,a,c,d){b.removeEventListener(a,c,d||!1)}function f(b){b.preventDefault&&b.preventDefault();b.returnValue=!1;b.stopPropagation&&
b.stopPropagation();b.cancelBubble=!0;return!1}function l(b,a){function c(){this.constructor=b}c.prototype=a.prototype;b.prototype=new c}function u(b){var a=b.getElementsByTagName("body")[0];b=b.createElement("span");b.innerHTML="hello world";a.appendChild(b);var c=b.scrollWidth;b.style.fontWeight="bold";var d=b.scrollWidth;a.removeChild(b);return c!==d}function q(b){return"\uff00">=b?!1:"\uff01"<=b&&"\uffbe">=b||"\uffc2"<=b&&"\uffc7">=b||"\uffca"<=b&&"\uffcf">=b||"\uffd2"<=b&&"\uffd7">=b||"\uffda"<=
b&&"\uffdc">=b||"\uffe0"<=b&&"\uffe6">=b||"\uffe8"<=b&&"\uffee">=b}function m(b,n,c){var d=b<<16|n<<8|c;if(null!=m._cache[d])return m._cache[d];for(var e=Infinity,h=-1,g=0,f,k,y;g<a.vcolors.length;g++){f=a.vcolors[g];k=f[0];y=f[1];f=f[2];k=m.distance(b,n,c,k,y,f);if(0===k){h=g;break}k<e&&(e=k,h=g)}return m._cache[d]=h}function t(b,a,c){if(b.forEach)return b.forEach(a,c);for(var d=0;d<b.length;d++)a.call(c,b[d],d,b)}function r(b){if(Object.keys)return Object.keys(b);var a,c=[];for(a in b)Object.prototype.hasOwnProperty.call(b,
a)&&c.push(a);return c}var w=this.document;e.prototype.addListener=function(b,a){this._events[b]=this._events[b]||[];this._events[b].push(a)};e.prototype.on=e.prototype.addListener;e.prototype.removeListener=function(b,a){if(this._events[b])for(var c=this._events[b],d=c.length;d--;)if(c[d]===a||c[d].listener===a){c.splice(d,1);break}};e.prototype.off=e.prototype.removeListener;e.prototype.removeAllListeners=function(b){this._events[b]&&delete this._events[b]};e.prototype.once=function(b,a){function c(){var d=
Array.prototype.slice.call(arguments);this.removeListener(b,c);return a.apply(this,d)}c.listener=a;return this.on(b,c)};e.prototype.emit=function(b){if(this._events[b])for(var a=Array.prototype.slice.call(arguments,1),c=this._events[b],d=c.length,e=0;e<d;e++)c[e].apply(this,a)};e.prototype.listeners=function(b){return this._events[b]=this._events[b]||[]};l(a,e);a.prototype.eraseAttr=function(){return this.defAttr&-512|this.curAttr&511};a.tangoColors="#2e3436 #cc0000 #4e9a06 #c4a000 #3465a4 #75507b #06989a #d3d7cf #555753 #ef2929 #8ae234 #fce94f #729fcf #ad7fa8 #34e2e2 #eeeeec".split(" ");
a.xtermColors="#475A5F #cd0000 #00cd00 #cdcd00 #0000ee #cd00cd #00cdcd #e5e5e5 #7f7f7f #ff0000 #00ff00 #ffff00 #5c5cff #ff00ff #00ffff #ffffff".split(" ");a.colors=function(){function b(b,a,d){c.push("#"+n(b)+n(a)+n(d))}function n(b){b=b.toString(16);return 2>b.length?"0"+b:b}var c=a.tangoColors.slice(),d=[0,95,135,175,215,255],e;for(e=0;216>e;e++)b(d[e/36%6|0],d[e/6%6|0],d[e%6]);for(e=0;24>e;e++)d=8+10*e,b(d,d,d);return c}();a.colors[256]="#475A5F";a.colors[257]="#f0f0f0";a._colors=a.colors.slice();
a.vcolors=function(){for(var b=[],n=a.colors,c=0,d;256>c;c++)d=parseInt(n[c].substring(1),16),b.push([d>>16&255,d>>8&255,d&255]);return b}();a.defaults={colors:a.colors,convertEol:!1,termName:"xterm",geometry:[80,24],cursorBlink:!0,visualBell:!1,popOnBell:!1,scrollback:1E3,screenKeys:!1,debug:!1,useStyle:!1};a.options={};t(r(a.defaults),function(b){a[b]=a.defaults[b];a.options[b]=a.defaults[b]});a.focus=null;a.prototype.focus=function(){a.focus!==this&&(a.focus&&a.focus.blur(),this.sendFocus&&this.send("\u001b[I"),
this.showCursor(),a.focus=this)};a.prototype.blur=function(){a.focus===this&&(this.cursorState=0,this.refresh(this.y,this.y),this.sendFocus&&this.send("\u001b[O"),a.focus=null)};a.prototype.initGlobal=function(){var b=this.document;a._boundDocs=a._boundDocs||[];var n;a:{n=a._boundDocs;for(var c=n.length;c--;)if(n[c]===b){n=c;break a}n=-1}~n||(a._boundDocs.push(b),a.bindPaste(b),a.bindKeys(b),a.bindCopy(b),this.isMobile&&this.fixMobile(b),this.useStyle&&a.insertStyle(b,"#475A5F",this.colors[257]))};
a.bindPaste=function(b){h(b.defaultView,"paste",function(b){var c=a.focus;if(c)return b.clipboardData?c.send(b.clipboardData.getData("text/plain")):c.context.clipboardData&&c.send(c.context.clipboardData.getData("Text")),c.element.contentEditable="inherit",f(b)})};a.bindKeys=function(b){h(b,"keydown",function(b){if(a.focus){var c=b.target||b.srcElement;if(c&&(c===a.focus.element||c===a.focus.context||c===a.focus.document||c===a.focus.body||c===a._textarea||c===a.focus.parent))return a.focus.keyDown(b)}},
!0);h(b,"keypress",function(b){if(a.focus){var c=b.target||b.srcElement;if(c&&(c===a.focus.element||c===a.focus.context||c===a.focus.document||c===a.focus.body||c===a._textarea||c===a.focus.parent))return a.focus.keyPress(b)}},!0);h(b,"mousedown",function(b){if(a.focus&&(b=b.target||b.srcElement)){do if(b===a.focus.element)return;while(b=b.parentNode);a.focus.blur()}})};a.bindCopy=function(b){h(b.defaultView,"copy",function(b){var c=a.focus;if(c&&c._selected){b=c.getCopyTextarea();var d=c.grabText(c._selected.x1,
c._selected.x2,c._selected.y1,c._selected.y2);c.emit("copy",d);b.focus();b.textContent=d;b.value=d;b.setSelectionRange(0,d.length);v(function(){c.element.focus();c.focus()},1)}})};a.prototype.fixMobile=function(b){var n=this,c=b.createElement("textarea");c.style.position="absolute";c.style.left="-32000px";c.style.top="-32000px";c.style.width="0px";c.style.height="0px";c.style.opacity="0";c.style.backgroundColor="transparent";c.style.borderStyle="none";c.style.outlineStyle="none";c.autocapitalize=
"none";c.autocorrect="off";b.getElementsByTagName("body")[0].appendChild(c);a._textarea=c;v(function(){c.focus()},1E3);this.isAndroid&&h(c,"change",function(){var b=c.textContent||c.value;c.value="";c.textContent="";n.send(b+"\r")})};a.insertStyle=function(b,a,c){var d=b.getElementById("term-style");if(!d){var e=b.getElementsByTagName("head")[0];e&&(d=b.createElement("style"),d.id="term-style",d.innerHTML=".terminal {\n  float: left;\n  border: "+a+' solid 5px;\n  font-family: "DejaVu Sans Mono", "Liberation Mono", monospace;\n  font-size: 11px;\n  color: '+
c+";\n  background: "+a+";\n}\n\n.terminal-cursor {\n  color: "+a+";\n  background: "+c+";\n}\n",e.insertBefore(d,e.firstChild))}};a.prototype.open=function(b){var n=this,c=0;this.parent=b||this.parent;if(!this.parent)throw Error("Terminal requires a parent element.");this.context=this.parent.ownerDocument.defaultView;this.document=this.parent.ownerDocument;this.body=this.document.getElementsByTagName("body")[0];this.context.navigator&&this.context.navigator.userAgent&&(this.isMac=!!~this.context.navigator.userAgent.indexOf("Mac"),
this.isIpad=!!~this.context.navigator.userAgent.indexOf("iPad"),this.isIphone=!!~this.context.navigator.userAgent.indexOf("iPhone"),this.isAndroid=!!~this.context.navigator.userAgent.indexOf("Android"),this.isMobile=this.isIpad||this.isIphone||this.isAndroid,this.isMSIE=!!~this.context.navigator.userAgent.indexOf("MSIE"));this.element=this.document.createElement("div");this.element.className="terminal";this.element.style.outline="none";this.element.setAttribute("tabindex",0);this.element.setAttribute("spellcheck",
"false");for(this.children=[];c<this.rows;c++)b=this.document.createElement("div"),this.element.appendChild(b),this.children.push(b);this.parent.appendChild(this.element);this.refresh(0,this.rows-1);"useEvents"in this.options&&!this.options.useEvents||this.initGlobal();"useFocus"in this.options&&!this.options.useFocus||(this.focus(),this.startBlink(),h(this.element,"focus",function(){n.focus();n.isMobile&&a._textarea.focus()}),h(this.element,"mousedown",function(){n.focus()}),h(this.element,"mousedown",
function(b){b=null!=b.button?+b.button:null!=b.which?b.which-1:null;n.isMSIE&&(b=1===b?0:4===b?1:b);2===b&&(n.element.contentEditable="true",v(function(){n.element.contentEditable="inherit"},1))},!0));"useMouse"in this.options&&!this.options.useMouse||this.bindMouse();"useFocus"in this.options&&!this.options.useFocus||v(function(){n.element.focus()},100);null==a.brokenBold&&(a.brokenBold=u(this.document))};a.prototype.bindMouse=function(){function b(b){var a,c,n,f;switch(b.type){case "mousedown":a=
null!=b.button?+b.button:null!=b.which?b.which-1:null;g.isMSIE&&(a=1===a?0:4===a?1:a);break;case "mouseup":a=3;break;case "DOMMouseScroll":a=0>b.detail?64:65;break;case "mousewheel":a=0<b.wheelDeltaY?64:65}n=b.shiftKey?4:0;f=b.metaKey?8:0;c=b.ctrlKey?16:0;n=n|f|c;g.vt200Mouse?n&=c:g.normalMouse||(n=0);a=32+(n<<2)+a;if(c=e(b))switch(d(a,c),b.type){case "mousedown":x=a;break;case "mouseup":x=32}}function a(b){var c=x;(b=e(b))&&d(c+32,b)}function c(b,a){if(g.utfMouse){if(2047===a)return b.push(0);127>
a?b.push(a):(2047<a&&(a=2047),b.push(192|a>>6),b.push(128|a&63))}else{if(255===a)return b.push(0);127<a&&(a=127);b.push(a)}}function d(b,a){if(g.vt300Mouse){b&=3;a.x-=32;a.y-=32;var d="\u001b[24";if(0===b)d+="1";else if(1===b)d+="3";else if(2===b)d+="5";else{if(3===b)return;d+="0"}d+="~["+a.x+","+a.y+"]\r";g.send(d)}else g.decLocator?(b&=3,a.x-=32,a.y-=32,0===b?b=2:1===b?b=4:2===b?b=6:3===b&&(b=3),g.send("\u001b["+b+";"+(3===b?4:0)+";"+a.y+";"+a.x+";"+(a.page||0)+"&w")):g.urxvtMouse?(a.x-=32,a.y-=
32,a.x++,a.y++,g.send("\u001b["+b+";"+a.x+";"+a.y+"M")):g.sgrMouse?(a.x-=32,a.y-=32,g.send("\u001b[<"+(3===(b&3)?b&-4:b)+";"+a.x+";"+a.y+(3===(b&3)?"m":"M"))):(d=[],c(d,b),c(d,a.x),c(d,a.y),g.send("\u001b[M"+p.fromCharCode.apply(p,d)))}function e(b){var a,c,d,n;if(null!=b.pageX){a=b.pageX;c=b.pageY;for(d=g.element;d&&d!==g.document.documentElement;)a-=d.offsetLeft,c-=d.offsetTop,d="offsetParent"in d?d.offsetParent:d.parentNode;d=g.element.clientWidth;n=g.element.clientHeight;a=Math.round(a/d*g.cols);
c=Math.round(c/n*g.rows);0>a&&(a=0);a>g.cols&&(a=g.cols);0>c&&(c=0);c>g.rows&&(c=g.rows);return{x:a+32,y:c+32,type:b.type===m?"mousewheel":b.type}}}var l=this.element,g=this,x=32,m="onmousewheel"in this.context?"mousewheel":"DOMMouseScroll";h(l,"mousedown",function(c){if(g.mouseEvents){b(c);g.focus();if(g.vt200Mouse)return b({__proto__:c,type:"mouseup"}),f(c);g.normalMouse&&h(g.document,"mousemove",a);g.x10Mouse||h(g.document,"mouseup",function A(c){b(c);g.normalMouse&&k(g.document,"mousemove",a);
k(g.document,"mouseup",A);return f(c)});return f(c)}});h(l,m,function(a){if(g.mouseEvents&&!(g.x10Mouse||g.vt300Mouse||g.decLocator))return b(a),f(a)});h(l,m,function(b){if(!g.mouseEvents&&!g.applicationKeypad)return"DOMMouseScroll"===b.type?g.scrollDisp(0>b.detail?-5:5):g.scrollDisp(0<b.wheelDeltaY?-5:5),f(b)})};a.prototype.destroy=function(){this.writable=this.readable=!1;this._events={};this.handler=function(){};this.write=function(){};this.element.parentNode&&this.element.parentNode.removeChild(this.element)};
a.prototype.refresh=function(b,n){var c,d,e,f,g,h,k,l,p,m,r,v;n-b>=this.rows/2&&(v=this.element.parentNode)&&v.removeChild(this.element);k=this.cols;d=b;n>=this.lines.length&&(this.log("`end` is too large. Most likely a bad CSR."),n=this.lines.length-1);for(;d<=n;d++){c=d+this.ydisp;f=this.lines[c];g="";c=d!==this.y||!this.cursorState||this.ydisp!==this.ybase&&!this.selectMode||this.cursorHidden?-1:this.x;p=this.defAttr;for(e=0;e<k;e++){l=f[e][0];h=f[e][1];e===c&&(l=-1);l!==p&&(p!==this.defAttr&&
(g+="</span>"),l!==this.defAttr&&(-1===l?g+='<span class="reverse-video terminal-cursor">':(g+='<span style="',p=l&511,m=l>>9&511,r=l>>18,r&1&&(a.brokenBold||(g+="font-weight:bold;"),8>m&&(m+=8)),r&2&&(g+="text-decoration:underline;"),r&4&&(r&2?(g=g.slice(0,-1),g+=" blink;"):g+="text-decoration:blink;"),r&8&&(p=l>>9&511,m=l&511,r&1&&8>m&&(m+=8)),r&16&&(g+="visibility:hidden;"),256!==p&&(g+="background-color:"+this.colors[p]+";"),257!==m&&(g+="color:"+this.colors[m]+";"),g+='">')));switch(h){case "&":g+=
"&amp;";break;case "<":g+="&lt;";break;case ">":g+="&gt;";break;default:" ">=h?g+="&ensp;":(q(h)&&e++,g+=h)}p=l}p!==this.defAttr&&(g+="</span>");this.children[d].innerHTML=g}v&&v.appendChild(this.element)};a.prototype._cursorBlink=function(){a.focus===this&&(this.cursorState^=1,this.refresh(this.y,this.y))};a.prototype.showCursor=function(){this.cursorState||(this.cursorState=1,this.refresh(this.y,this.y))};a.prototype.startBlink=function(){if(this.cursorBlink){var b=this;this._blinker=function(){b._cursorBlink()};
this._blink=z(this._blinker,500)}};a.prototype.refreshBlink=function(){this.cursorBlink&&(clearInterval(this._blink),this._blink=z(this._blinker,500))};a.prototype.scroll=function(){var b;++this.ybase===this.scrollback&&(this.ybase=this.ybase/2|0,this.lines=this.lines.slice(-(this.ybase+this.rows)+1));this.ydisp=this.ybase;b=this.ybase+this.rows-1;b-=this.rows-1-this.scrollBottom;b===this.lines.length?this.lines.push(this.blankLine()):this.lines.splice(b,0,this.blankLine());0!==this.scrollTop&&(0!==
this.ybase&&(this.ybase--,this.ydisp=this.ybase),this.lines.splice(this.ybase+this.scrollTop,1));this.updateRange(this.scrollTop);this.updateRange(this.scrollBottom)};a.prototype.scrollDisp=function(b){this.ydisp+=b;this.ydisp>this.ybase?this.ydisp=this.ybase:0>this.ydisp&&(this.ydisp=0);this.refresh(0,this.rows-1)};a.prototype.write=function(b){var n=b.length,c=0,d;this.refreshEnd=this.refreshStart=this.y;this.ybase!==this.ydisp&&(this.ydisp=this.ybase,this.maxRange());for(;c<n;c++)switch(d=b[c],
this.state){case 0:switch(d){case "\u0007":this.bell();break;case "\n":case "\x0B":case "\f":this.convertEol&&(this.x=0);this.y++;this.y>this.scrollBottom&&(this.y--,this.scroll());break;case "\r":this.x=0;break;case "\b":0<this.x&&this.x--;break;case "\t":this.x=this.nextStop();break;case "\u000e":this.setgLevel(1);break;case "\u000f":this.setgLevel(0);break;case "\u001b":this.state=1;break;default:if(" "<=d&&(this.charset&&this.charset[d]&&(d=this.charset[d]),this.x>=this.cols&&(this.x=0,this.y++,
this.y>this.scrollBottom&&(this.y--,this.scroll())),this.lines[this.y+this.ybase][this.x]=[this.curAttr,d],this.x++,this.updateRange(this.y),q(d))){d=this.y+this.ybase;if(2>this.cols||this.x>=this.cols){this.lines[d][this.x-1]=[this.curAttr," "];break}this.lines[d][this.x]=[this.curAttr," "];this.x++}}break;case 1:switch(d){case "[":this.params=[];this.currentParam=0;this.state=2;break;case "]":this.params=[];this.currentParam=0;this.state=3;break;case "P":this.params=[];this.currentParam=0;this.state=
5;break;case "_":this.state=6;break;case "^":this.state=6;break;case "c":this.reset();break;case "E":this.x=0;case "D":this.index();break;case "M":this.reverseIndex();break;case "%":this.setgLevel(0);this.setgCharset(0,a.charsets.US);this.state=0;c++;break;case "(":case ")":case "*":case "+":case "-":case ".":switch(d){case "(":this.gcharset=0;break;case ")":this.gcharset=1;break;case "*":this.gcharset=2;break;case "+":this.gcharset=3;break;case "-":this.gcharset=1;break;case ".":this.gcharset=2}this.state=
4;break;case "/":this.gcharset=3;this.state=4;c--;break;case "N":break;case "O":break;case "n":this.setgLevel(2);break;case "o":this.setgLevel(3);break;case "|":this.setgLevel(3);break;case "}":this.setgLevel(2);break;case "~":this.setgLevel(1);break;case "7":this.saveCursor();this.state=0;break;case "8":this.restoreCursor();this.state=0;break;case "#":this.state=0;c++;break;case "H":this.tabSet();break;case "=":this.log("Serial port requested application keypad.");this.applicationKeypad=!0;this.state=
0;break;case ">":this.log("Switching back to normal keypad.");this.applicationKeypad=!1;this.state=0;break;default:this.state=0,this.error("Unknown ESC control: %s.",d)}break;case 4:switch(d){case "0":d=a.charsets.SCLD;break;case "A":d=a.charsets.UK;break;case "B":d=a.charsets.US;break;case "4":d=a.charsets.Dutch;break;case "C":case "5":d=a.charsets.Finnish;break;case "R":d=a.charsets.French;break;case "Q":d=a.charsets.FrenchCanadian;break;case "K":d=a.charsets.German;break;case "Y":d=a.charsets.Italian;
break;case "E":case "6":d=a.charsets.NorwegianDanish;break;case "Z":d=a.charsets.Spanish;break;case "H":case "7":d=a.charsets.Swedish;break;case "=":d=a.charsets.Swiss;break;case "/":d=a.charsets.ISOLatin;c++;break;default:d=a.charsets.US}this.setgCharset(this.gcharset,d);this.gcharset=null;this.state=0;break;case 3:if("\u001b"===d||"\u0007"===d){"\u001b"===d&&c++;this.params.push(this.currentParam);switch(this.params[0]){case 0:case 1:case 2:this.params[1]&&(this.title=this.params[1],this.handleTitle(this.title))}this.params=
[];this.state=this.currentParam=0}else this.params.length?this.currentParam+=d:"0"<=d&&"9">=d?this.currentParam=10*this.currentParam+d.charCodeAt(0)-48:";"===d&&(this.params.push(this.currentParam),this.currentParam="");break;case 2:if("?"===d||">"===d||"!"===d){this.prefix=d;break}if("0"<=d&&"9">=d){this.currentParam=10*this.currentParam+d.charCodeAt(0)-48;break}if("$"===d||'"'===d||" "===d||"'"===d){this.postfix=d;break}this.params.push(this.currentParam);this.currentParam=0;if(";"===d)break;this.state=
0;switch(d){case "A":this.cursorUp(this.params);break;case "B":this.cursorDown(this.params);break;case "C":this.cursorForward(this.params);break;case "D":this.cursorBackward(this.params);break;case "H":this.cursorPos(this.params);break;case "J":this.eraseInDisplay(this.params);break;case "K":this.eraseInLine(this.params);break;case "m":this.prefix||this.charAttributes(this.params);break;case "n":this.prefix||this.deviceStatus(this.params);break;case "@":this.insertChars(this.params);break;case "E":this.cursorNextLine(this.params);
break;case "F":this.cursorPrecedingLine(this.params);break;case "G":this.cursorCharAbsolute(this.params);break;case "L":this.insertLines(this.params);break;case "M":this.deleteLines(this.params);break;case "P":this.deleteChars(this.params);break;case "X":this.eraseChars(this.params);break;case "`":this.charPosAbsolute(this.params);break;case "a":this.HPositionRelative(this.params);break;case "c":this.sendDeviceAttributes(this.params);break;case "d":this.linePosAbsolute(this.params);break;case "e":this.VPositionRelative(this.params);
break;case "f":this.HVPosition(this.params);break;case "h":this.setMode(this.params);break;case "l":this.resetMode(this.params);break;case "r":this.setScrollRegion(this.params);break;case "s":this.saveCursor(this.params);break;case "u":this.restoreCursor(this.params);break;case "I":this.cursorForwardTab(this.params);break;case "S":this.scrollUp(this.params);break;case "T":2>this.params.length&&!this.prefix&&this.scrollDown(this.params);break;case "Z":this.cursorBackwardTab(this.params);break;case "b":this.repeatPrecedingCharacter(this.params);
break;case "g":this.tabClear(this.params);break;case "p":switch(this.prefix){case "!":this.softReset(this.params)}break;default:this.error("Unknown CSI code: %s.",d)}this.postfix=this.prefix="";break;case 5:if("\u001b"===d||"\u0007"===d){"\u001b"===d&&c++;switch(this.prefix){case "":break;case "$q":d=this.currentParam;var e=!1;switch(d){case '"q':d='0"q';break;case '"p':d='61"p';break;case "r":d=""+(this.scrollTop+1)+";"+(this.scrollBottom+1)+"r";break;case "m":d="0m";break;default:this.error("Unknown DCS Pt: %s.",
d),d=""}this.send("\u001bP"+ +e+"$r"+d+"\u001b\\");break;case "+p":break;case "+q":d=this.currentParam;e=!1;this.send("\u001bP"+ +e+"+r"+d+"\u001b\\");break;default:this.error("Unknown DCS prefix: %s.",this.prefix)}this.currentParam=0;this.prefix="";this.state=0}else this.currentParam?this.currentParam+=d:this.prefix||"$"===d||"+"===d?2===this.prefix.length?this.currentParam=d:this.prefix+=d:this.currentParam=d;break;case 6:if("\u001b"===d||"\u0007"===d)"\u001b"===d&&c++,this.state=0}this.updateRange(this.y);
this.refresh(this.refreshStart,this.refreshEnd)};a.prototype.writeln=function(b){this.write(b+"\r\n")};a.prototype.keyDown=function(b){var a=this,c;switch(b.keyCode){case 8:if(b.shiftKey){c="\b";break}c="\u007f";break;case 9:if(b.shiftKey){c="\u001b[Z";break}c="\t";break;case 13:c="\r";break;case 27:c="\u001b";break;case 37:if(this.applicationCursor){c="\u001bOD";break}c="\u001b[D";break;case 39:if(this.applicationCursor){c="\u001bOC";break}c="\u001b[C";break;case 38:if(this.applicationCursor){c=
"\u001bOA";break}if(b.ctrlKey)return this.scrollDisp(-1),f(b);c="\u001b[A";break;case 40:if(this.applicationCursor){c="\u001bOB";break}if(b.ctrlKey)return this.scrollDisp(1),f(b);c="\u001b[B";break;case 46:c="\u001b[3~";break;case 45:c="\u001b[2~";break;case 36:if(this.applicationKeypad){c="\u001bOH";break}c="\u001bOH";break;case 35:if(this.applicationKeypad){c="\u001bOF";break}c="\u001bOF";break;case 33:if(b.shiftKey)return this.scrollDisp(-(this.rows-1)),f(b);c="\u001b[5~";break;case 34:if(b.shiftKey)return this.scrollDisp(this.rows-
1),f(b);c="\u001b[6~";break;case 112:c="\u001bOP";break;case 113:c="\u001bOQ";break;case 114:c="\u001bOR";break;case 115:c="\u001bOS";break;case 116:c="\u001b[15~";break;case 117:c="\u001b[17~";break;case 118:c="\u001b[18~";break;case 119:c="\u001b[19~";break;case 120:c="\u001b[20~";break;case 121:c="\u001b[21~";break;case 122:c="\u001b[23~";break;case 123:c="\u001b[24~";break;default:if(b.ctrlKey)if(65<=b.keyCode&&90>=b.keyCode){if(this.screenKeys&&!this.prefixMode&&!this.selectMode&&65===b.keyCode)return this.enterPrefix(),
f(b);if(this.prefixMode&&86===b.keyCode){this.leavePrefix();return}if((this.prefixMode||this.selectMode)&&67===b.keyCode){this.visualMode&&v(function(){a.leaveVisual()},1);return}c=p.fromCharCode(b.keyCode-64)}else 32===b.keyCode?c=p.fromCharCode(0):51<=b.keyCode&&55>=b.keyCode?c=p.fromCharCode(b.keyCode-51+27):56===b.keyCode?c=p.fromCharCode(127):219===b.keyCode?c=p.fromCharCode(27):221===b.keyCode&&(c=p.fromCharCode(29));else if(!this.isMac&&b.altKey||this.isMac&&b.metaKey)65<=b.keyCode&&90>=b.keyCode?
c="\u001b"+p.fromCharCode(b.keyCode+32):192===b.keyCode?c="\u001b`":48<=b.keyCode&&57>=b.keyCode&&(c="\u001b"+(b.keyCode-48))}if(!c)return!0;if(this.prefixMode)return this.leavePrefix(),f(b);if(this.selectMode)return this.keySelect(b,c),f(b);this.emit("keydown",b);this.emit("key",c,b);this.showCursor();this.handler(c);return f(b)};a.prototype.setgLevel=function(b){this.glevel=b;this.charset=this.charsets[b]};a.prototype.setgCharset=function(b,a){this.charsets[b]=a;this.glevel===b&&(this.charset=a)};
a.prototype.keyPress=function(b){var a;f(b);if(b.charCode)a=b.charCode;else if(null==b.which)a=b.keyCode;else if(0!==b.which&&0!==b.charCode)a=b.which;else return!1;if(!a||b.ctrlKey||b.altKey||b.metaKey)return!1;a=p.fromCharCode(a);if(this.prefixMode)return this.leavePrefix(),this.keyPrefix(b,a),!1;if(this.selectMode)return this.keySelect(b,a),!1;this.emit("keypress",a,b);this.emit("key",a,b);this.showCursor();this.handler(a);return!1};a.prototype.send=function(b){var a=this;this.queue||v(function(){a.handler(a.queue);
a.queue=""},1);this.queue+=b};a.prototype.bell=function(){this.emit("bell");if(this.visualBell){var b=this;this.element.style.borderColor="white";v(function(){b.element.style.borderColor=""},10);this.popOnBell&&this.focus()}};a.prototype.log=function(){if(this.debug&&this.context.console&&this.context.console.log){var b=Array.prototype.slice.call(arguments);this.context.console.log.apply(this.context.console,b)}};a.prototype.error=function(){if(this.debug&&this.context.console&&this.context.console.error){var b=
Array.prototype.slice.call(arguments);this.context.console.error.apply(this.context.console,b)}};a.prototype.resize=function(b,a){var c,d,e;1>b&&(b=1);1>a&&(a=1);e=this.cols;if(e<b)for(d=[this.defAttr," "],c=this.lines.length;c--;)for(;this.lines[c].length<b;)this.lines[c].push(d);else if(e>b)for(c=this.lines.length;c--;)for(;this.lines[c].length>b;)this.lines[c].pop();this.setupStops(e);this.cols=b;e=this.rows;if(e<a)for(d=this.element;e++<a;)this.lines.length<a+this.ybase&&this.lines.push(this.blankLine()),
this.children.length<a&&(c=this.document.createElement("div"),d.appendChild(c),this.children.push(c));else if(e>a)for(;e-- >a;)this.lines.length>a+this.ybase&&this.lines.pop(),this.children.length>a&&(d=this.children.pop())&&d.parentNode.removeChild(d);this.rows=a;this.y>=a&&(this.y=a-1);this.x>=b&&(this.x=b-1);this.scrollTop=0;this.scrollBottom=a-1;this.refresh(0,this.rows-1);this.normal=null};a.prototype.updateRange=function(b){b<this.refreshStart&&(this.refreshStart=b);b>this.refreshEnd&&(this.refreshEnd=
b)};a.prototype.maxRange=function(){this.refreshStart=0;this.refreshEnd=this.rows-1};a.prototype.setupStops=function(b){null!=b?this.tabs[b]||(b=this.prevStop(b)):(this.tabs={},b=0);for(;b<this.cols;b+=8)this.tabs[b]=!0};a.prototype.prevStop=function(b){null==b&&(b=this.x);for(;!this.tabs[--b]&&0<b;);return b>=this.cols?this.cols-1:0>b?0:b};a.prototype.nextStop=function(b){null==b&&(b=this.x);for(;!this.tabs[++b]&&b<this.cols;);return b>=this.cols?this.cols-1:0>b?0:b};a.prototype.eraseRight=function(b,
a){for(var c=this.lines[this.ybase+a],d=[this.eraseAttr()," "];b<this.cols;b++)c[b]=d;this.updateRange(a)};a.prototype.eraseLeft=function(b,a){var c=this.lines[this.ybase+a],d=[this.eraseAttr()," "];for(b++;b--;)c[b]=d;this.updateRange(a)};a.prototype.eraseLine=function(b){this.eraseRight(0,b)};a.prototype.blankLine=function(b){b=[b?this.eraseAttr():this.defAttr," "];for(var a=[],c=0;c<this.cols;c++)a[c]=b;return a};a.prototype.ch=function(b){return b?[this.eraseAttr()," "]:[this.defAttr," "]};a.prototype.is=
function(b){return 0===(this.termName+"").indexOf(b)};a.prototype.handler=function(b){this.emit("data",b)};a.prototype.handleTitle=function(b){this.emit("title",b)};a.prototype.index=function(){this.y++;this.y>this.scrollBottom&&(this.y--,this.scroll());this.state=0};a.prototype.reverseIndex=function(){var b;this.y--;this.y<this.scrollTop&&(this.y++,this.lines.splice(this.y+this.ybase,0,this.blankLine(!0)),b=this.rows-1-this.scrollBottom,this.lines.splice(this.rows-1+this.ybase-b+1,1),this.updateRange(this.scrollTop),
this.updateRange(this.scrollBottom));this.state=0};a.prototype.reset=function(){this.options.rows=this.rows;this.options.cols=this.cols;a.call(this,this.options);this.refresh(0,this.rows-1)};a.prototype.tabSet=function(){this.tabs[this.x]=!0;this.state=0};a.prototype.cursorUp=function(b){b=b[0];1>b&&(b=1);this.y-=b;0>this.y&&(this.y=0)};a.prototype.cursorDown=function(b){b=b[0];1>b&&(b=1);this.y+=b;this.y>=this.rows&&(this.y=this.rows-1)};a.prototype.cursorForward=function(b){b=b[0];1>b&&(b=1);this.x+=
b;this.x>=this.cols&&(this.x=this.cols-1)};a.prototype.cursorBackward=function(b){b=b[0];1>b&&(b=1);this.x-=b;0>this.x&&(this.x=0)};a.prototype.cursorPos=function(b){var a;a=b[0]-1;b=2<=b.length?b[1]-1:0;0>a?a=0:a>=this.rows&&(a=this.rows-1);0>b?b=0:b>=this.cols&&(b=this.cols-1);this.x=b;this.y=a};a.prototype.eraseInDisplay=function(b){switch(b[0]){case 0:this.eraseRight(this.x,this.y);for(b=this.y+1;b<this.rows;b++)this.eraseLine(b);break;case 1:this.eraseLeft(this.x,this.y);for(b=this.y;b--;)this.eraseLine(b);
break;case 2:for(b=this.rows;b--;)this.eraseLine(b)}};a.prototype.eraseInLine=function(b){switch(b[0]){case 0:this.eraseRight(this.x,this.y);break;case 1:this.eraseLeft(this.x,this.y);break;case 2:this.eraseLine(this.y)}};a.prototype.charAttributes=function(b){if(1===b.length&&0===b[0])this.curAttr=this.defAttr;else{for(var a=b.length,c=0,d=this.curAttr>>18,e=this.curAttr>>9&511,f=this.curAttr&511,g;c<a;c++)g=b[c],30<=g&&37>=g?e=g-30:40<=g&&47>=g?f=g-40:90<=g&&97>=g?(g+=8,e=g-90):100<=g&&107>=g?(g+=
8,f=g-100):0===g?(d=this.defAttr>>18,e=this.defAttr>>9&511,f=this.defAttr&511):1===g?d|=1:4===g?d|=2:5===g?d|=4:7===g?d|=8:8===g?d|=16:22===g?d&=-2:24===g?d&=-3:25===g?d&=-5:27===g?d&=-9:28===g?d&=-17:39===g?e=this.defAttr>>9&511:49===g?f=this.defAttr&511:38===g?2===b[c+1]?(c+=2,e=m(b[c]&255,b[c+1]&255,b[c+2]&255),-1===e&&(e=511),c+=2):5===b[c+1]&&(c+=2,e=g=b[c]&255):48===g?2===b[c+1]?(c+=2,f=m(b[c]&255,b[c+1]&255,b[c+2]&255),-1===f&&(f=511),c+=2):5===b[c+1]&&(c+=2,f=g=b[c]&255):100===g?(e=this.defAttr>>
9&511,f=this.defAttr&511):this.error("Unknown SGR attribute: %d.",g);this.curAttr=d<<18|e<<9|f}};a.prototype.deviceStatus=function(b){if(!this.prefix)switch(b[0]){case 5:this.send("\u001b[0n");break;case 6:this.send("\u001b["+(this.y+1)+";"+(this.x+1)+"R")}else if("?"===this.prefix)switch(b[0]){case 6:this.send("\u001b[?"+(this.y+1)+";"+(this.x+1)+"R")}};a.prototype.insertChars=function(b){var a,c,d;b=b[0];1>b&&(b=1);a=this.y+this.ybase;c=this.x;for(d=[this.eraseAttr()," "];b--&&c<this.cols;)this.lines[a].splice(c++,
0,d),this.lines[a].pop()};a.prototype.cursorNextLine=function(b){b=b[0];1>b&&(b=1);this.y+=b;this.y>=this.rows&&(this.y=this.rows-1);this.x=0};a.prototype.cursorPrecedingLine=function(b){b=b[0];1>b&&(b=1);this.y-=b;0>this.y&&(this.y=0);this.x=0};a.prototype.cursorCharAbsolute=function(b){b=b[0];1>b&&(b=1);this.x=b-1};a.prototype.insertLines=function(b){var a,c;b=b[0];1>b&&(b=1);a=this.y+this.ybase;c=this.rows-1-this.scrollBottom;for(c=this.rows-1+this.ybase-c+1;b--;)this.lines.splice(a,0,this.blankLine(!0)),
this.lines.splice(c,1);this.updateRange(this.y);this.updateRange(this.scrollBottom)};a.prototype.deleteLines=function(b){var a,c;b=b[0];1>b&&(b=1);a=this.y+this.ybase;c=this.rows-1-this.scrollBottom;for(c=this.rows-1+this.ybase-c;b--;)this.lines.splice(c+1,0,this.blankLine(!0)),this.lines.splice(a,1);this.updateRange(this.y);this.updateRange(this.scrollBottom)};a.prototype.deleteChars=function(b){var a,c;b=b[0];1>b&&(b=1);a=this.y+this.ybase;for(c=[this.eraseAttr()," "];b--;)this.lines[a].splice(this.x,
1),this.lines[a].push(c)};a.prototype.eraseChars=function(b){var a,c,d;b=b[0];1>b&&(b=1);a=this.y+this.ybase;c=this.x;for(d=[this.eraseAttr()," "];b--&&c<this.cols;)this.lines[a][c++]=d};a.prototype.charPosAbsolute=function(b){b=b[0];1>b&&(b=1);this.x=b-1;this.x>=this.cols&&(this.x=this.cols-1)};a.prototype.HPositionRelative=function(b){b=b[0];1>b&&(b=1);this.x+=b;this.x>=this.cols&&(this.x=this.cols-1)};a.prototype.sendDeviceAttributes=function(b){0<b[0]||(this.prefix?">"===this.prefix&&(this.is("xterm")?
this.send("\u001b[>0;276;0c"):this.is("rxvt-unicode")?this.send("\u001b[>85;95;0c"):this.is("linux")?this.send(b[0]+"c"):this.is("screen")&&this.send("\u001b[>83;40003;0c")):this.is("xterm")||this.is("rxvt-unicode")||this.is("screen")?this.send("\u001b[?1;2c"):this.is("linux")&&this.send("\u001b[?6c"))};a.prototype.linePosAbsolute=function(b){b=b[0];1>b&&(b=1);this.y=b-1;this.y>=this.rows&&(this.y=this.rows-1)};a.prototype.VPositionRelative=function(b){b=b[0];1>b&&(b=1);this.y+=b;this.y>=this.rows&&
(this.y=this.rows-1)};a.prototype.HVPosition=function(b){1>b[0]&&(b[0]=1);1>b[1]&&(b[1]=1);this.y=b[0]-1;this.y>=this.rows&&(this.y=this.rows-1);this.x=b[1]-1;this.x>=this.cols&&(this.x=this.cols-1)};a.prototype.setMode=function(b){if("object"===typeof b)for(var e=b.length,c=0;c<e;c++)this.setMode(b[c]);else if(!this.prefix)switch(b){case 4:this.insertMode=!0}else if("?"===this.prefix)switch(b){case 1:this.applicationCursor=!0;break;case 2:this.setgCharset(0,a.charsets.US);this.setgCharset(1,a.charsets.US);
this.setgCharset(2,a.charsets.US);this.setgCharset(3,a.charsets.US);break;case 3:this.savedCols=this.cols;this.resize(132,this.rows);break;case 6:this.originMode=!0;break;case 7:this.wraparoundMode=!0;break;case 66:this.log("Serial port requested application keypad.");this.applicationKeypad=!0;break;case 9:case 1E3:case 1002:case 1003:this.x10Mouse=9===b;this.vt200Mouse=1E3===b;this.normalMouse=1E3<b;this.mouseEvents=!0;this.element.style.cursor="default";this.log("Binding to mouse events.");break;
case 1004:this.sendFocus=!0;break;case 1005:this.utfMouse=!0;break;case 1006:this.sgrMouse=!0;break;case 1015:this.urxvtMouse=!0;break;case 25:this.cursorHidden=!1;break;case 1049:case 47:case 1047:this.normal||(b={lines:this.lines,ybase:this.ybase,ydisp:this.ydisp,x:this.x,y:this.y,scrollTop:this.scrollTop,scrollBottom:this.scrollBottom,tabs:this.tabs},this.reset(),this.normal=b,this.showCursor())}};a.prototype.resetMode=function(b){if("object"===typeof b)for(var a=b.length,c=0;c<a;c++)this.resetMode(b[c]);
else if(!this.prefix)switch(b){case 4:this.insertMode=!1}else if("?"===this.prefix)switch(b){case 1:this.applicationCursor=!1;break;case 3:132===this.cols&&this.savedCols&&this.resize(this.savedCols,this.rows);delete this.savedCols;break;case 6:this.originMode=!1;break;case 7:this.wraparoundMode=!1;break;case 66:this.log("Switching back to normal keypad.");this.applicationKeypad=!1;break;case 9:case 1E3:case 1002:case 1003:this.mouseEvents=this.normalMouse=this.vt200Mouse=this.x10Mouse=!1;this.element.style.cursor=
"";break;case 1004:this.sendFocus=!1;break;case 1005:this.utfMouse=!1;break;case 1006:this.sgrMouse=!1;break;case 1015:this.urxvtMouse=!1;break;case 25:this.cursorHidden=!0;break;case 1049:case 47:case 1047:this.normal&&(this.lines=this.normal.lines,this.ybase=this.normal.ybase,this.ydisp=this.normal.ydisp,this.x=this.normal.x,this.y=this.normal.y,this.scrollTop=this.normal.scrollTop,this.scrollBottom=this.normal.scrollBottom,this.tabs=this.normal.tabs,this.normal=null,this.refresh(0,this.rows-1),
this.showCursor())}};a.prototype.setScrollRegion=function(b){this.prefix||(this.scrollTop=(b[0]||1)-1,this.scrollBottom=(b[1]||this.rows)-1,this.y=this.x=0)};a.prototype.saveCursor=function(b){this.savedX=this.x;this.savedY=this.y};a.prototype.restoreCursor=function(b){this.x=this.savedX||0;this.y=this.savedY||0};a.prototype.cursorForwardTab=function(b){for(b=b[0]||1;b--;)this.x=this.nextStop()};a.prototype.scrollUp=function(b){for(b=b[0]||1;b--;)this.lines.splice(this.ybase+this.scrollTop,1),this.lines.splice(this.ybase+
this.scrollBottom,0,this.blankLine());this.updateRange(this.scrollTop);this.updateRange(this.scrollBottom)};a.prototype.scrollDown=function(b){for(b=b[0]||1;b--;)this.lines.splice(this.ybase+this.scrollBottom,1),this.lines.splice(this.ybase+this.scrollTop,0,this.blankLine());this.updateRange(this.scrollTop);this.updateRange(this.scrollBottom)};a.prototype.initMouseTracking=function(b){};a.prototype.resetTitleModes=function(b){};a.prototype.cursorBackwardTab=function(b){for(b=b[0]||1;b--;)this.x=this.prevStop()};
a.prototype.repeatPrecedingCharacter=function(b){b=b[0]||1;for(var a=this.lines[this.ybase+this.y],c=a[this.x-1]||[this.defAttr," "];b--;)a[this.x++]=c};a.prototype.tabClear=function(b){b=b[0];0>=b?delete this.tabs[this.x]:3===b&&(this.tabs={})};a.prototype.mediaCopy=function(b){};a.prototype.setResources=function(b){};a.prototype.disableModifiers=function(b){};a.prototype.setPointerMode=function(b){};a.prototype.softReset=function(b){this.applicationCursor=this.applicationKeypad=this.wraparoundMode=
this.originMode=this.insertMode=this.cursorHidden=!1;this.scrollTop=0;this.scrollBottom=this.rows-1;this.curAttr=this.defAttr;this.x=this.y=0;this.charset=null;this.glevel=0;this.charsets=[null]};a.prototype.requestAnsiMode=function(b){};a.prototype.requestPrivateMode=function(b){};a.prototype.setConformanceLevel=function(b){};a.prototype.loadLEDs=function(b){};a.prototype.setCursorStyle=function(b){};a.prototype.setCharProtectionAttr=function(b){};a.prototype.restorePrivateValues=function(b){};a.prototype.setAttrInRectangle=
function(b){for(var a=b[0],c=b[1],d=b[2],e=b[3],f=b[4],g,h;a<d+1;a++)for(g=this.lines[this.ybase+a],h=c;h<e;h++)g[h]=[f,g[h][1]];this.updateRange(b[0]);this.updateRange(b[2])};a.prototype.savePrivateValues=function(b){};a.prototype.manipulateWindow=function(b){};a.prototype.reverseAttrInRectangle=function(b){};a.prototype.setTitleModeFeature=function(b){};a.prototype.setWarningBellVolume=function(b){};a.prototype.setMarginBellVolume=function(b){};a.prototype.copyRectangle=function(b){};a.prototype.enableFilterRectangle=
function(b){};a.prototype.requestParameters=function(b){};a.prototype.selectChangeExtent=function(b){};a.prototype.fillRectangle=function(b){for(var a=b[0],c=b[1],d=b[2],e=b[3],f=b[4],g,h;c<e+1;c++)for(g=this.lines[this.ybase+c],h=d;h<f;h++)g[h]=[g[h][0],p.fromCharCode(a)];this.updateRange(b[1]);this.updateRange(b[3])};a.prototype.enableLocatorReporting=function(b){};a.prototype.eraseRectangle=function(b){var a=b[0],c=b[1],d=b[2],e=b[3],f,g,h;for(h=[this.eraseAttr()," "];a<d+1;a++)for(f=this.lines[this.ybase+
a],g=c;g<e;g++)f[g]=h;this.updateRange(b[0]);this.updateRange(b[2])};a.prototype.setLocatorEvents=function(b){};a.prototype.selectiveEraseRectangle=function(b){};a.prototype.requestLocatorPosition=function(b){};a.prototype.insertColumns=function(){for(var b=params[0],a=this.ybase+this.rows,c=[this.eraseAttr()," "],d;b--;)for(d=this.ybase;d<a;d++)this.lines[d].splice(this.x+1,0,c),this.lines[d].pop();this.maxRange()};a.prototype.deleteColumns=function(){for(var b=params[0],a=this.ybase+this.rows,c=
[this.eraseAttr()," "],d;b--;)for(d=this.ybase;d<a;d++)this.lines[d].splice(this.x,1),this.lines[d].push(c);this.maxRange()};a.prototype.enterPrefix=function(){this.prefixMode=!0};a.prototype.leavePrefix=function(){this.prefixMode=!1};a.prototype.enterSelect=function(){this._real={x:this.x,y:this.y,ydisp:this.ydisp,ybase:this.ybase,cursorHidden:this.cursorHidden,lines:this.copyBuffer(this.lines),write:this.write};this.write=function(){};this.selectMode=!0;this.cursorHidden=this.visualMode=!1;this.refresh(this.y,
this.y)};a.prototype.leaveSelect=function(){this.x=this._real.x;this.y=this._real.y;this.ydisp=this._real.ydisp;this.ybase=this._real.ybase;this.cursorHidden=this._real.cursorHidden;this.lines=this._real.lines;this.write=this._real.write;delete this._real;this.visualMode=this.selectMode=!1;this.refresh(0,this.rows-1)};a.prototype.enterVisual=function(){this._real.preVisual=this.copyBuffer(this.lines);this.selectText(this.x,this.x,this.ydisp+this.y,this.ydisp+this.y);this.visualMode=!0};a.prototype.leaveVisual=
function(){this.lines=this._real.preVisual;delete this._real.preVisual;delete this._selected;this.visualMode=!1;this.refresh(0,this.rows-1)};a.prototype.enterSearch=function(b){this.entry="";this.searchMode=!0;this.searchDown=b;this._real.preSearch=this.copyBuffer(this.lines);this._real.preSearchX=this.x;this._real.preSearchY=this.y;b=this.ydisp+this.rows-1;for(var a=0;a<this.entryPrefix.length;a++)this.lines[b][a]=[this.defAttr&-512|4,this.entryPrefix[a]];this.y=this.rows-1;this.x=this.entryPrefix.length;
this.refresh(this.rows-1,this.rows-1)};a.prototype.leaveSearch=function(){this.searchMode=!1;this._real.preSearch&&(this.lines=this._real.preSearch,this.x=this._real.preSearchX,this.y=this._real.preSearchY,delete this._real.preSearch,delete this._real.preSearchX,delete this._real.preSearchY);this.refresh(this.rows-1,this.rows-1)};a.prototype.copyBuffer=function(b){b=b||this.lines;for(var a=[],c=0;c<b.length;c++){a[c]=[];for(var d=0;d<b[c].length;d++)a[c][d]=[b[c][d][0],b[c][d][1]]}return a};a.prototype.getCopyTextarea=
function(b){b=this._copyTextarea;var a=this.document;b||(b=a.createElement("textarea"),b.style.position="absolute",b.style.left="-32000px",b.style.top="-32000px",b.style.width="0px",b.style.height="0px",b.style.opacity="0",b.style.backgroundColor="transparent",b.style.borderStyle="none",b.style.outlineStyle="none",a.getElementsByTagName("body")[0].appendChild(b),this._copyTextarea=b);return b};a.prototype.copyText=function(b){var a=this,c=this.getCopyTextarea();this.emit("copy",b);c.focus();c.textContent=
b;c.value=b;c.setSelectionRange(0,b.length);v(function(){a.element.focus();a.focus()},1)};a.prototype.selectText=function(b,a,c,d){var e,f,g,h,k,l;if(this._selected){b=this._selected.x1;c=this._selected.x2;e=this._selected.y1;f=this._selected.y2;f<e&&(g=c,c=b,b=g,g=f,f=e,e=g);c<b&&e===f&&(g=c,c=b,b=g);for(h=e;h<=f;h++)for(g=0,k=this.cols-1,h===e&&(g=b),h===f&&(k=c);g<=k;g++)null!=this.lines[h][g].old&&(l=this.lines[h][g].old,delete this.lines[h][g].old,this.lines[h][g]=[l,this.lines[h][g][1]]);c=
this._selected.y1;b=this._selected.x1}c=Math.max(c,0);c=Math.min(c,this.ydisp+this.rows-1);d=Math.max(d,0);d=Math.min(d,this.ydisp+this.rows-1);this._selected={x1:b,x2:a,y1:c,y2:d};d<c&&(g=a,a=b,b=g,g=d,d=c,c=g);a<b&&c===d&&(g=a,a=b,b=g);for(h=c;h<=d;h++)for(g=0,k=this.cols-1,h===c&&(g=b),h===d&&(k=a);g<=k;g++)l=this.lines[h][g][0],this.lines[h][g]=[l&-512|261636,this.lines[h][g][1]],this.lines[h][g].old=l;c-=this.ydisp;d-=this.ydisp;c=Math.max(c,0);Math.min(c,this.rows-1);d=Math.max(d,0);Math.min(d,
this.rows-1);this.refresh(0,this.rows-1)};a.prototype.grabText=function(b,a,c,d){var e="",h="",g,f,k,l;d<c&&(g=a,a=b,b=g,g=d,d=c,c=g);a<b&&c===d&&(g=a,a=b,b=g);for(k=c;k<=d;k++){f=0;l=this.cols-1;k===c&&(f=b);for(k===d&&(l=a);f<=l;f++)g=this.lines[k][f][1]," "===g?h+=g:(h&&(e+=h,h=""),e+=g,q(g)&&f++);h="";e+="\n"}f=a;for(k=d;f<this.cols;f++)if(" "!==this.lines[k][f][1]){e=e.slice(0,-1);break}return e};a.prototype.keyPrefix=function(b,a){"k"===a||"&"===a?this.destroy():"p"===a||"]"===a?this.emit("request paste"):
"c"===a?this.emit("request create"):"0"<=a&&"9">=a?(a=+a-1,~a||(a=9),this.emit("request term",a)):"n"===a?this.emit("request term next"):"P"===a?this.emit("request term previous"):":"===a?this.emit("request command mode"):"["===a&&this.enterSelect()};a.prototype.keySelect=function(b,a){this.showCursor();if(this.searchMode||"n"===a||"N"===a)return this.keySearch(b,a);if("\u0004"===a){var c=this.ydisp+this.y;this.ydisp===this.ybase?(this.y=Math.min(this.y+(this.rows-1)/2|0,this.rows-1),this.refresh(0,
this.rows-1)):this.scrollDisp((this.rows-1)/2|0);this.visualMode&&this.selectText(this.x,this.x,c,this.ydisp+this.y)}else if("\u0015"===a)c=this.ydisp+this.y,0===this.ydisp?(this.y=Math.max(this.y-(this.rows-1)/2|0,0),this.refresh(0,this.rows-1)):this.scrollDisp(-(this.rows-1)/2|0),this.visualMode&&this.selectText(this.x,this.x,c,this.ydisp+this.y);else if("\u0006"===a)c=this.ydisp+this.y,this.scrollDisp(this.rows-1),this.visualMode&&this.selectText(this.x,this.x,c,this.ydisp+this.y);else if("\u0002"===
a)c=this.ydisp+this.y,this.scrollDisp(-(this.rows-1)),this.visualMode&&this.selectText(this.x,this.x,c,this.ydisp+this.y);else if("k"===a||"\u001b[A"===a)c=this.ydisp+this.y,this.y--,0>this.y&&(this.y=0,this.scrollDisp(-1)),this.visualMode?this.selectText(this.x,this.x,c,this.ydisp+this.y):this.refresh(this.y,this.y+1);else if("j"===a||"\u001b[B"===a)c=this.ydisp+this.y,this.y++,this.y>=this.rows&&(this.y=this.rows-1,this.scrollDisp(1)),this.visualMode?this.selectText(this.x,this.x,c,this.ydisp+this.y):
this.refresh(this.y-1,this.y);else if("h"===a||"\u001b[D"===a){var d=this.x;this.x--;0>this.x&&(this.x=0);this.visualMode?this.selectText(d,this.x,this.ydisp+this.y,this.ydisp+this.y):this.refresh(this.y,this.y)}else if("l"===a||"\u001b[C"===a)d=this.x,this.x++,this.x>=this.cols&&(this.x=this.cols-1),this.visualMode?this.selectText(d,this.x,this.ydisp+this.y,this.ydisp+this.y):this.refresh(this.y,this.y);else if("v"===a||" "===a)this.visualMode?this.leaveVisual():this.enterVisual();else if("y"===
a)this.visualMode&&(c=this.grabText(this._selected.x1,this._selected.x2,this._selected.y1,this._selected.y2),this.copyText(c),this.leaveVisual());else if("q"===a||"\u001b"===a)this.visualMode?this.leaveVisual():this.leaveSelect();else if("w"===a||"W"===a){for(var e=this.x,h=this.y,g=this.ydisp,d=this.x,c=this.y,f=this.ydisp,k=!1;;){for(var l=this.lines[f+c];d<this.cols;){if(" ">=l[d][1])k=!0;else if(k)break;d++}d>=this.cols&&(d=this.cols-1);if(d===this.cols-1&&" ">=l[d][1]){if(d=0,++c>=this.rows&&
(c--,++f>this.ybase)){f=this.ybase;d=this.x;break}}else break}this.x=d;this.y=c;this.scrollDisp(-this.ydisp+f);this.visualMode&&this.selectText(e,this.x,h+g,this.ydisp+this.y)}else if("b"===a||"B"===a){e=this.x;h=this.y;g=this.ydisp;d=this.x;c=this.y;for(f=this.ydisp;;){l=this.lines[f+c];for(k=0<d&&" "<l[d][1]&&" "<l[d-1][1];0<=d;){if(" ">=l[d][1])if(k&&d+1<this.cols&&" "<l[d+1][1]){d++;break}else k=!0;d--}0>d&&(d=0);if(0===d&&(" ">=l[d][1]||!k)){if(d=this.cols-1,0>--c&&(c++,0>--f)){f++;d=0;break}}else break}this.x=
d;this.y=c;this.scrollDisp(-this.ydisp+f);this.visualMode&&this.selectText(e,this.x,h+g,this.ydisp+this.y)}else if("e"===a||"E"===a){d=this.x+1;c=this.y;f=this.ydisp;for(d>=this.cols&&d--;;){for(l=this.lines[f+c];d<this.cols;)if(" ">=l[d][1])d++;else break;for(;d<this.cols;){if(" ">=l[d][1]&&0<=d-1&&" "<l[d-1][1]){d--;break}d++}d>=this.cols&&(d=this.cols-1);if(d===this.cols-1&&" ">=l[d][1]){if(d=0,++c>=this.rows&&(c--,++f>this.ybase)){f=this.ybase;break}}else break}this.x=d;this.y=c;this.scrollDisp(-this.ydisp+
f);this.visualMode&&this.selectText(e,this.x,h+g,this.ydisp+this.y)}else if("^"===a||"0"===a){e=this.x;if("0"===a)this.x=0;else if("^"===a){l=this.lines[this.ydisp+this.y];for(d=0;d<this.cols&&!(" "<l[d][1]);)d++;d>=this.cols&&(d=this.cols-1);this.x=d}this.visualMode?this.selectText(e,this.x,this.ydisp+this.y,this.ydisp+this.y):this.refresh(this.y,this.y)}else if("$"===a){e=this.x;l=this.lines[this.ydisp+this.y];for(d=this.cols-1;0<=d;){if(" "<l[d][1]){this.visualMode&&d<this.cols-1&&d++;break}d--}0>
d&&(d=0);this.x=d;this.visualMode?this.selectText(e,this.x,this.ydisp+this.y,this.ydisp+this.y):this.refresh(this.y,this.y)}else if("g"===a||"G"===a)e=this.x,h=this.y,g=this.ydisp,"g"===a?(this.y=this.x=0,this.scrollDisp(-this.ydisp)):"G"===a&&(this.x=0,this.y=this.rows-1,this.scrollDisp(this.ybase)),this.visualMode&&this.selectText(e,this.x,h+g,this.ydisp+this.y);else if("H"===a||"M"===a||"L"===a)e=this.x,h=this.y,"H"===a?this.y=this.x=0:"M"===a?(this.x=0,this.y=this.rows/2|0):"L"===a&&(this.x=0,
this.y=this.rows-1),this.visualMode?this.selectText(e,this.x,this.ydisp+h,this.ydisp+this.y):(this.refresh(h,h),this.refresh(this.y,this.y));else if("{"===a||"}"===a){var e=this.x,h=this.y,g=this.ydisp,k=d=!1,p=-1,c=this.y+("{"===a?-1:1),f=this.ydisp,m;"{"===a?0>c&&(c++,0<f&&f--):"}"===a&&c>=this.rows&&(c--,f<this.ybase&&f++);for(;;){l=this.lines[f+c];for(m=0;m<this.cols;m++)if(" "<l[m][1]){-1===p&&(p=0);d=!0;break}else if(m===this.cols-1){-1===p?p=1:0===p?k=!0:1===p&&d&&(k=!0);break}if(k)break;if("{"===
a){if(c--,0>c)if(c++,0<f)f--;else break}else if("}"===a&&(c++,c>=this.rows))if(c--,f<this.ybase)f++;else break}k||("{"===a?f=c=0:"}"===a&&(c=this.rows-1,f=this.ybase));this.x=0;this.y=c;this.scrollDisp(-this.ydisp+f);this.visualMode&&this.selectText(e,this.x,h+g,this.ydisp+this.y)}else if("/"===a||"?"===a)this.visualMode||this.enterSearch("/"===a);else return!1};a.prototype.keySearch=function(b,a){if("\u001b"===a)this.leaveSearch();else if("\r"!==a&&(this.searchMode||"n"!==a&&"N"!==a))if("\b"===a||
"\u007f"===a){if(0!==this.entry.length){var c=this.ydisp+this.rows-1;this.entry=this.entry.slice(0,-1);m=this.entryPrefix.length+this.entry.length;this.lines[c][m]=[this.lines[c][m][0]," "];this.x--;this.refresh(this.rows-1,this.rows-1);this.refresh(this.y,this.y)}}else if(1===a.length&&" "<=a&&"~">=a)c=this.ydisp+this.rows-1,this.entry+=a,m=this.entryPrefix.length+this.entry.length-1,this.lines[c][m]=[this.defAttr&-512|4,a],this.x++,this.refresh(this.rows-1,this.rows-1),this.refresh(this.y,this.y);
else return!1;else{this.leaveSearch();var d=this.entry;if(d){for(var c=this.x,e=this.y,f=this.ydisp,g,h=!1,l=!1,k=this.x+1,p=this.ydisp+this.y,m,r="N"===a?this.searchDown:!this.searchDown;;){for(g=this.lines[p];k<this.cols;){for(m=0;m<d.length&&!(k+m>=this.cols)&&g[k+m][1]===d[m];m++)if(g[k+m][1]===d[m]&&m===d.length-1){h=!0;break}if(h)break;k+=m+1}if(h)break;k=0;if(r){if(p--,0>p){if(l)break;l=!0;p=this.ybase+this.rows-1}}else if(p++,p>this.ybase+this.rows-1){if(l)break;l=!0;p=0}}h?(0>p-this.ybase?
(m=p,p=0,m>this.ybase&&(p=m-this.ybase,m=this.ybase)):(m=this.ybase,p-=this.ybase),this.x=k,this.y=p,this.scrollDisp(-this.ydisp+m),this.visualMode&&this.selectText(c,this.x,e+f,this.ydisp+this.y)):this.refresh(0,this.rows-1)}else this.refresh(0,this.rows-1)}};a.charsets={};a.charsets.SCLD={"`":"\u25c6",a:"\u2592",b:"\t",c:"\f",d:"\r",e:"\n",f:"\u00b0",g:"\u00b1",h:"\u2424",i:"\x0B",j:"\u2518",k:"\u2510",l:"\u250c",m:"\u2514",n:"\u253c",o:"\u23ba",p:"\u23bb",q:"\u2500",r:"\u23bc",s:"\u23bd",t:"\u251c",
u:"\u2524",v:"\u2534",w:"\u252c",x:"\u2502",y:"\u2264",z:"\u2265","{":"\u03c0","|":"\u2260","}":"\u00a3","~":"\u00b7"};a.charsets.UK=null;a.charsets.US=null;a.charsets.Dutch=null;a.charsets.Finnish=null;a.charsets.French=null;a.charsets.FrenchCanadian=null;a.charsets.German=null;a.charsets.Italian=null;a.charsets.NorwegianDanish=null;a.charsets.Spanish=null;a.charsets.Swedish=null;a.charsets.Swiss=null;a.charsets.ISOLatin=null;var p=this.String,v=this.setTimeout,z=this.setInterval;m._cache={};m.distance=
function(b,a,c,d,e,f){return Math.pow(30*(b-d),2)+Math.pow(59*(a-e),2)+Math.pow(11*(c-f),2)};a.EventEmitter=e;a.inherits=l;a.on=h;a.off=k;a.cancel=f;"undefined"!==typeof module?module.exports=a:this.Terminal=a}).call(function(){return this||("undefined"!==typeof window?window:global)}());var Util={};Array.prototype.push8=function(e){this.push(e&255)};Array.prototype.push16=function(e){this.push(e>>8&255,e&255)};Array.prototype.push32=function(e){this.push(e>>24&255,e>>16&255,e>>8&255,e&255)};Array.prototype.map||(Array.prototype.map=function(e,a){var h=this.length;if("function"!=typeof e)throw new TypeError;for(var k=Array(h),f=0;f<h;f++)f in this&&(k[f]=e.call(a,this[f],f,this));return k});
window.requestAnimFrame=function(){return window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame||window.oRequestAnimationFrame||window.msRequestAnimationFrame||function(e){window.setTimeout(e,1E3/60)}}();Util._log_level="warn";
Util.init_logging=function(e){"undefined"===typeof e?e=Util._log_level:Util._log_level=e;"undefined"===typeof window.console&&(window.console="undefined"!==typeof window.opera?{log:window.opera.postError,warn:window.opera.postError,error:window.opera.postError}:{log:function(a){},warn:function(a){},error:function(a){}});Util.Debug=Util.Info=Util.Warn=Util.Error=function(a){};switch(e){case "debug":Util.Debug=function(a){console.log(a)};case "info":Util.Info=function(a){console.log(a)};case "warn":Util.Warn=
function(a){console.warn(a)};case "error":Util.Error=function(a){console.error(a)};case "none":break;default:throw"invalid logging type '"+e+"'";}};Util.get_logging=function(){return Util._log_level};Util.init_logging();
Util.conf_default=function(e,a,h,k,f,l,u,q){var m,t;m=function(a){return l in{arr:1,array:1}&&"undefined"!==typeof a?e[k][a]:e[k]};t=function(a,f){l in{"boolean":1,bool:1}?a=!a||a in{0:1,no:1,"false":1}?!1:!0:l in{integer:1,"int":1}?a=parseInt(a,10):"str"===l?a=String(a):"func"===l&&(a||(a=function(){}));"undefined"!==typeof f?e[k][f]=a:e[k]=a};a[k+"_description"]=q;"undefined"===typeof a["get_"+k]&&(a["get_"+k]=m);"undefined"===typeof a["set_"+k]&&(a["set_"+k]=function(a,h){if(f in{RO:1,ro:1})throw k+
" is read-only";if(f in{WO:1,wo:1}&&"undefined"!==typeof e[k])throw k+" can only be set once";t(a,h)});"undefined"!==typeof h[k]?u=h[k]:l in{arr:1,array:1}&&!(u instanceof Array)&&(u=[]);t(u)};Util.conf_defaults=function(e,a,h,k){var f;for(f=0;f<k.length;f++)Util.conf_default(e,a,h,k[f][0],k[f][1],k[f][2],k[f][3],k[f][4])};Util.get_include_uri=function(){return"undefined"!==typeof INCLUDE_URI?INCLUDE_URI:"include/"};Util._loading_scripts=[];Util._pending_scripts=[];
Util.load_scripts=function(e){for(var a=document.getElementsByTagName("head")[0],h,k=Util._loading_scripts,f=Util._pending_scripts,l=0;l<e.length;l++)h=document.createElement("script"),h.type="text/javascript",h.src=Util.get_include_uri()+e[l],h.onload=h.onreadystatechange=function(e){for(;0<k.length&&("loaded"===k[0].readyState||"complete"===k[0].readyState);)e=k.shift(),a.appendChild(e);if((!this.readyState||Util.Engine.presto&&"loaded"===this.readyState||"complete"===this.readyState)&&0<=f.indexOf(this)&&
(this.onload=this.onreadystatechange=null,f.splice(f.indexOf(this),1),0===f.length&&window.onscriptsload))window.onscriptsload()},Util.Engine.trident?k.push(h):(h.async=!1,a.appendChild(h)),f.push(h)};Util.getPosition=function(e){var a=0,h=0;if(e.offsetParent){do a+=e.offsetLeft,h+=e.offsetTop,e=e.offsetParent;while(e)}return{x:a,y:h}};
Util.getEventPosition=function(e,a,h){var k,f;e=e?e:window.event;e=e.changedTouches?e.changedTouches[0]:e.touches?e.touches[0]:e;if(e.pageX||e.pageY)k=e.pageX,f=e.pageY;else if(e.clientX||e.clientY)k=e.clientX+document.body.scrollLeft+document.documentElement.scrollLeft,f=e.clientY+document.body.scrollTop+document.documentElement.scrollTop;a=Util.getPosition(a);"undefined"===typeof h&&(h=1);return{x:(k-a.x)/h,y:(f-a.y)/h}};
Util.addEvent=function(e,a,h){if(e.attachEvent)return e.attachEvent("on"+a,h);if(e.addEventListener)return e.addEventListener(a,h,!1),!0;throw"Handler could not be attached";};Util.removeEvent=function(e,a,h){if(e.detachEvent)return e.detachEvent("on"+a,h);if(e.removeEventListener)return e.removeEventListener(a,h,!1),!0;throw"Handler could not be removed";};Util.stopEvent=function(e){e.stopPropagation?e.stopPropagation():e.cancelBubble=!0;e.preventDefault?e.preventDefault():e.returnValue=!1};
Util.Features={xpath:!!document.evaluate,air:!!window.runtime,query:!!document.querySelector};
Util.Engine={presto:function(){return window.opera?!0:!1}(),trident:function(){return window.ActiveXObject?window.XMLHttpRequest?document.querySelectorAll?6:5:4:!1}(),webkit:function(){try{return navigator.taintEnabled?!1:Util.Features.xpath?Util.Features.query?525:420:419}catch(e){return!1}}(),gecko:function(){return document.getBoxObjectFor||null!=window.mozInnerScreenX?document.getElementsByClassName?19:18:!1}()};
Util.Engine.webkit&&(Util.Engine.webkit=function(e){e=(navigator.userAgent.match(/WebKit\/([0-9.]*) /)||["",e])[1];return parseFloat(e,10)}(Util.Engine.webkit));Util.Flash=function(){var e;try{e=navigator.plugins["Shockwave Flash"].description}catch(a){try{e=(new ActiveXObject("ShockwaveFlash.ShockwaveFlash")).GetVariable("$version")}catch(h){e="0 r0"}}e=e.match(/\d+/g);return{version:parseInt(e[0]||"0."+e[1],10)||0,build:parseInt(e[2],10)||0}}();window.WebSocket&&!window.WEB_SOCKET_FORCE_FLASH?Websock_native=!0:window.MozWebSocket&&!window.WEB_SOCKET_FORCE_FLASH?(Websock_native=!0,window.WebSocket=window.MozWebSocket):(Websock_native=!1,function(){window.WEB_SOCKET_SWF_LOCATION=Util.get_include_uri()+"web-socket-js/WebSocketMain.swf";Util.Engine.trident&&(Util.Debug("Forcing uncached load of WebSocketMain.swf"),window.WEB_SOCKET_SWF_LOCATION+="?"+Math.random());Util.load_scripts(["web-socket-js/swfobject.js","web-socket-js/web_socket.js"])}());
function Websock(){function e(){return q.length-m}function a(){0!==l.bufferedAmount&&Util.Debug("bufferedAmount: "+l.bufferedAmount);if(l.bufferedAmount<f.maxBufferedAmount)return 0<t.length&&(l.send("binary"===u?(new Uint8Array(t)).buffer:Base64.encode(t)),t=[]),!0;Util.Info("Delaying send, bufferedAmount: "+l.bufferedAmount);return!1}function h(a){try{var f=a.data;if("binary"===u){var h=new Uint8Array(f);for(a=0;a<h.length;a++)q.push(h[a])}else q=q.concat(Base64.decode(f,0));0<e()?(r.message(),
1E4<q.length&&(q=q.slice(m),m=0)):Util.Debug("Ignoring empty message")}catch(b){"undefined"!==typeof b.stack?Util.Warn("recv_message, caught exception: "+b.stack):"undefined"!==typeof b.description?Util.Warn("recv_message, caught exception: "+b.description):Util.Warn("recv_message, caught exception:"+b),"undefined"!==typeof b.name?r.error(b.name+": "+b.message):r.error(b)}}function k(a,e){q=[];m=0;t=[];l=null;var f=!1,b=!1;"Uint8Array"in window&&"set"in Uint8Array.prototype&&(f=!0);try{f&&("binaryType"in
WebSocket.prototype||(new WebSocket(e+"://.")).binaryType)&&(Util.Info("Detected binaryType support in WebSockets"),b=!0)}catch(h){}"undefined"===typeof a&&(a=b?["binary","base64"]:"base64");if(!b){if("binary"===a)throw"WebSocket binary sub-protocol requested but not supported";if("object"===typeof a){f=[];for(b=0;b<a.length;b++)"binary"===a[b]?Util.Error("Skipping unsupported WebSocket binary sub-protocol"):f.push(a[b]);if(0<f.length)a=f;else throw"Only WebSocket binary sub-protocol was requested and not supported.";
}}return a}var f={},l=null,u="base64",q=[],m=0,t=[],r={message:function(){},open:function(){},close:function(){},error:function(){}},w=!1;f.maxBufferedAmount=200;f.get_sQ=function(){return t};f.get_rQ=function(){return q};f.get_rQi=function(){return m};f.set_rQi=function(a){m=a};f.rQlen=e;f.rQpeek8=function(){return q[m]};f.rQshift8=function(){return q[m++]};f.rQunshift8=function(a){0===m?q.unshift(a):(--m,q[m]=a)};f.rQshift16=function(){return(q[m++]<<8)+q[m++]};f.rQshift32=function(){return(q[m++]<<
24)+(q[m++]<<16)+(q[m++]<<8)+q[m++]};f.rQshiftStr=function(a){"undefined"===typeof a&&(a=e());var f=q.slice(m,m+a);m+=a;return String.fromCharCode.apply(null,f)};f.rQshiftBytes=function(a){"undefined"===typeof a&&(a=e());m+=a;return q.slice(m-a,m)};f.rQslice=function(a,e){return e?q.slice(m+a,m+e):q.slice(m+a)};f.rQwait=function(a,e,f){if(q.length-m<e){if(f){if(m<f)throw"rQwait cannot backup "+f+" bytes";m-=f}return!0}return!1};f.flush=a;f.send=function(e){t=t.concat(e);return a()};f.send_string=
function(a){f.send(a.split("").map(function(a){return a.charCodeAt(0)}))};f.on=function(a,e){r[a]=e};f.init=k;f.open=function(a,e){var f=a.match(/^([a-z]+):\/\//)[1];e=k(e,f);w?l={}:(l=new WebSocket(a,e),0<=e.indexOf("binary")&&(l.binaryType="arraybuffer"));l.onmessage=h;l.onopen=function(){Util.Debug(">> WebSock.onopen");l.protocol?(u=l.protocol,Util.Info("Server chose sub-protocol: "+l.protocol)):(u="base64",Util.Error("Server select no sub-protocol!: "+l.protocol));r.open();Util.Debug("<< WebSock.onopen")};
l.onclose=function(a){Util.Debug(">> WebSock.onclose");r.close(a);Util.Debug("<< WebSock.onclose")};l.onerror=function(a){Util.Debug(">> WebSock.onerror: "+a);r.error(a);Util.Debug("<< WebSock.onerror")}};f.close=function(){if(l){if(l.readyState===WebSocket.OPEN||l.readyState===WebSocket.CONNECTING)Util.Info("Closing WebSocket connection"),l.close();l.onmessage=function(a){}}};f.testMode=function(a,e){w=!0;u=e;f.send=a;f.close=function(){};return h};return f};var WebUtil={},$D;window.$D||(window.$D=function(e){if(document.getElementById)return document.getElementById(e);if(document.all)return document.all[e];if(document.layers)return document.layers[e]});WebUtil.init_logging=function(e){Util._log_level="undefined"!==typeof e?e:(document.location.href.match(/logging=([A-Za-z0-9\._\-]*)/)||["",Util._log_level])[1];Util.init_logging()};
WebUtil.dirObj=function(e,a,h){var k,f="",l="";a||(a=2);h||(h="");for(k in e)1<a&&"object"===typeof e[k]?f+=WebUtil.dirObj(e[k],a-1,h+"."+k):(l="undefined"===typeof e[k]?"undefined":e[k].toString().replace("\n"," "),30<l.length&&(l=l.substr(0,30)+"..."),f+=h+"."+k+": "+l+"\n");return f};WebUtil.getQueryVar=function(e,a){var h=document.location.href.match(new RegExp("[?][^#]*"+e+"=([^&#]*)"));"undefined"===typeof a&&(a=null);return h?decodeURIComponent(h[1]):a};
WebUtil.createCookie=function(e,a,h){var k;h?(k=new Date,k.setTime(k.getTime()+864E5*h),h="; expires="+k.toGMTString()):h="";document.cookie=e+"="+a+h+"; path=/"};WebUtil.readCookie=function(e,a){var h,k,f=e+"=",l=document.cookie.split(";");for(h=0;h<l.length;h+=1){for(k=l[h];" "===k.charAt(0);)k=k.substring(1,k.length);if(0===k.indexOf(f))return k.substring(f.length,k.length)}return"undefined"!==typeof a?a:null};WebUtil.eraseCookie=function(e){WebUtil.createCookie(e,"",-1)};
WebUtil.initSettings=function(e){var a=Array.prototype.slice.call(arguments,1);window.chrome&&window.chrome.storage?window.chrome.storage.sync.get(function(h){WebUtil.settings=h;console.log(WebUtil.settings);e&&e.apply(this,a)}):e&&e.apply(this,a)};WebUtil.writeSetting=function(e,a){window.chrome&&window.chrome.storage?WebUtil.settings[e]!==a&&(WebUtil.settings[e]=a,window.chrome.storage.sync.set(WebUtil.settings)):localStorage.setItem(e,a)};
WebUtil.readSetting=function(e,a){var h;h=window.chrome&&window.chrome.storage?WebUtil.settings[e]:localStorage.getItem(e);"undefined"===typeof h&&(h=null);return null===h&&void 0!==typeof a?a:h};WebUtil.eraseSetting=function(e){window.chrome&&window.chrome.storage?(window.chrome.storage.sync.remove(e),delete WebUtil.settings[e]):localStorage.removeItem(e)};
WebUtil.getStylesheets=function(){var e,a,h=[];a=document.getElementsByTagName("link");for(e=0;e<a.length;e+=1)a[e].title&&-1<a[e].rel.toUpperCase().indexOf("STYLESHEET")&&h.push(a[e]);return h};WebUtil.selectStylesheet=function(e){var a,h,k=WebUtil.getStylesheets();"undefined"===typeof e&&(e="default");for(a=0;a<k.length;a+=1)h=k[a],h.title===e?(Util.Debug("Using stylesheet "+e),h.disabled=!1):h.disabled=!0;return e};
</script>

<style>
#ClientList_Block_PC{
border:1px outset #999;
background-color:#576D73;
position:absolute;
*margin-top:26px;
margin-left:3px;
*margin-left:-129px;
width:255px;
text-align:left;
height:auto;
overflow-y:auto;
z-index:200;
padding: 1px;
display:none;
}
#ClientList_Block_PC div{
background-color:#576D73;
height:auto;
*height:20px;
line-height:20px;
text-decoration:none;
font-family: Lucida Console;
padding-left:2px;
}
#ClientList_Block_PC a{
background-color:#EFEFEF;
color:#FFF;
font-size:12px;
font-family:Arial, Helvetica, sans-serif;
text-decoration:none;
}
#ClientList_Block_PC div:hover, #ClientList_Block a:hover{
background-color:#3366FF;
color:#FFFFFF;
cursor:default;
}
</style>
<script>
function key_event(evt){
if(evt.keyCode != 27 || isMenuopen == 0)
return false;
pullLANIPList(document.getElementById("pull_arrow"));
}

var ws = null, term = null, sQ = [];
function get_appropriate_ws_url() {
    var pcol;
    var u = document.URL;
    /*
     * We open the websocket encrypted if this page came on an
     * https:// url itself, otherwise unencrypted
     */
    if (u.substring(0, 5) == "https") {
       pcol = "wss://";
        u = u.substr(8);
    } else {
        pcol = "ws://";
    if (u.substring(0, 4) == "http")
        u = u.substr(7);
    }
    u = u.split('/')[0];
    if(u.lastIndexOf(":") >= 0) {
	u = u.substr(0, u.lastIndexOf(":"));
    } 
    return pcol + u;
}

function sendBlock() {
  var tv = document.getElementById("textToSend");
  var data = tv.value + "\n";
  var tosend = [];
  for(var i = 0; i < data.length; i++) {
    tosend.push(data.charCodeAt(i));
  }
  ws.send(tosend);
  tv.value = "";
}

function onSubmitCtrl(o, s) {
}

function done_validating(action){
refreshpage();
}

function UploadFile() {
var fullPath = document.getElementById('ss_file').value;
if(!fullPath) {
return;
}

document.getElementById('ss_file_info').style.display = "none";
document.getElementById('loadingicon').style.display = "block";
var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
var filename = fullPath.substring(startIndex);
if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	filename = filename.substring(1);
}
document.form.action="ssupload.cgi?a=/tmp/"+filename;
document.form.enctype = "multipart/form-data";
document.form.encoding = "multipart/form-data";
document.form.submit();
}

function upload_ok(isok) {
var info = document.getElementById('ss_file_info');
if(isok==1){
info.innerHTML="上传完成";
} else {
info.innerHTML="上传失败";
}
info.style.display = "block";
document.getElementById('loadingicon').style.display = "none";
}

function init(){
    show_menu(menu_hook);

    ws = new Websock();
    ws.on('open', function(e) {
      term = new Terminal({
        cols: 105,
        rows: 25,
        useStyle: true,
        screenKeys: true,
        cursorBlink: false
      });

      term.on('data', function(data) {
          var tosend = [];
          for(var i = 0; i < data.length; i++) {
            tosend.push(data.charCodeAt(i));
          }
          ws.send(tosend);
      });

      term.on('title', function(title) {
        document.title = title;
      });

      term.open(document.getElementById("webshell"));

      term.write('\x1b[31mWelcome to WebSell by xiaobao !\x1b[m\r\n');
    });

    ws.on('close', function(e) {
	if (term != null) {
        	term.destroy();
		term = null;
	}
	setTimeout(reconn, 2000);
    });

    ws.on('error', function(e) {
	if (term != null) {
        	term.destroy();
		term = null;
	}
    });

    ws.on('message', function(e) {
        var arr = ws.rQshiftStr();
        term.write(arr);
    });

    //try run first
    tryrun();

    uri = get_appropriate_ws_url() + ":16661/127-0-0-1-23";
    ws.open(uri, "binary");

}

function reconn() {
	console.log("reconn");
    uri = get_appropriate_ws_url() + ":16661/127-0-0-1-23";
    ws.open(uri, "binary");
}

function tryrun() {
    $j.ajax({
        url: 'apply.cgi?current_page=Module_webshell.asp&next_page=Module_webshell.asp&group_id=&modified=0&action_mode=+Refresh+&action_script=&action_wait=&first_time=&preferred_lang=CN&SystemCmd=webshell_config.sh&firmver=3.0.0.4',
        dataType: 'html',
        error: function(xhr) {
		console.log("start failed" + response);
	    },
        success: function(response) {
		console.log("start ok" + response);
        }
    });
}

var enable_ss = "<% nvram_get("enable_ss"); %>";
var enable_soft = "<% nvram_get("enable_soft"); %>";
function menu_hook(title, tab) {
	if(enable_ss == "1" && enable_soft == "1"){
		tabtitle[17] = new Array("", "webshell");
		tablink[17] = new Array("", "Module_webshell.asp");
	}else{
		tabtitle[16] = new Array("", "webshell");
		tablink[16] = new Array("", "Module_webshell.asp");
	}
}

var $j = jQuery.noConflict();
var _responseLen;
var noChange = 0;
var over_var = 0;
var isMenuopen = 0;
function hideClients_Block(evt){
if(typeof(evt) != "undefined"){
if(!evt.srcElement)
evt.srcElement = evt.target; // for Firefox
if(evt.srcElement.id == "pull_arrow" || evt.srcElement.id == "ClientList_Block"){
return;
}
}
$("pull_arrow").src = "/images/arrow-down.gif";
$('ClientList_Block_PC').style.display='none';
isMenuopen = 0;
}
function pullLANIPList(obj){
if(isMenuopen == 0){
obj.src = "/images/arrow-top.gif"
$("ClientList_Block_PC").style.display = 'block';
isMenuopen = 1;
}
else
hideClients_Block();
}
function validForm(){
var is_ok = true;
return is_ok;
}

</script>
</head>
<body onkeydown="key_event(event);" onclick="if(isMenuopen){hideClients_Block(event)}" onload="init();">
<div id="TopBanner"></div>
<div id="Loading" class="popup_bg"></div>
<iframe name="hidden_frame" id="hidden_frame" width="0" height="0" frameborder="0"></iframe>
<form method="POST" name="form" action="/apply.cgi" target="hidden_frame"> 
<input type="hidden" name="current_page" value="Main_SsShell.asp"/>
<input type="hidden" name="next_page" value="Main_SsShell.asp"/>
<input type="hidden" name="group_id" value=""/>
<input type="hidden" name="modified" value="0"/>
<input type="hidden" name="action_mode" value=""/>
<input type="hidden" name="action_script" value=""/>
<input type="hidden" name="action_wait" value=""/>
<input type="hidden" name="first_time" value=""/>
<input type="hidden" name="preferred_lang" id="preferred_lang" value="<% nvram_get("preferred_lang"); %>"/>
<input type="hidden" name="SystemCmd" value=""/>
<input type="hidden" name="firmver" value="<% nvram_get("firmver"); %>"/>
<table class="content" align="center" cellpadding="0" cellspacing="0">
<tr>
<td width="17">&nbsp;</td>
<td valign="top" width="202">
<div id="mainMenu"></div>
<div id="subMenu"></div>
</td>
<td valign="top">
<div id="tabMenu" class="submenuBlock"></div>
<table width="98%" border="0" align="left" cellpadding="0" cellspacing="0">
<tr>
<td align="left" valign="top">
<table width="760px" border="0" cellpadding="5" cellspacing="0" bordercolor="#6b8fa3" class="FormTitle" id="FormTitle">
<tr>
<td bgcolor="#4D595D" colspan="3" valign="top">
<div>&nbsp;</div>
<div class="formfonttitle">WebShell</div>
<div style="margin-left:5px;margin-top:10px;margin-bottom:10px"><img src="/images/New_ui/export/line_export.png"/></div>
<div class="formfontdesc" id="cmdDesc">Shell by <a href="http://www.mjy211.com" target="_blank">@saodneli</a>, web by @Xiaobao</div>
<div style="margin-top:8px">
<div id="webshell">
</div>
<textarea cols="63" rows="3" wrap="off" id="textToSend" style="width:99%; font-family:'Courier New', Courier, mono; font-size:11px;background:#475A5F;color:#FFFFFF;">
</textarea>
<input type="button" id="send" class="button_gen"  onclick='sendBlock();' value="发送命令"/><br/>
<input type="file" id="ss_file" name="file" class="input_option"/>
<input id="upload_btn" class="button_gen" onclick="UploadFile();" type="button" value="上传至/tmp" />
<img id="loadingicon" style="margin-left:5px;display:none;" src="/images/InternetScan.gif"/>
<span id="ss_file_info" style="display:none;">完成</span>
</div>
<div class="apply_gen">
<img id="loadingIcon" style="display:none;" src="/images/InternetScan.gif"/></span>
</div>
<div style="margin-top:8px" id="logArea">
</div>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
<td width="10" align="center" valign="top"></td>
</tr>
</table>
</form>
<div id="footer"></div>
</body>
<script type="text/javascript">
<!--[if !IE]>-->
jQuery.noConflict();
(function($){
var i = 0;
})(jQuery);
<!--<![endif]-->
</script>
</html>

