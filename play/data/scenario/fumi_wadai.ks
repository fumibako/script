*start

;=============================================
;手紙の話題選択
;=============================================

*wadai_sentaku
;f.wadai_list_hairetsu=[emb exp="f.wadai_list_hairetsu[0][0]"]

[if exp="f.wadai_viewing_target == null"]
	[eval exp="f.wadai_viewing_target = '*fumi_wadai_page1'"]
[endif]
;f.wadai_viewing_target=[emb exp ="f.wadai_viewing_target"][r]
[jump target=&f.wadai_viewing_target]


*fumi_wadai_page1
[cm]
[freeimage layer = 28]
[eval exp="f.wadai_now_page = 1"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page1'"]

[eval exp="f.fumi_wadai_number=f.wadai_list_hairetsu.length"]
[eval exp="f.wadai_selected=''"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
[if exp="f.fumi_wadai_number>10"]
			[glink target=*fumi_wadai_page2 text="→" size=20 width="20" x=890 y=480 color=white]
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
;f.list_count=[emb exp="f.list_count"]
;f.fumi_wadai_y=[emb exp="f.fumi_wadai_y"]
;f.wadai_list_hairetsu0_0=[emb exp="f.wadai_list_hairetsu[0][0]"]
;f.wadai_list_hairetsu49_0=[emb exp="f.wadai_list_hairetsu[49][0]"]
;f.wadai_list_hairetsu=[emb exp="f.wadai_list_hairetsu[f.list_count][0]"]
	[glink storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=16 width="200" x=380 y=&f.fumi_wadai_y color=white]
[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_left
[endif]
;f.wadai_viewing_target=[emb exp ="f.wadai_viewing_target"][r]
[font size=25]
どんな話題に[r]
しましょうか？
;f.fumi_hairetsu1=[emb exp="f.fumi_hairetsu1"]
;f.fumi_hairetsu2=[emb exp="f.fumi_hairetsu2"]

;[emb exp ="f.viewing_target"][r]

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
	[glink storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=16 width="200" x=680 y=&f.fumi_wadai_y color=white]
[endif]
[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right
[endif]
[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
;	[glink storage="fumi_henji.ks" target="*fumi_henji_owari" text="終了" color=gray size=16 width="40" x=880 y=585 color=white]
;	[glink target="*fumi_henji_save" text="保存" color=gray size=16 width="40" x=680 y=585 color=white]
;	[glink target="*fumi_henji_load" text="読込" color=gray size=16 width="40" x=780 y=585 color=white]
[s]
[s]

*fumi_wadai_page2
[cm]
[freeimage layer = 28]
*wadai_serifu
[font size=25]
どんな話題に[r]
しましょうか？
;[emb exp ="f.viewing_target"][r]

[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]

[eval exp="f.wadai_now_page = 2"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page2'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]

			[glink target=*fumi_wadai_page1 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_wadai_number>20"]
			[glink target=*fumi_wadai_page3 text="→" size=20 width="20" x=890 y=480 color=white]
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
	[glink storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=16 width="200" x=380 y=&f.fumi_wadai_y color=white]

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
	[glink storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=16 width="200" x=680 y=&f.fumi_wadai_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page2
[endif]
[endif]

[s]
[s]

*fumi_wadai_page3
[cm]
[freeimage layer = 28]
*wadai_serifu3
[font size=25]
どんな話題に[r]
しましょうか？
;[emb exp ="f.viewing_target"][r]

[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
;	[glink storage="fumi_henji.ks" target="*fumi_henji_owari" text="終了" color=gray size=16 width="40" x=880 y=585 color=white]

[eval exp="f.wadai_now_page = 3"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page3'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink target=*fumi_wadai_page2 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_wadai_number>30"]
		[glink target=*fumi_wadai_page4 text="→" size=20 width="20" x=890 y=480 color=white]
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
	[glink storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=16 width="200" x=380 y=&f.fumi_wadai_y color=white]

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
	[glink storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=16 width="200" x=680 y=&f.fumi_wadai_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page3
[endif]
[endif]
[s]
[s]

*fumi_wadai_page4
[cm]
[freeimage layer = 28]
*wadai_serifu4
[font size=25]
どんな話題に[r]
しましょうか？
;[emb exp ="f.viewing_target"][r]

[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
;	[glink storage="fumi_henji.ks" target="*fumi_henji_owari" text="終了" color=gray size=16 width="40" x=880 y=585 color=white]

[eval exp="f.wadai_now_page = 4"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page4'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink target=*fumi_wadai_page3 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_wadai_number>40"]
		[glink target=*fumi_wadai_page5 text="→" size=20 width="20" x=890 y=480 color=white]
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
	[glink storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=16 width="200" x=380 y=&f.fumi_wadai_y color=white]

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
	[glink storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=16 width="200" x=680 y=&f.fumi_wadai_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page4
[endif]
[endif]
[s]
[s]

*fumi_wadai_page5
[cm]
[freeimage layer = 28]
*wadai_serifu5
[font size=25]
どんな話題に[r]
しましょうか？
;[emb exp ="f.viewing_target"][r]

[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
;	[glink storage="fumi_henji.ks" target="*fumi_henji_owari" text="終了" color=gray size=16 width="40" x=880 y=585 color=white]

[eval exp="f.wadai_now_page = 5"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page5'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink target=*fumi_wadai_page4 text="←" size=20 width="20" x=350 y=480 color=white]
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
	[glink storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=16 width="200" x=380 y=&f.fumi_wadai_y color=white]

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
	[glink storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=16 width="200" x=680 y=&f.fumi_wadai_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page5
[endif]
[endif]
[s]
[s]


*fumi_henji_save

[showsave]
@jump target=*start
[return]

*fumi_henji_load

[showload]
@jump target=*start
[return]

*fumi_henji_owari
[eval exp="f.fumi_henjityu==0"]

[clearfix]
[freeimage layer = 23]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[cm]

@jump storage=info_oaite_fumi.ks target=&f.viewing_target
[s]

;◆選択した話題のNoを振って、好感度処理に繋ぐ
*wadai_shori0
[eval exp = "f.wadai_number = 0"]
[jump target = *wadai_shori_koukando]

*wadai_shori1
[eval exp = "f.wadai_number = 1"]
[jump target = *wadai_shori_koukando]

*wadai_shori2
[eval exp = "f.wadai_number = 2"]
[jump target = *wadai_shori_koukando]

*wadai_shori3
[eval exp = "f.wadai_number = 3"]
[jump target = *wadai_shori_koukando]

*wadai_shori4
[eval exp = "f.wadai_number = 4"]
[jump target = *wadai_shori_koukando]

*wadai_shori5
[eval exp = "f.wadai_number = 5"]
[jump target = *wadai_shori_koukando]

*wadai_shori6
[eval exp = "f.wadai_number = 6"]
[jump target = *wadai_shori_koukando]

*wadai_shori7
[eval exp = "f.wadai_number = 7"]
[jump target = *wadai_shori_koukando]

*wadai_shori8
[eval exp = "f.wadai_number = 8"]
[jump target = *wadai_shori_koukando]

*wadai_shori9
[eval exp = "f.wadai_number = 9"]
[jump target = *wadai_shori_koukando]

*wadai_shori10
[eval exp = "f.wadai_number = 10"]
[jump target = *wadai_shori_koukando]

*wadai_shori11
[eval exp = "f.wadai_number = 11"]
[jump target = *wadai_shori_koukando]

*wadai_shori12
[eval exp = "f.wadai_number = 12"]
[jump target = *wadai_shori_koukando]

*wadai_shori13
[eval exp = "f.wadai_number = 13"]
[jump target = *wadai_shori_koukando]

*wadai_shori14
[eval exp = "f.wadai_number = 14"]
[jump target = *wadai_shori_koukando]

*wadai_shori15
[eval exp = "f.wadai_number = 15"]
[jump target = *wadai_shori_koukando]

*wadai_shori16
[eval exp = "f.wadai_number = 16"]
[jump target = *wadai_shori_koukando]

*wadai_shori17
[eval exp = "f.wadai_number = 17"]
[jump target = *wadai_shori_koukando]

*wadai_shori18
[eval exp = "f.wadai_number = 18"]
[jump target = *wadai_shori_koukando]

*wadai_shori19
[eval exp = "f.wadai_number = 19"]
[jump target = *wadai_shori_koukando]

*wadai_shori20
[eval exp = "f.wadai_number = 20"]
[jump target = *wadai_shori_koukando]

*wadai_shori21
[eval exp = "f.wadai_number = 21"]
[jump target = *wadai_shori_koukando]

*wadai_shori22
[eval exp = "f.wadai_number = 22"]
[jump target = *wadai_shori_koukando]

*wadai_shori23
[eval exp = "f.wadai_number = 23"]
[jump target = *wadai_shori_koukando]

*wadai_shori24
[eval exp = "f.wadai_number = 24"]
[jump target = *wadai_shori_koukando]

*wadai_shori25
[eval exp = "f.wadai_number = 25"]
[jump target = *wadai_shori_koukando]

*wadai_shori26
[eval exp = "f.wadai_number = 26"]
[jump target = *wadai_shori_koukando]

*wadai_shori27
[eval exp = "f.wadai_number = 27"]
[jump target = *wadai_shori_koukando]

*wadai_shori28
[eval exp = "f.wadai_number = 28"]
[jump target = *wadai_shori_koukando]

*wadai_shori29
[eval exp = "f.wadai_number = 29"]
[jump target = *wadai_shori_koukando]

*wadai_shori30
[eval exp = "f.wadai_number = 30"]
[jump target = *wadai_shori_koukando]

*wadai_shori31
[eval exp = "f.wadai_number = 31"]
[jump target = *wadai_shori_koukando]

*wadai_shori32
[eval exp = "f.wadai_number = 32"]
[jump target = *wadai_shori_koukando]

*wadai_shori33
[eval exp = "f.wadai_number = 33"]
[jump target = *wadai_shori_koukando]

*wadai_shori34
[eval exp = "f.wadai_number = 34"]
[jump target = *wadai_shori_koukando]

*wadai_shori35
[eval exp = "f.wadai_number = 35"]
[jump target = *wadai_shori_koukando]

*wadai_shori36
[eval exp = "f.wadai_number = 36"]
[jump target = *wadai_shori_koukando]

*wadai_shori37
[eval exp = "f.wadai_number = 37"]
[jump target = *wadai_shori_koukando]

*wadai_shori38
[eval exp = "f.wadai_number = 38"]
[jump target = *wadai_shori_koukando]

*wadai_shori39
[eval exp = "f.wadai_number = 39"]
[jump target = *wadai_shori_koukando]

*wadai_shori40
[eval exp = "f.wadai_number = 40"]
[jump target = *wadai_shori_koukando]

*wadai_shori41
[eval exp = "f.wadai_number = 41"]
[jump target = *wadai_shori_koukando]

*wadai_shori42
[eval exp = "f.wadai_number = 42"]
[jump target = *wadai_shori_koukando]

*wadai_shori43
[eval exp = "f.wadai_number = 43"]
[jump target = *wadai_shori_koukando]

*wadai_shori44
[eval exp = "f.wadai_number = 44"]
[jump target = *wadai_shori_koukando]

*wadai_shori45
[eval exp = "f.wadai_number = 45"]
[jump target = *wadai_shori_koukando]

*wadai_shori46
[eval exp = "f.wadai_number = 46"]
[jump target = *wadai_shori_koukando]

*wadai_shori47
[eval exp = "f.wadai_number = 47"]
[jump target = *wadai_shori_koukando]

*wadai_shori48
[eval exp = "f.wadai_number = 48"]
[jump target = *wadai_shori_koukando]

*wadai_shori49
[eval exp = "f.wadai_number = 49"]
[jump target = *wadai_shori_koukando]

*wadai_shori50
[eval exp = "f.wadai_number = 50"]
[jump target = *wadai_shori_koukando]

;◆話題Noから話題配列の好感度の部分を呼び出してpre好感度パラメータに代入
*wadai_shori_koukando
[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[iscript]
f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][1]);
f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][2]);
f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][3]);
f.para_pre_jiyuuwaku1_koukando = f.para_pre_jiyuuwaku1_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][4]);
f.para_pre_jiyuuwaku2_koukando = f.para_pre_jiyuuwaku2_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][5]);
[endscript]
;◆話題配列fumi_wadai.csvの6番目要素は話題の距離感を示す。a：最初からokな話題、b:そこそこ仲良くなるまでは引かれる話題、c:かなり仲良くなるまでは引かれる
[if exp = "f.wadai_list_hairetsu[f.wadai_number][6] == 'a'"]
[call target = *wadai_a]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][6] == 'b'"]
[call target = *wadai_b]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][6] == 'c'"]
[call target = *wadai_c]
[endif]
;◆話題配列fumi_wadai.csvの7,8番目要素はその話題を嫌がる攻略対象を示す。(未実装)
/*
[if exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '1'"]
[eval exp = "f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '2'"]
[eval exp = "f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '3'"]
[eval exp = "f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '4'"]
[eval exp = "f.para_pre_jiyuuwaku1_koukando = f.para_pre_jiyuuwaku1_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '5'"]
[eval exp = "f.para_pre_jiyuuwaku2_koukando = f.para_pre_jiyuuwaku2_koukando - 2"]
[endif]
[if exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '1'"]
[eval exp = "f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '2'"]
[eval exp = "f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '3'"]
[eval exp = "f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '4'"]
[eval exp = "f.para_pre_jiyuuwaku1_koukando = f.para_pre_jiyuuwaku1_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '5'"]
[eval exp = "f.para_pre_jiyuuwaku2_koukando = f.para_pre_jiyuuwaku2_koukando - 2"]
[endif]
*/
[jump target=*fumi_kakunin]
[s]

;◆話題a,b,cの判定
*wadai_a
[return]

*wadai_b
[iscript]
if (f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
	f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 1;
}
if (f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 1;
}
if (f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_a'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 1;
}
if (f.para_jiyuuwaku1_koukando < parseInt(sf.jiyuuwaku1['koukando_a'])){
	f.para_pre_jiyuuwaku1_koukando = f.para_pre_jiyuuwaku1_koukando - 1;
}
if (f.para_jiyuuwaku2_koukando < parseInt(sf.jiyuuwaku2['koukando_a'])){
	f.para_pre_jiyuuwaku2_koukando = f.para_pre_jiyuuwaku2_koukando - 1;
}
[endscript]
[return]

*wadai_c
[iscript]
if (f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_b'])){
	f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 1;
}
if (f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_b'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 1;
}
if (f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 1;
}
if (f.para_jiyuuwaku1_koukando < parseInt(sf.jiyuuwaku1['koukando_b'])){
	f.para_pre_jiyuuwaku1_koukando = f.para_pre_jiyuuwaku1_koukando - 1;
}
if (f.para_jiyuuwaku2_koukando < parseInt(sf.jiyuuwaku2['koukando_b'])){
	f.para_pre_jiyuuwaku2_koukando = f.para_pre_jiyuuwaku2_koukando - 1;
}
[endscript]
[return]

;=============================================
;手紙の最終確認
;=============================================
*fumi_kakunin
[cm]
[freeimage layer = 28]
[eval exp="f.fumi_kakunin=1"]
[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[font size=25]
この内容で[r]
よいかしら？
[eval exp="f.fumi_sentaku_binsen = '便せん　：　' + f.binsen_list_hairetsu[f.binsen_number][0]"]
[eval exp="f.fumi_sentaku_gotyou = '文　調　：　' + f.fumi_gotyou"]
[eval exp="f.fumi_sentaku_wadai = '話　題　：　' + f.wadai_list_hairetsu[f.wadai_number][0]"]
	[ptext text=&f.fumi_sentaku_binsen layer=28 size=27 x=350 y=120 color=saddlebrown bold=bold]
		[glink storage="fumi_henji.ks" target=&f.binsen_viewing_target text="変更" size=20 width="40" x=800 y=120 color=white]
	[ptext text=&f.fumi_sentaku_gotyou layer=28 size=27 x=350 y=245 color=saddlebrown bold=bold]
		[glink storage="fumi_henji.ks" target=*gotyou_sentaku text="変更" size=20 width="40" x=800 y=245 color=white]
	[ptext text=&f.fumi_sentaku_wadai layer=28 size=27 x=350 y=370 color=saddlebrown bold=bold]
		[glink target=&f.wadai_viewing_target text="変更" size=20 width="40" x=800 y=370 color=white]
[button folder="fgimage/button" graphic="button_ok100x100.png" target="*fumi_ok" x=450 y=430]

;sf.kuroda'koukando_a'=[emb exp = "sf.kuroda['koukando_a']"][r]
;f.para_pre_kuroda_koukando=[emb exp ="f.para_pre_kuroda_koukando"]
;f.para_pre_zaizen_koukando=[emb exp ="f.para_pre_zaizen_koukando"]
;f.para_pre_sijyou_koukando=[emb exp ="f.para_pre_sijyou_koukando"][r]
;f.para_pre_jiyuuwaku1_koukando=[emb exp ="f.para_pre_jiyuuwaku1_koukando"]
;f.para_pre_jiyuuwaku2_koukando=[emb exp ="f.para_pre_jiyuuwaku2_koukando"]
[s]

*fumi_ok
[eval exp="f.fumi_henjityu=0"]
[eval exp="f.fumi_kakunin=0"]
[eval exp="f.fumi_henji=1"]
[eval exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2]=1"]
[eval exp="f.para_shujinkou_tairyoku_now=f.para_shujinkou_tairyoku_now-f.fumi_hituyou_tairyoku"]
[eval exp="f.para_shujinkou_kiryoku_now=f.para_shujinkou_kiryoku_now-f.fumi_hituyou_kiryoku"]
[iscript]
if (f.fumi_atesaki == 'kuroda'){
	f.para_kuroda_koukando = f.para_kuroda_koukando + f.para_pre_kuroda_koukando;
	f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi-1;
	f.kuroda_fumi_wadai_tyokuzen=f.wadai_list_hairetsu[f.wadai_number][0];
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '趣味について'){ //話題「趣味について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
		if(f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_shumi=f.kuroda_fumi_toutyakumachi;
		}
		if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_shumi=f.kuroda_fumi_toutyakumachi - 1;
		}
		if(f.para_kuroda_koukando > parseInt(sf.kuroda['koukando_b'])){
			f.kuroda_fumi_toutyakumachi_shumi=f.kuroda_fumi_toutyakumachi - 2;
		}
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '家族について'){ //話題「家族について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
		if(f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_kazoku=f.kuroda_fumi_toutyakumachi + 1; //家族の話題は黒田が苦手なのであまり親しくないと返事が1週遅い
		}
		if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_kazoku=f.kuroda_fumi_toutyakumachi - 1;
		}
		if(f.para_kuroda_koukando > parseInt(sf.kuroda['koukando_b'])){
			f.kuroda_fumi_toutyakumachi_kazoku=f.kuroda_fumi_toutyakumachi - 2;
		}
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '友人の話題'){ //話題No.3「友人の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
		if(f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_yuujin=f.kuroda_fumi_toutyakumachi - 1;//友人の話題は黒田の好きな話題なので、届くのが1週早い
		}
		if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_yuujin=f.kuroda_fumi_toutyakumachi - 1 - 1;
		}
		if(f.para_kuroda_koukando > parseInt(sf.kuroda['koukando_b'])){
			f.kuroda_fumi_toutyakumachi_yuujin=f.kuroda_fumi_toutyakumachi - 2 - 1;
		}
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '新茶の話題'){ //「新茶の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
			f.kuroda_fumi_toutyakumachi_sintya=0;//季節ものの話題なので翌週届く
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == 'さつきの話題'){ //「さつきの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
			f.kuroda_fumi_toutyakumachi_satuki=0;//季節ものの話題なので翌週届く
	}
}
if (f.fumi_atesaki == 'zaizen'){
	f.para_zaizen_koukando = f.para_zaizen_koukando + f.para_pre_zaizen_koukando;
	f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi-1;
	f.zaizen_fumi_wadai_tyokuzen=f.wadai_list_hairetsu[f.wadai_number][0];
}
if (f.fumi_atesaki == 'sijyou'){
	f.para_sijyou_koukando = f.para_sijyou_koukando + f.para_pre_sijyou_koukando;
	f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi-1;
	f.sijyou_fumi_wadai_tyokuzen=f.wadai_list_hairetsu[f.wadai_number][0];
}
if (f.fumi_atesaki == 'jiyuuwaku1'){
	f.para_jiyuuwaku1_koukando = f.para_jiyuuwaku1_koukando + f.para_pre_jiyuuwaku1_koukando;
	f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi-1;
	f.jiyuuwaku1_fumi_wadai_tyokuzen=f.wadai_list_hairetsu[f.wadai_number][0];
}
if (f.fumi_atesaki == 'jiyuuwaku2'){
	f.para_jiyuuwaku2_koukando = f.para_jiyuuwaku2_koukando + f.para_pre_jiyuuwaku2_koukando;
	f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi-1;
	f.jiyuuwaku2_fumi_wadai_tyokuzen=f.wadai_list_hairetsu[f.wadai_number][0];
}
[endscript]
[cm]
[freeimage layer = 28]
[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[chara_mod name="A_mayu" storage="girl/L/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_niko.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=70 width=700 height=550 top=47 page=fore margint="50"]
[font size=25]
手紙を出しました
[wait time=1000]
[jump storage="fumi_henji.ks" target=*fumi_henji_owari]
[s]
