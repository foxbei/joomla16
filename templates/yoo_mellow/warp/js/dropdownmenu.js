/* Copyright  2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

(function(e){var m=function(){};e.extend(m.prototype,{name:"dropdownMenu",options:{mode:"default",itemSelector:"li",firstLevelSelector:"li.level1",dropdownSelector:"ul",duration:600,remainTime:800,remainClass:"remain",transition:"easeOutExpo",withopacity:true,centerDropdown:false,reverseAnimation:false,fixWidth:false,fancy:null},initialize:function(i,c){this.options=e.extend({},this.options,c);var a=this,k=null,q=false;this.menu=i;this.dropdowns=[];this.options.withopacity=e.browser.msie&&parseFloat(e.browser.version)<
9?false:this.options.withopacity;if(this.options.fixWidth){var t=5;this.menu.children().each(function(){t+=e(this).width()});this.menu.css("width",t)}this.menu.find(this.options.firstLevelSelector).each(function(j){var g=e(this),h=g.find(a.options.dropdownSelector).css({overflow:"hidden"});if(h.length){h.css("overflow","hidden");var d=e("<div>").data("dpwidth",parseFloat(h.width())).data("dpheight",parseFloat(h.height())).css({overflow:"hidden"}).append("<div></div>"),u=d.find("div:first").css({"min-width":d.data("dpwidth"),
"min-height":d.data("dpheight")});h.children().appendTo(u);d.appendTo(h);a.options.centerDropdown&&h.css("margin-left",(parseFloat(h.css("width"))/2-g.width()/2)*-1);a.dropdowns.push({dropdown:h,div:d,innerdiv:u})}g.bind({mouseenter:function(){q=true;a.menu.trigger("menu:enter",[g,j]);if(k){if(k.index==j)return;k.item.removeClass(a.options.remainClass);k.div.hide()}if(h.length){g.addClass(a.options.remainClass);d.stop().show();var b=d.data("dpwidth"),f=d.data("dpheight");switch(a.options.mode){case "diagonal":var l=
{width:0,height:0};b={width:b,height:f};if(a.options.withopacity){l.opacity=0;b.opacity=1}d.css(l).animate(b,a.options.duration,a.options.transition);break;case "height":l={width:b,height:0};b={height:f};if(a.options.withopacity){l.opacity=0;b.opacity=1}d.css(l).animate(b,a.options.duration,a.options.transition);break;case "width":l={width:0,height:f};b={width:b};if(a.options.withopacity){l.opacity=0;b.opacity=1}d.css(l).animate(b,a.options.duration,a.options.transition);break;case "slide":h.css({width:b,
height:f});d.css({width:b,height:f,"margin-top":f*-1}).animate({"margin-top":0},a.options.duration,a.options.transition);break;default:l={width:b,height:f};b={};if(a.options.withopacity){l.opacity=0;b.opacity=1}d.css(l).animate(b,a.options.duration,a.options.transition)}k={item:g,div:d,index:j}}else k=active=null},mouseleave:function(){q=false;h.length?window.setTimeout(function(){if(!(q||d.css("display")=="none")){a.menu.trigger("menu:leave",[g,j]);var b=function(){g.removeClass(a.options.remainClass);
k=null;d.hide()};if(a.options.reverseAnimation)switch(a.options.mode){case "diagonal":var f={width:0,height:0};if(a.options.withopacity)f.opacity=0;d.stop().animate(f,a.options.duration,a.options.transition,function(){b()});break;case "height":f={height:0};if(a.options.withopacity)f.opacity=0;d.stop().animate(f,a.options.duration,a.options.transition,function(){b()});break;case "width":f={width:0};if(a.options.withopacity)f.opacity=0;d.stop().animate(f,a.options.duration,a.options.transition,function(){b()});
break;case "slide":d.stop().animate({"margin-top":parseFloat(d.data("dpheight"))*-1},a.options.duration,a.options.transition,function(){b()});break;default:f={};if(a.options.withopacity)f.opacity=0;d.stop().animate(f,a.options.duration,a.options.transition,function(){b()})}else b()}},a.options.remainTime):a.menu.trigger("menu:leave")}})});if(this.options.fancy){var n=e.extend({mode:"move",transition:"easeOutExpo",duration:500,onEnter:null,onLeave:null},this.options.fancy),o=this.menu.append('<div class="fancy bg1"><div class="fancy-1"><div class="fancy-2"><div class="fancy-3"></div></div></div></div>').find(".fancy:first").hide(),
p=this.menu.find(".active:first"),r=null,s=function(j,g){if(!(g&&r&&j.get(0)==r.get(0))){o.stop().show().css("visibility","visible");if(n.mode=="move")!p.length&&!g?o.hide():o.animate({left:j.position().left+"px",width:j.width()+"px"},n.duration,n.transition);else g?o.css({opacity:p?0:1,left:j.position().left+"px",width:j.width()+"px"}).animate({opacity:1},n.duration):o.animate({opacity:0},n.duration);r=g?j:null}};this.menu.bind({"menu:enter":function(j,g,h){s(g,true);n.onEnter&&n.onEnter(g,h,o)},
"menu:leave":function(j,g,h){s(p,false);n.onLeave&&n.onLeave(g,h,o)}});p.length&&n.mode=="move"&&s(p,true)}},matchHeight:function(){if(this.menu){this.menu.find("li.level2 div.sub").each(function(){var i=e(this),c=i.parent().find("div.hover-box4:first"),a=Math.max(i.height(),c.height());e([i,c]).each(function(){this.css("height",a)})});this._updateDimensions()}},matchUlHeight:function(){if(this.menu){this.menu.find("div.dropdown-3").each(function(){var i=e(this).children(),c=0;e(i).each(function(){c=
Math.max(e(this).height(),c)});e(i).each(function(){e(this).css("height",c)})});this._updateDimensions()}},_updateDimensions:function(){e(this.dropdowns).each(function(i,c){c.div.stop().show().data({dpwidth:c.innerdiv.width(),dpheight:c.innerdiv.height()}).hide();c.dropdown.css({"min-width":c.div.data("dpwidth"),"min-height":c.div.data("dpheight")})})}});e.fn[m.prototype.name]=function(){var i=arguments,c=i[0]?i[0]:null;return this.each(function(){var a=e(this);if(m.prototype[c]&&a.data(m.prototype.name)&&
c!="initialize")a.data(m.prototype.name)[c].apply(a.data(m.prototype.name),Array.prototype.slice.call(i,1));else if(!c||e.isPlainObject(c)){var k=new m;m.prototype.initialize&&k.initialize.apply(k,e.merge([a],i));a.data(m.prototype.name,k)}else e.error("Method "+c+" does not exist on jQuery."+m.name)})}})(jQuery);
