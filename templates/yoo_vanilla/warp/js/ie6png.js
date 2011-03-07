/**
* DD_belatedPNG: Adds IE6 support: PNG images for CSS background-image and HTML <IMG/>.
* URL: http://www.dillerdesign.com/experiment/DD_belatedPNG/
* Version: 0.0.7a
**/

var DD_belatedPNG={ns:"DD_belatedPNG",imgSize:{},createVmlNameSpace:function(){if(document.namespaces&&!document.namespaces[this.ns]){document.namespaces.add(this.ns,"urn:schemas-microsoft-com:vml")}if(window.attachEvent){window.attachEvent("onbeforeunload",function(){DD_belatedPNG=null})}},createVmlStyleSheet:function(){var a=document.createElement("style");document.documentElement.firstChild.insertBefore(a,document.documentElement.firstChild.firstChild);var b=a.styleSheet;b.addRule(this.ns+"\\:*","{behavior:url(#default#VML)}");b.addRule(this.ns+"\\:shape","position:absolute;");b.addRule("img."+this.ns+"_sizeFinder","behavior:none; border:none; position:absolute; z-index:-1; top:-10000px; visibility:hidden;");this.styleSheet=b},readPropertyChange:function(){var b=event.srcElement;if(event.propertyName.search("background")!=-1||event.propertyName.search("border")!=-1){DD_belatedPNG.applyVML(b)}if(event.propertyName=="style.display"){var c=(b.currentStyle.display=="none")?"none":"block";for(var a in b.vml){b.vml[a].shape.style.display=c}}if(event.propertyName.search("filter")!=-1){DD_belatedPNG.vmlOpacity(b)}},vmlOpacity:function(b){if(b.currentStyle.filter.search("lpha")!=-1){var a=b.currentStyle.filter;a=parseInt(a.substring(a.lastIndexOf("=")+1,a.lastIndexOf(")")),10)/100;b.vml.color.shape.style.filter=b.currentStyle.filter;b.vml.image.fill.opacity=a}},handlePseudoHover:function(a){setTimeout(function(){DD_belatedPNG.applyVML(a)},1)},fix:function(a){var c=a.split(",");for(var b=0;b<c.length;b++){this.styleSheet.addRule(c[b],"behavior:expression(DD_belatedPNG.fixPng(this))")}},applyVML:function(a){a.runtimeStyle.cssText="";this.vmlFill(a);this.vmlOffsets(a);this.vmlOpacity(a);if(a.isImg){this.copyImageBorders(a)}},attachHandlers:function(g){var d=this;var c={resize:"vmlOffsets",move:"vmlOffsets"};if(g.nodeName=="A"){var e={mouseleave:"handlePseudoHover",mouseenter:"handlePseudoHover",focus:"handlePseudoHover",blur:"handlePseudoHover"};for(var b in e){c[b]=e[b]}}for(var f in c){g.attachEvent("on"+f,function(){d[c[f]](g)})}g.attachEvent("onpropertychange",this.readPropertyChange)},giveLayout:function(a){a.style.zoom=1;if(a.currentStyle.position=="static"){a.style.position="relative"}},copyImageBorders:function(b){var c={borderStyle:true,borderWidth:true,borderColor:true};for(var a in c){b.vml.color.shape.style[a]=b.currentStyle[a]}},vmlFill:function(e){if(!e.currentStyle){return}else{var d=e.currentStyle}for(var c in e.vml){e.vml[c].shape.style.zIndex=d.zIndex}e.runtimeStyle.backgroundColor="";e.runtimeStyle.backgroundImage="";var a=(d.backgroundColor=="transparent");var f=true;if(d.backgroundImage!="none"||e.isImg){if(!e.isImg){e.vmlBg=d.backgroundImage;e.vmlBg=e.vmlBg.substr(5,e.vmlBg.lastIndexOf('")')-5)}else{e.vmlBg=e.src}var g=this;if(!g.imgSize[e.vmlBg]){var b=document.createElement("img");g.imgSize[e.vmlBg]=b;b.className=g.ns+"_sizeFinder";b.runtimeStyle.cssText="behavior:none; position:absolute; left:-10000px; top:-10000px; border:none;";b.attachEvent("onload",function(){this.width=this.offsetWidth;this.height=this.offsetHeight;g.vmlOffsets(e)});b.src=e.vmlBg;b.removeAttribute("width");b.removeAttribute("height");document.body.insertBefore(b,document.body.firstChild)}e.vml.image.fill.src=e.vmlBg;f=false}e.vml.image.fill.on=!f;e.vml.image.fill.color="none";e.vml.color.shape.style.backgroundColor=d.backgroundColor;e.runtimeStyle.backgroundImage="none";e.runtimeStyle.backgroundColor="transparent"},vmlOffsets:function(d){var h=d.currentStyle;var o={W:d.clientWidth+1,H:d.clientHeight+1,w:this.imgSize[d.vmlBg].width,h:this.imgSize[d.vmlBg].height,L:d.offsetLeft,T:d.offsetTop,bLW:d.clientLeft,bTW:d.clientTop};var a=(o.L+o.bLW==1)?1:0;var e=function(b,p,q,c,s,u){b.coordsize=c+","+s;b.coordorigin=u+","+u;b.path="m0,0l"+c+",0l"+c+","+s+"l0,"+s+" xe";b.style.width=c+"px";b.style.height=s+"px";b.style.left=p+"px";b.style.top=q+"px"};e(d.vml.color.shape,(o.L+(d.isImg?0:o.bLW)),(o.T+(d.isImg?0:o.bTW)),(o.W-1),(o.H-1),0);e(d.vml.image.shape,(o.L+o.bLW),(o.T+o.bTW),(o.W),(o.H),1);var g={X:0,Y:0};var n=function(p,b){var c=true;switch(b){case"left":case"top":g[p]=0;break;case"center":g[p]=0.5;break;case"right":case"bottom":g[p]=1;break;default:if(b.search("%")!=-1){g[p]=parseInt(b)*0.01}else{c=false}}var q=(p=="X");g[p]=Math.ceil(c?((o[q?"W":"H"]*g[p])-(o[q?"w":"h"]*g[p])):parseInt(b));if(g[p]==0){g[p]++}};for(var j in g){n(j,h["backgroundPosition"+j])}d.vml.image.fill.position=(g.X/o.W)+","+(g.Y/o.H);var m=h.backgroundRepeat;var f={T:1,R:o.W+a,B:o.H,L:1+a};var l={X:{b1:"L",b2:"R",d:"W"},Y:{b1:"T",b2:"B",d:"H"}};if(m!="repeat"){var i={T:(g.Y),R:(g.X+o.w),B:(g.Y+o.h),L:(g.X)};if(m.search("repeat-")!=-1){var k=m.split("repeat-")[1].toUpperCase();i[l[k].b1]=1;i[l[k].b2]=o[l[k].d]}if(i.B>o.H){i.B=o.H}d.vml.image.shape.style.clip="rect("+i.T+"px "+(i.R+a)+"px "+i.B+"px "+(i.L+a)+"px)"}else{d.vml.image.shape.style.clip="rect("+f.T+"px "+f.R+"px "+f.B+"px "+f.L+"px)"}},fixPng:function(b){b.style.behavior="none";if(b.nodeName=="BODY"||b.nodeName=="TD"||b.nodeName=="TR"){return}b.isImg=false;if(b.nodeName=="IMG"){if(b.src.toLowerCase().search(/\.png$/)!=-1){b.isImg=true;b.style.visibility="hidden"}else{return}}else{if(b.currentStyle.backgroundImage.toLowerCase().search(".png")==-1){return}}var g=DD_belatedPNG;b.vml={color:{},image:{}};var a={shape:{},fill:{}};for(var c in b.vml){for(var f in a){var d=g.ns+":"+f;b.vml[c][f]=document.createElement(d)}b.vml[c].shape.stroked=false;b.vml[c].shape.appendChild(b.vml[c].fill);b.parentNode.insertBefore(b.vml[c].shape,b)}b.vml.image.shape.fillcolor="none";b.vml.image.fill.type="tile";b.vml.color.fill.on=false;g.attachHandlers(b);g.giveLayout(b);g.giveLayout(b.offsetParent);g.applyVML(b)}};try{document.execCommand("BackgroundImageCache",false,true)}catch(r){}DD_belatedPNG.createVmlNameSpace();DD_belatedPNG.createVmlStyleSheet();
