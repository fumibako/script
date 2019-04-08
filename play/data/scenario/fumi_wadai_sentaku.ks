;=============================================
;手紙の話題選択
;=============================================
*wadai_sentaku
;f.wadai_list_hairetsu=[emb exp="f.wadai_list_hairetsu[0][0]"][p]
[一斉表示準備]
[if exp="f.wadai_viewing_target == null"]
	[eval exp="f.wadai_viewing_target = '*fumi_wadai_page1'"]
[endif]

[if exp="f.wadai_list_hairetsu === 'undefined'"]
　;手紙の話題リスト（初期話題）を読込んで配列f.wadai_list_hairetsu[i][j]に格納。
　;[i]部分が話題の種類
　;[j]部分が話題の属性(好感度増減値)を示す(0=話題の種類名、1=黒田、2=財前、3=華織、4=葛城宮 晴仁、5=藤枝　肇、6=好適距離a最初からok,b好感度20以上でok、c好感度50以上でok、7、8=その話題が苦手なキャラ、9、10=その話題を好むキャラ)
　[iscript]
　$.get("./data/scenario/fumi_wadai.csv", function(data){
　//読み込まれたファイル

	f.wadai_list_moto = data;
	f.wadai_list_shurui = [];
	f.wadai_list_shurui = data.split("\n");
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_wadai_list_shurui"}); 
　});
　[endscript]
　[s]
*complete_load_wadai_list_shurui

[endif]
;f.wadai_viewing_target=[emb exp ="f.wadai_viewing_target"][r]
[jump target=&f.wadai_viewing_target]

*fumi_wadai_page1
[clearfix]
[cm]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
[freeimage layer = 28]
[eval exp="f.wadai_now_page = 1"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page1'"]

[eval exp="f.fumi_wadai_number=f.wadai_list_hairetsu.length"]
[eval exp="f.wadai_selected=''"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
[if exp="f.fumi_wadai_number>10"]
			[glink name="list" storage="fumi_wadai_sentaku.ks" target=*fumi_wadai_page2 text="　" size=20 width="20" x=870 y=480 graphic="button_tugi.png" font_color=black]
[endif]
[eval exp="f.list_count = f.fumi_wadai_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_wadai_left
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_wadai_y = ( 10 + 80 * f.fumi_wadai_number ) - 80 * f.list_count;
[endscript]
	[eval exp="f.wadai_selected = '*wadai_shori'+f.list_count"]
	[glink name="list" storage="fumi_wadai_shori.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=380 y=&f.fumi_wadai_y graphic="select_waku_x500.png" font_color=black]
[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_left
[endif]

[eval exp="f.list_count = f.fumi_wadai_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_wadai_right
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_wadai_y =  10 + 80 * (f.fumi_wadai_number - 5)  - 80 * f.list_count;
[endscript]
;[emb exp ="f.list_count"][r]

	[eval exp="f.wadai_selected = '*wadai_shori'+f.list_count"]
[if exp="f.fumi_wadai_number>5"]
	[glink name="list" storage="fumi_wadai_shori.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=680 y=&f.fumi_wadai_y graphic="select_waku_x500.png" font_color=black]
[endif]
[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right
[endif]
@jump storage="fumi_wadai_hyouji_end.ks" target="*fumi_wadai_hyouji_end"
[s]
[s]

*fumi_wadai_page2
[clearfix]
[cm]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
[freeimage layer = 28]
*wadai_serifu

[eval exp="f.wadai_now_page = 2"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page2'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]

			[glink name="list" storage="fumi_wadai_sentaku.ks" target=*fumi_wadai_page1 text="　" size=20 width="20" x=350 y=480 graphic="button_modoru.png" font_color=black]
[if exp="f.fumi_wadai_number>20"]
			[glink name="list" storage="fumi_wadai_sentaku.ks" target=*fumi_wadai_page3 text="　" size=20 width="20" x=870 y=480 graphic="button_tugi.png" font_color=black]
[endif]
[eval exp="f.list_count = f.fumi_wadai_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_wadai_left_page2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_wadai_y =  10 + 80 *( f.fumi_wadai_number - 10 ) - 80 * f.list_count;
[endscript]
;f.fumi_wadai_y＝[emb exp ="f.fumi_wadai_y"][r]

	[eval exp="f.wadai_selected = '*wadai_shori'+f.list_count"]
	[glink name="list" storage="fumi_wadai_shori.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=380 y=&f.fumi_wadai_y graphic="select_waku_x500.png" font_color=black]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_left_page2
[endif]
[if exp="f.fumi_wadai_number > 15"]
[eval exp="f.list_count = f.fumi_wadai_number - 15"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_wadai_right_page2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_wadai_y =  10 + 80 * (f.fumi_wadai_number - 15)  - 80 * f.list_count;
[endscript]
;[emb exp ="f.list_count"][r]

	[eval exp="f.wadai_selected = '*wadai_shori'+f.list_count"]
[if exp="f.fumi_wadai_number>15"]
	[glink name="list" storage="fumi_wadai_shori.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=680 y=&f.fumi_wadai_y graphic="select_waku_x500.png" font_color=black]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page2
[endif]
[endif]
@jump storage="fumi_wadai_hyouji_end.ks" target="*fumi_wadai_hyouji_end"
[s]
[s]

*fumi_wadai_page3
[clearfix]
[cm]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
[freeimage layer = 28]
*wadai_serifu3

[eval exp="f.wadai_now_page = 3"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page3'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink name="list" storage="fumi_wadai_sentaku.ks" target=*fumi_wadai_page2 text="　" size=20 width="20" x=350 y=480 graphic="button_modoru.png" font_color=black]
[if exp="f.fumi_wadai_number>30"]
		[glink name="list" storage="fumi_wadai_sentaku.ks" target=*fumi_wadai_page4 text="　" size=20 width="20" x=870 y=480 graphic="button_tugi.png" font_color=black]
[endif]
[eval exp="f.list_count = f.fumi_wadai_number - 20"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_wadai_left_page3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_wadai_y =  10 + 80 *( f.fumi_wadai_number - 20 ) - 80 * f.list_count;
[endscript]
;f.fumi_wadai_y＝[emb exp ="f.fumi_wadai_y"][r]

	[eval exp="f.wadai_selected = '*wadai_shori'+f.list_count"]
	[glink name="list" storage="fumi_wadai_shori.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=380 y=&f.fumi_wadai_y graphic="select_waku_x500.png" font_color=black]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_left_page3
[endif]
[if exp="f.fumi_wadai_number > 25"]
[eval exp="f.list_count = f.fumi_wadai_number - 25"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_wadai_right_page3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_wadai_y =  10 + 80 * (f.fumi_wadai_number - 25)  - 80 * f.list_count;
[endscript]
;[emb exp ="f.list_count"][r]

	[eval exp="f.wadai_selected = '*wadai_shori'+f.list_count"]
[if exp="f.fumi_wadai_number>25"]
	[glink name="list" storage="fumi_wadai_shori.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=680 y=&f.fumi_wadai_y graphic="select_waku_x500.png" font_color=black]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page3
[endif]
[endif]
@jump storage="fumi_wadai_hyouji_end.ks" target="*fumi_wadai_hyouji_end"
[s]
[s]

*fumi_wadai_page4
[clearfix]
[cm]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
[freeimage layer = 28]
*wadai_serifu4

[eval exp="f.wadai_now_page = 4"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page4'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink name="list" storage="fumi_wadai_sentaku.ks" target=*fumi_wadai_page3 text=" " size=20 width="20" x=350 y=480 graphic="button_modoru.png" font_color=black]
[if exp="f.fumi_wadai_number>40"]
		[glink name="list" storage="fumi_wadai_sentaku.ks" target=*fumi_wadai_page5 text=" " size=20 width="20" x=890 y=480 graphic="button_tugi.png" font_color=black]
[endif]
[eval exp="f.list_count = f.fumi_wadai_number - 30"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_wadai_left_page4
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_wadai_y =  10 + 80 *( f.fumi_wadai_number - 30 ) - 80 * f.list_count;
[endscript]
;f.fumi_wadai_y＝[emb exp ="f.fumi_wadai_y"][r]

	[eval exp="f.wadai_selected = '*wadai_shori'+f.list_count"]
	[glink name="list" storage="fumi_wadai_shori.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=380 y=&f.fumi_wadai_y graphic="select_waku_x500.png" font_color=black]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_left_page4
[endif]
[if exp="f.fumi_wadai_number > 35"]
[eval exp="f.list_count = f.fumi_wadai_number - 35"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_wadai_right_page4
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_wadai_y =  10 + 80 * (f.fumi_wadai_number - 35)  - 80 * f.list_count;
[endscript]
;[emb exp ="f.list_count"][r]

	[eval exp="f.wadai_selected = '*wadai_shori'+f.list_count"]
[if exp="f.fumi_wadai_number>35"]
	[glink name="list" storage="fumi_wadai_shori.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=680 y=&f.fumi_wadai_y graphic="select_waku_x500.png" font_color=black]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page4
[endif]
[endif]
@jump storage="fumi_wadai_hyouji_end.ks" target="*fumi_wadai_hyouji_end"
[s]
[s]

*fumi_wadai_page5
[clearfix]
[cm]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
[freeimage layer = 28]
*wadai_serifu5

[eval exp="f.wadai_now_page = 5"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page5'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink name="list" storage="fumi_wadai_sentaku.ks" target=*fumi_wadai_page4 text="　" size=20 width="20" x=350 y=480 graphic="button_modoru.png" font_color=black]
[eval exp="f.list_count = f.fumi_wadai_number - 40"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_wadai_left_page5
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_wadai_y =  10 + 80 *( f.fumi_wadai_number - 40 ) - 80 * f.list_count;
[endscript]
;f.fumi_wadai_y＝[emb exp ="f.fumi_wadai_y"][r]


	[eval exp="f.wadai_selected = '*wadai_shori'+f.list_count"]
	[glink name="list" storage="fumi_wadai_shori.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=380 y=&f.fumi_wadai_y graphic="select_waku_x500.png" font_color=black]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_left_page5
[endif]
[if exp="f.fumi_wadai_number > 45"]
[eval exp="f.list_count = f.fumi_wadai_number - 45"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_wadai_right_page5
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_wadai_y =  10 + 80 * (f.fumi_wadai_number - 45)  - 80 * f.list_count;
[endscript]
;[emb exp ="f.list_count"][r]

	[eval exp="f.wadai_selected = '*wadai_shori'+f.list_count"]
[if exp="f.fumi_wadai_number>45"]
	[glink name="list" storage="fumi_wadai_shori.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=680 y=&f.fumi_wadai_y graphic="select_waku_x500.png" font_color=black]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page5
[endif]
[endif]
@jump storage="fumi_wadai_hyouji_end.ks" target="*fumi_wadai_hyouji_end"
[s]
[s]
