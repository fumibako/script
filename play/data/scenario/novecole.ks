
;エンブレム取得。
[macro name="give_emblem"]

[iscript]

function give_emb(url,emb_id,pid){
	//配置する場所を設定。
	if(!mp.width){mp.width=500};
	if(!mp.height){mp.height=400};
	if(!mp.left){mp.left=200};
	if(!mp.top){mp.top=100};
	
	var html = '<div style="z-index:999999999999;position:absolute;width:100%;height:100%;background:rgba(45,45,45, 0.5);">';
	html +='<div style="position:absolute;" class="inner_frame">';
	html +='<a class="emblem_close_button" style="z:index:999999;cursor:pointer;color:#777; font-size:36px;position:absolute;right:5px;text-decoration: none;text-shadow: 0 1px 0 #fff;top:5px;">✖</a>';
	html +='<iframe name="emb_frame" style="width:100%;height:100%;" src="" frameborder="0" scrolling="no" ></iframe>';
	html +='</div>';
	html +='</div>';
	
	var j_emb = $(html);
	j_emb.find(".inner_frame").css({
		width:mp.width,
		height:mp.height,
		left:mp.left,
		top:mp.top
	});
	
	j_emb.find(".emblem_close_button").click(function(){
		j_emb.remove();
	});

	$("#tyrano_base").prepend(j_emb);
	
	var j_form = $('<form method="post" action="'+url+'" target="emb_frame"  ></form>');
	j_form.append('<input type="hidden" name="emb_id" value="'+emb_id+'" />');
	j_form.append('<input type="hidden" name="pid" value="'+pid+'" />');
	j_form.append('<input type="hidden" name="pjid" value="'+TG.config.projectID+'" />');
	$("body").append(j_form);
	j_form.submit();
	j_form.remove();
	
} // end function 

//非ログイン時
function give_emb_window(url,emb_id,pid){
	
	window.open("","emb_frame");
  	
	var j_form = $('<form method="post" action="'+url+'" target="emb_frame"  ></form>');
	j_form.append('<input type="hidden" name="emb_id" value="'+emb_id+'" />');
	j_form.append('<input type="hidden" name="pid" value="'+pid+'" />');
	j_form.append('<input type="hidden" name="pjid" value="'+TG.config.projectID+'" />');
	$("body").append(j_form);
	j_form.submit();
	j_form.remove();
	
}

$.ajax({
  type: 'GET',
  url: 'https://novelgame.jp/emb/check_login',
  dataType: 'jsonp',
  jsonpCallback: 'novecole',
  success: function(json){
  	var url = 'https://novelgame.jp/emb/give';
  	
  	if(json.status !="success"){
  		return;
  	}
  	
  	var is_login = json.data.is_login;
  	if(is_login=="true"){
    	give_emb(url,mp.id,mp.pid);
    }else{
    	$.alert("エンブレムを見つけました！",function(){
    		//ログインしていない場合
    		give_emb_window(url,mp.id,mp.pid);
    	});
    	
   	}
  },
  error:function(){
  	return false;
  }
  
});


[endscript]

[endmacro]