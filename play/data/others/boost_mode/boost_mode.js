if( sutdioOverdrive === undefined ){
    var sutdioOverdrive = {};
}
if( sutdioOverdrive.tyrano === undefined ){
    sutdioOverdrive.tyrano = {};
}
if( sutdioOverdrive.tyrano.kag === undefined ){
    sutdioOverdrive.tyrano.kag = {};
}
if( sutdioOverdrive.tyrano.kag.stat === undefined ){
    sutdioOverdrive.tyrano.kag.stat = {};
}
sutdioOverdrive.tyrano.kag.stat.is_boost_mode = false;

tyrano.plugin.kag.tag.text.showMessage = function (message_str) {
        var that = this;
//以下の一行を、バックログ機能用に追加。アオイサクラ様より助言いただきました
	this.kag.pushBackLog(message_str);
        that.kag.ftag.hideNextImg();
        (function (jtext) {
            if (jtext.html() == "") jtext.append("<p class=''></p>");
            var _message_str = message_str;
            var current_str = "";
            if (jtext.find("p").find(".current_span").length !=
                0) current_str = jtext.find("p").find(".current_span").html();
            var index = 0;
            that.kag.checkMessage(jtext);
            var j_span = that.kag.getMessageCurrentSpan();
            j_span.css("color", that.kag.stat.font.color).css("font-weight", that.kag.stat.font.bold).css("font-size", that.kag.stat.font.size + "px").css("font-family", that.kag.stat.font.face);
	if (that.kag.stat.is_skip == true){sutdioOverdrive.tyrano.kag.stat.is_boost_mode = false;}
            // boost_modeが効いてる時は1文字ずつ表示ではなくテキスト全てを一気に表示させる
            if(sutdioOverdrive.tyrano.kag.stat.is_boost_mode == true){
//            if(that.kag.stat.is_nowait == true){
                var str = _message_str;
                if (that.kag.stat.ruby_str != "") {
                    str = "<ruby><rb>" + _message_str.substring(0, 1) + "</rb><rt>" + that.kag.stat.ruby_str + "</rt></ruby>" + _message_str.substring(1, _message_str.length);
                    that.kag.stat.ruby_str = ""
                }
                current_str += str;
                that.kag.appendMessage(jtext, current_str);
                that.kag.stat.is_adding_text = false;
                that.kag.stat.is_click_text = false;
                if (that.kag.stat.is_stop != "true"){
                	that.kag.ftag.nextOrder();
                } else {
                }
                if (that.kag.stat.flag_glyph == "false") {
                    $(".img_next").remove();
                    jtext.find("p").append("<img class='img_next' src='./tyrano/images/kag/nextpage.gif' />")
                } else {
                    $("#glyph_image").show()
                }
                return;
            }
            var pchar = function (pchar) {
                var c = _message_str.substring(index, ++index);
                if (that.kag.stat.ruby_str != "") {
                    c = "<ruby><rb>" + c + "</rb><rt>" + that.kag.stat.ruby_str + "</rt></ruby>";
                    that.kag.stat.ruby_str =
                        ""
                }
                current_str += c;
                that.kag.appendMessage(jtext, current_str);
                if (index <= _message_str.length) {
                    that.kag.stat.is_adding_text = true;
                    if (that.kag.stat.is_click_text == true || that.kag.stat.is_skip == true || that.kag.stat.is_nowait == true) setTimeout(function () {
                        pchar(pchar)
                    }, 0);
                    else setTimeout(function () {
                        pchar(pchar)
                    }, that.kag.stat.ch_speed)
                } else {
                    that.kag.stat.is_adding_text = false;
                    that.kag.stat.is_click_text = false;
                    if (that.kag.stat.is_stop != "true") that.kag.ftag.nextOrder();
                    else; if (that.kag.stat.flag_glyph == "false") {
                        $(".img_next").remove();
                        jtext.find("p").append("<img class='img_next' src='./tyrano/images/kag/nextpage.gif' />")
                    } else $("#glyph_image").show()
                }
            };
            pchar(pchar)
        })(this.kag.getMessageInnerLayer())
    };
tyrano.plugin.kag.tag.text.showMessageVertical = function (message_str) {
        var that = this;
        that.kag.ftag.hideNextImg();
        (function (jtext) {
            if (jtext.html() == "") jtext.append("<p class='vertical_text'></p>");
            var _message_str = message_str;
            var current_str = "";
            if (jtext.find("p").find(".current_span").length != 0) current_str = jtext.find("p").find(".current_span").html();
            var index =
                0;
            that.kag.checkMessage(jtext);
            var j_span = that.kag.getMessageCurrentSpan();
            j_span.css("color", that.kag.stat.font.color).css("font-weight", that.kag.stat.font.bold).css("font-size", that.kag.stat.font.size + "px").css("font-family", that.kag.stat.font.face);
	if (that.kag.stat.is_skip == true){sutdioOverdrive.tyrano.kag.stat.is_boost_mode = false;}
            // boost_modeが効いてる時は1文字ずつ表示ではなくテキスト全てを一気に表示させる
            if(sutdioOverdrive.tyrano.kag.stat.is_boost_mode == true){
//            if(that.kag.stat.is_nowait == true){
                var str = _message_str;
                if (that.kag.stat.ruby_str != "") {
                    str = "<ruby><rb>" + _message_str.substring(0, 1) + "</rb><rt>" + that.kag.stat.ruby_str + "</rt></ruby>" + _message_str.substring(1, _message_str.length);
                    that.kag.stat.ruby_str = ""
                }
                current_str += str;
                that.kag.appendMessage(jtext, current_str);
                that.kag.stat.is_adding_text = false;
                that.kag.stat.is_click_text = false;
                if (that.kag.stat.is_stop != "true"){
                	that.kag.ftag.nextOrder();
                } else {
                }
                if (that.kag.stat.flag_glyph == "false") {
                    $(".img_next").remove();
                    jtext.find("p").append("<img class='img_next' src='./tyrano/images/kag/nextpage.gif' />")
                } else {
                    $("#glyph_image").show()
                }
                return;
            }
            var pchar = function (pchar) {
                var c = _message_str.substring(index, ++index);
                if (that.kag.stat.ruby_str != "") {
                    c = "<ruby><rb>" + c + "</rb><rt>" + that.kag.stat.ruby_str + "</rt></ruby>";
                    that.kag.stat.ruby_str = ""
                }
                current_str += c;
                that.kag.appendMessage(jtext, current_str);
                if (index <= _message_str.length) {
                    that.kag.stat.is_adding_text = true;
                    if (that.kag.stat.is_click_text == true || that.kag.stat.is_skip == true) setTimeout(function () {
                        pchar(pchar)
                    }, 0);
                    else setTimeout(function () {
                        pchar(pchar)
                    }, that.kag.stat.ch_speed)
                } else {
                    that.kag.stat.is_adding_text = false;
                    that.kag.stat.is_click_text = false;
                    that.kag.ftag.nextOrder();
                    if (that.kag.stat.flag_glyph == "false") {
                        $(".img_next").remove();
                        jtext.find("p").append("<img class='img_next' src='./tyrano/images/kag/nextpage.gif' />")
                    } else $("#glyph_image").show()
                }
            };
            pchar(pchar)
        })(this.kag.getMessageInnerLayer())
    };
