;↓読み込み不良対策。お稽古パート中なら話題選択ボタンを表示せず戻る
*where_are_you
[if exp="f.viewing_storage == 'okeiko.ks'"]
	@jump storage=okeiko.ks target=*draw_button_system
[endif]

;↓読み込み不良対策。終了処理ラベルを最初に読み込む
*fumi_henji_owari
[eval exp="f.fumi_henjityu==0"]

[clearfix]
[wait time=10]
[freeimage layer = 23]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[wait time=10]
[cm]
[wait time=10]

@jump storage=info_oaite_fumi.ks target=&f.viewing_target
[s]

*start

;=============================================
;手紙の話題選択
;=============================================

*wadai_sentaku
;f.wadai_list_hairetsu=[emb exp="f.wadai_list_hairetsu[0][0]"]
[一斉表示準備]
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
	[ptext name="list" text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
[if exp="f.fumi_wadai_number>10"]
			[glink name="list" target=*fumi_wadai_page2 text="→" size=20 width="20" x=890 y=480 color=white]
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
	[glink name="list" storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=380 y=&f.fumi_wadai_y color=white]
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
	[glink name="list" storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=680 y=&f.fumi_wadai_y color=white]
[endif]
[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right
[endif]
@jump target="*fumi_wadai_hyouji_end"
[s]
[s]

*fumi_wadai_page2
[cm]
[freeimage layer = 28]
*wadai_serifu

[eval exp="f.wadai_now_page = 2"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page2'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]

			[glink name="list" target=*fumi_wadai_page1 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_wadai_number>20"]
			[glink name="list" target=*fumi_wadai_page3 text="→" size=20 width="20" x=890 y=480 color=white]
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
	[glink name="list" storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=380 y=&f.fumi_wadai_y color=white]

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
	[glink name="list" storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=680 y=&f.fumi_wadai_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page2
[endif]
[endif]
@jump target="*fumi_wadai_hyouji_end"
[s]
[s]

*fumi_wadai_page3
[cm]
[freeimage layer = 28]
*wadai_serifu3

[eval exp="f.wadai_now_page = 3"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page3'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink name="list" target=*fumi_wadai_page2 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_wadai_number>30"]
		[glink name="list" target=*fumi_wadai_page4 text="→" size=20 width="20" x=890 y=480 color=white]
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
	[glink name="list" storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=380 y=&f.fumi_wadai_y color=white]

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
	[glink name="list" storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=680 y=&f.fumi_wadai_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page3
[endif]
[endif]
@jump target="*fumi_wadai_hyouji_end"
[s]
[s]

*fumi_wadai_page4
[cm]
[freeimage layer = 28]
*wadai_serifu4

[eval exp="f.wadai_now_page = 4"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page4'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink name="list" target=*fumi_wadai_page3 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_wadai_number>40"]
		[glink name="list" target=*fumi_wadai_page5 text="→" size=20 width="20" x=890 y=480 color=white]
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
	[glink name="list" storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=380 y=&f.fumi_wadai_y color=white]

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
	[glink name="list" storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=680 y=&f.fumi_wadai_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page4
[endif]
[endif]
@jump target="*fumi_wadai_hyouji_end"
[s]
[s]

*fumi_wadai_page5
[cm]
[freeimage layer = 28]
*wadai_serifu5

[eval exp="f.wadai_now_page = 5"]
[eval exp="f.wadai_viewing_target = '*fumi_wadai_page5'"]
[iscript]
f.wadai_max_page = Math.ceil(f.fumi_wadai_number / 10);
f.wadai_page_hyouji = f.wadai_now_page + " ／ " + f.wadai_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.wadai_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink name="list" target=*fumi_wadai_page4 text="←" size=20 width="20" x=350 y=480 color=white]
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
	[glink name="list" storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=380 y=&f.fumi_wadai_y color=white]

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
	[glink name="list" storage="fumi_wadai.ks" target=&f.wadai_selected text=&f.wadai_list_hairetsu[f.list_count][0] size=15 width="200" x=680 y=&f.fumi_wadai_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_wadai_right_page5
[endif]
[endif]
@jump target="*fumi_wadai_hyouji_end"
[s]
[s]


*fumi_wadai_hyouji_end
[font size=25]
どんな話題に[r]
しましょうか？
[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[一斉表示]
[s]

*fumi_henji_save

[showsave]
@jump target=*start
[return]

*fumi_henji_load

[showload]
@jump target=*start
[return]


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
[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[iscript]
f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][1]);
f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][2]);
f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][3]);
f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][4]);
f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + parseInt(f.wadai_list_hairetsu[f.wadai_number][5]);
f.hantei_event_storage = 'parseInt(f.wadai_list_hairetsu[f.wadai_number][2]=' + parseInt(f.wadai_list_hairetsu[f.wadai_number][2]);
[endscript]
;[変数ログ表示]
;[eval exp="f.hantei_event_storage = 'f.wadai_list_hairetsu[f.wadai_number][0]=' + f.wadai_list_hairetsu[f.wadai_number][0]"]
;[変数ログ表示]
;[eval exp="f.hantei_event_storage = 'f.para_pre_zaizen_koukando=' + f.para_pre_zaizen_koukando"]
;[変数ログ表示]
/*
;◆話題配列fumi_wadai.csvの6番目要素は話題の距離感を示す。a：最初からokな話題、b:そこそこ仲良くなるまでは引かれる話題、c:かなり仲良くなるまでは引かれる(話題の好みは一様ではないため一旦実装解除します2017.03.17)
[if exp = "f.wadai_list_hairetsu[f.wadai_number][6] == 'a'"]
[call target = *wadai_a]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][6] == 'b'"]
[call target = *wadai_b]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][6] == 'c'"]
[call target = *wadai_c]
[endif]
;[eval exp="f.hantei_event_storage = 'f.para_pre_zaizen_koukando=' + f.para_pre_zaizen_koukando"]
;[変数ログ表示]

;◆話題配列fumi_wadai.csvの7,8番目要素はその話題を嫌がる攻略対象を示す。(未実装)
[if exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '1'"]
[eval exp = "f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '2'"]
[eval exp = "f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '3'"]
[eval exp = "f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '4'"]
[eval exp = "f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][7] == '5'"]
[eval exp = "f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 2"]
[endif]
[if exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '1'"]
[eval exp = "f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '2'"]
[eval exp = "f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '3'"]
[eval exp = "f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '4'"]
[eval exp = "f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando - 2"]
[elsif exp = "f.wadai_list_hairetsu[f.wadai_number][8] == '5'"]
[eval exp = "f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 2"]
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
if (f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando - 1;
}
if (f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 1;
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
if (f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_b'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando - 1;
}
if (f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 1;
}
[endscript]
[return]

;=============================================
;手紙の最終確認
;=============================================
*fumi_kakunin
[cm]
[freeimage layer = 28]
[一斉表示準備]
[eval exp="f.fumi_kakunin=1"]
[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[font size=25]
この内容で[r]
よいかしら？
[eval exp="f.fumi_sentaku_binsen = '便せん　：　' + f.binsen_list_hairetsu[f.binsen_number][0]"]
[eval exp="f.fumi_sentaku_gotyou = '文　調　：　' + f.fumi_gotyou"]
[eval exp="f.fumi_sentaku_wadai = '話　題　：　' + f.wadai_list_hairetsu[f.wadai_number][0]"]
	[ptext name="list" text=&f.fumi_sentaku_binsen layer=28 size=25 x=350 y=120 color=saddlebrown bold=bold]
		[glink name="list" storage="fumi_henji.ks" target=&f.binsen_viewing_target text="変更" size=20 width="40" x=800 y=120 color=white]
	[ptext name="list" text=&f.fumi_sentaku_gotyou layer=28 size=25 x=350 y=245 color=saddlebrown bold=bold]
		[glink name="list" storage="fumi_henji.ks" target=*gotyou_sentaku text="変更" size=20 width="40" x=800 y=245 color=white]
	[ptext name="list" text=&f.fumi_sentaku_wadai layer=28 size=25 x=350 y=370 color=saddlebrown bold=bold]
		[glink name="list" target=&f.wadai_viewing_target text="変更" size=20 width="40" x=800 y=370 color=white]
[button name="list" folder="fgimage/button" graphic="button_ok100x100.png" target="*fumi_ok" x=450 y=430]
[一斉表示]
;sf.kuroda'koukando_a'=[emb exp = "sf.kuroda['koukando_a']"][r]
;f.para_pre_kuroda_koukando=[emb exp ="f.para_pre_kuroda_koukando"]
;f.para_pre_zaizen_koukando=[emb exp ="f.para_pre_zaizen_koukando"]
;f.para_pre_sijyou_koukando=[emb exp ="f.para_pre_sijyou_koukando"][r]
;f.para_pre_katuraginomiya_koukando=[emb exp ="f.para_pre_katuraginomiya_koukando"]
;f.para_pre_hujieda_koukando=[emb exp ="f.para_pre_hujieda_koukando"]
[s]

*fumi_ok
[if exp="f.fumi_henjityu == 1"]
 [eval exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] = 1"]
[endif]
;「返信」から送らず「手紙を書く」から送った場合でも「一通でも返事をした」扱いとしてフラグに1を入れ5月4週bad回避とする(現実の手紙でも特定の手紙の返事かどうかにかかわらず「返事」扱いとなるため
[eval exp="f.fumi_henji = 1"]
[eval exp="f.fumi_henjityu = 0"]
[eval exp="f.fumi_kakunin = 0"]
[eval exp="f.para_shujinkou_tairyoku_now = f.para_shujinkou_tairyoku_now - f.fumi_hituyou_tairyoku"]
[eval exp="f.para_shujinkou_kiryoku_now = f.para_shujinkou_kiryoku_now - f.fumi_hituyou_kiryoku"]
[iscript]
if (f.fumi_atesaki == 'kuroda'){
	f.para_kuroda_koukando = f.para_kuroda_koukando + f.para_pre_kuroda_koukando;
	f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi-1;
	f.kuroda_fumi_wadai_tyokuzen=f.wadai_list_hairetsu[f.wadai_number][0];
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '趣味について' && f.kuroda_fumi_toutyakumachi_shumi < 0){ //話題「趣味について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
		if(f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_shumi=f.kuroda_fumi_toutyakumachi;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi;
		}
		if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_shumi=f.kuroda_fumi_toutyakumachi - 1;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 1;
		}
		if(f.para_kuroda_koukando > parseInt(sf.kuroda['koukando_b'])){
			f.kuroda_fumi_toutyakumachi_shumi=f.kuroda_fumi_toutyakumachi - 2;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 2;
		}
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '家族について' && f.kuroda_fumi_toutyakumachi_kazoku < 0){ //話題「家族について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
		if(f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_kazoku=f.kuroda_fumi_toutyakumachi + 1; //家族の話題は黒田が苦手なのであまり親しくないと返事が1週遅い
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi + 1;
		}
		if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_kazoku=f.kuroda_fumi_toutyakumachi - 1;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 1;
		}
		if(f.para_kuroda_koukando > parseInt(sf.kuroda['koukando_b'])){
			f.kuroda_fumi_toutyakumachi_kazoku=f.kuroda_fumi_toutyakumachi - 2;
			f.para_kuroda_koukando = f.para_kuroda_koukando + 1; //苦手(-1)だった話題でも大丈夫に(+1)
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 2;
		}
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '友人の話題' && f.kuroda_fumi_toutyakumachi_yuujin < 0){ //話題No.3「友人の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
		if(f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_yuujin=f.kuroda_fumi_toutyakumachi - 1;//友人の話題は黒田の好きな話題なので、届くのが1週早い
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 1;
		}
		if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_yuujin=f.kuroda_fumi_toutyakumachi - 1 - 1;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 2;
		}
		if(f.para_kuroda_koukando > parseInt(sf.kuroda['koukando_b'])){
			f.kuroda_fumi_toutyakumachi_yuujin=f.kuroda_fumi_toutyakumachi - 2 - 1;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 3;
		}
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '将来の話題'){ //「将来の話題」を選択した場合
		if(f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
		}
		if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a'])){
		}
		if(f.para_kuroda_koukando > parseInt(sf.kuroda['koukando_b'])){
			f.para_kuroda_koukando = f.para_kuroda_koukando + 1; //苦手(-1)だった話題でも大丈夫に(+1)
		}
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '新茶の話題'){ //「新茶の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
			f.kuroda_fumi_toutyakumachi_sintya=0;//季節ものの話題なので翌週届く
			f.fumi_wadai_toutyakumachi = 0;
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == 'さつきの話題'){ //「さつきの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
			f.kuroda_fumi_toutyakumachi_satuki=0;//季節ものの話題なので翌週届く
			f.fumi_wadai_toutyakumachi = 0;
	}
}
if (f.fumi_atesaki == 'zaizen'){
	f.para_zaizen_koukando = f.para_zaizen_koukando + f.para_pre_zaizen_koukando;
	f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi-1;
	f.zaizen_fumi_wadai_tyokuzen=f.wadai_list_hairetsu[f.wadai_number][0];

//◆◆話題への返事待ちカウントスタート処理：初期から選べる話題で手紙を送った場合
if(f.wadai_list_hairetsu[f.wadai_number][0] == '趣味について' && f.zaizen_fumi_toutyakumachi_shumi < 0){ //話題「趣味について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){ //sf.zaizen['koukando_a']("01_zaizen_hensuu.ks"にて設定)の数値より好感度が低ければ、↓の週数をカウントにセットします
		f.zaizen_fumi_toutyakumachi_shumi=f.zaizen_fumi_toutyakumachi; //f.zaizen_fumi_toutyakumachi("01_zaizen_hensuu.ks"にて設定)=話題の手紙に対してその攻略対象から返事が来るまでにかかる週数（初期）。
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){//好感度がsf.zaizen['koukando_a']以上なら、初期値より1週少なくセットします
		f.zaizen_fumi_toutyakumachi_shumi=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){//好感度がsf.zaizen['koukando_b']を超えるなら、初期値より2週少なくセットします
		f.zaizen_fumi_toutyakumachi_shumi=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '仕事について' && f.zaizen_fumi_toutyakumachi_sigoto < 0){ //話題「仕事について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_sigoto=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_sigoto=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_sigoto=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '家族について' && f.zaizen_fumi_toutyakumachi_kazoku < 0){ //話題「家族について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){//好感度がsf.zaizen['koukando_a']未満なら、週数カウントに初期値をセットします
		f.zaizen_fumi_toutyakumachi_kazoku=f.zaizen_fumi_toutyakumachi + 1; //家族の話題は苦手なのであまり親しくないと返事が1週遅い、と仮入力しています(最後の"+1"がそれにあたります)
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi + 1;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){//好感度がsf.zaizen['koukando_a']以上なら、初期値より1週少なくセットします(が苦手な話題なので返事が1週遅い)
		f.zaizen_fumi_toutyakumachi_kazoku=f.zaizen_fumi_toutyakumachi - 1 + 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){//好感度がsf.zaizen['koukando_b']を超えるなら、初期値より2週少なくセットします
		f.zaizen_fumi_toutyakumachi_kazoku=f.zaizen_fumi_toutyakumachi - 2;
		f.para_zaizen_koukando = f.para_zaizen_koukando + 1; //苦手(-1)だった話題でも大丈夫に(+1)
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '季節の話題' && f.zaizen_fumi_toutyakumachi_kisetsu < 0){ //「季節の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート。季節の話題はカウント終了時(手紙が来る週)に適した季節が選択されるため、下の"季節ものの話題"とは別扱いとなり好感度に応じた週数の返事待ち期間があります
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_kisetsu=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_kisetsu=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_kisetsu=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '将来について' && f.zaizen_fumi_toutyakumachi_shourai < 0){ //「将来について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_shourai=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_shourai=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_shourai=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

//◆◆話題への返事待ちカウントスタート処理：発生時期の限られる話題で手紙を送った場合【季節ものの話題】

if(f.wadai_list_hairetsu[f.wadai_number][0] == '新茶の話題'){ //「新茶の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	f.zaizen_fumi_toutyakumachi_sintya=0;//季節ものの話題なので翌週届く
	f.fumi_wadai_toutyakumachi = 0;
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'さつきの話題'){ //「さつきの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	f.zaizen_fumi_toutyakumachi_satuki=0;//季節ものの話題なので翌週届く
	f.fumi_wadai_toutyakumachi = 0;
}

//◆◆話題への返事待ちカウントスタート処理：発生時期の限られる話題で手紙を送った場合【季節にこだわりのない話題】

if(f.wadai_list_hairetsu[f.wadai_number][0] == '読書の話題' && f.zaizen_fumi_toutyakumachi_dokusho < 0){ //「読書の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_dokusho=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_dokusho=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_dokusho=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'スポーツの話題' && f.zaizen_fumi_toutyakumachi_sports < 0){ //「スポーツの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_sports=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_sports=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_sports=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '友人の話題' && f.zaizen_fumi_toutyakumachi_yuujin < 0){ //「友人の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_yuujin=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_yuujin=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_yuujin=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '食事の話題' && f.zaizen_fumi_toutyakumachi_shokuji < 0){ //「食事の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_shokuji=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_shokuji=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_shokuji=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '観劇の話題' && f.zaizen_fumi_toutyakumachi_kangeki < 0){ //「観劇の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_kangeki=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_kangeki=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_kangeki=f.zaizen_fumi_toutyakumachi - 2;
		f.para_zaizen_koukando = f.para_zaizen_koukando + 1; //苦手(-1)だった話題でも大丈夫に(+1)
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi + 1;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '猫の話題' && f.zaizen_fumi_toutyakumachi_neko < 0){ //「猫の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_neko=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_neko=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_neko=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '聞き上手と話し上手の話題' && f.zaizen_fumi_toutyakumachi_kiki < 0){ //「聞き上手と話し上手の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_kiki=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_kiki=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_kiki=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '緑の石の話題' && f.zaizen_fumi_toutyakumachi_midori < 0){ //「緑の石の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_midori=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_midori=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_midori=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '写真の話題' && f.zaizen_fumi_toutyakumachi_photo < 0){ //「写真の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_photo=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_photo=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_photo=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '1日のはじまりの話題' && f.zaizen_fumi_toutyakumachi_hajimari < 0){ //「1日のはじまりの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_hajimari=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_hajimari=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_hajimari=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'お気に入りの曲の話題' && f.zaizen_fumi_toutyakumachi_music < 0){ //「お気に入りの曲の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_music=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_music=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_music=f.zaizen_fumi_toutyakumachi - 2;
		f.para_zaizen_koukando = f.para_zaizen_koukando + 1; //苦手(-1)だった話題でも大丈夫に(+1)
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '道の話題' && f.zaizen_fumi_toutyakumachi_michi < 0){ //「道の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_michi=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_michi=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_michi=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '変化と永遠についての話題' && f.zaizen_fumi_toutyakumachi_henka < 0){ //「変化と永遠についての話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_henka=f.zaizen_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi;
	}
	if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])){
		f.zaizen_fumi_toutyakumachi_henka=f.zaizen_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 1;
	}
	if(f.para_zaizen_koukando > parseInt(sf.zaizen['koukando_b'])){
		f.zaizen_fumi_toutyakumachi_henka=f.zaizen_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.zaizen_fumi_toutyakumachi - 2;
	}
}
//テスト用設定：tf.test_zaizen_fumi_hensin_speed==0の場合、全手紙が翌週届く
if(tf.test_zaizen_fumi_hensin_speed == 0){
if(f.zaizen_fumi_toutyakumachi_shumi > 0)f.zaizen_fumi_toutyakumachi_shumi = 0;
if(f.zaizen_fumi_toutyakumachi_sigoto > 0)f.zaizen_fumi_toutyakumachi_sigoto = 0;
if(f.zaizen_fumi_toutyakumachi_kazoku > 0)f.zaizen_fumi_toutyakumachi_kazoku = 0;
if(f.zaizen_fumi_toutyakumachi_kisetsu > 0)f.zaizen_fumi_toutyakumachi_kisetsu = 0;
if(f.zaizen_fumi_toutyakumachi_shourai > 0)f.zaizen_fumi_toutyakumachi_shourai = 0;
if(f.zaizen_fumi_toutyakumachi_yuujin > 0)f.zaizen_fumi_toutyakumachi_yuujin = 0;
if(f.zaizen_fumi_toutyakumachi_shokuji > 0)f.zaizen_fumi_toutyakumachi_shokuji = 0;
if(f.zaizen_fumi_toutyakumachi_kangeki > 0)f.zaizen_fumi_toutyakumachi_kangeki = 0;
if(f.zaizen_fumi_toutyakumachi_neko > 0)f.zaizen_fumi_toutyakumachi_neko = 0;
if(f.zaizen_fumi_toutyakumachi_kiki > 0)f.zaizen_fumi_toutyakumachi_kiki = 0;
if(f.zaizen_fumi_toutyakumachi_midori > 0)f.zaizen_fumi_toutyakumachi_midori = 0;
if(f.zaizen_fumi_toutyakumachi_photo > 0)f.zaizen_fumi_toutyakumachi_photo = 0;
if(f.zaizen_fumi_toutyakumachi_hajimari > 0)f.zaizen_fumi_toutyakumachi_hajimari = 0;
if(f.zaizen_fumi_toutyakumachi_music > 0)f.zaizen_fumi_toutyakumachi_music = 0;
if(f.zaizen_fumi_toutyakumachi_michi > 0)f.zaizen_fumi_toutyakumachi_michi = 0;
if(f.zaizen_fumi_toutyakumachi_henka > 0)f.zaizen_fumi_toutyakumachi_henka = 0;
if(f.zaizen_fumi_toutyakumachi_dokusho > 0)f.zaizen_fumi_toutyakumachi_dokusho = 0;
if(f.zaizen_fumi_toutyakumachi_sports > 0)f.zaizen_fumi_toutyakumachi_sports = 0;
sf.zaizen['fumi_hindo_week'] = 0;
}
}
[endscript]
[if exp="f.fumi_atesaki == 'sijyou'"]
	@jump storage="01_sijyou_fumi_wadai.ks" target=*sijyou_wadai_shori
[endif]
*katuraginomiya_wadai_shori
[iscript]
if (f.fumi_atesaki == 'katuraginomiya'){
	f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + f.para_pre_katuraginomiya_koukando;
	f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi-1;
	f.katuraginomiya_fumi_wadai_tyokuzen=f.wadai_list_hairetsu[f.wadai_number][0];

//◆◆話題への返事待ちカウントスタート処理：初期から選べる話題で手紙を送った場合
if(f.wadai_list_hairetsu[f.wadai_number][0] == '趣味について' && f.katuraginomiya_fumi_toutyakumachi_shumi < 0){ //話題「趣味について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){ //sf.katuraginomiya['koukando_a']("01_katuraginomiya_hensuu.ks"にて設定)の数値より好感度が低ければ、↓の週数をカウントにセットします
		f.katuraginomiya_fumi_toutyakumachi_shumi=f.katuraginomiya_fumi_toutyakumachi; //f.katuraginomiya_fumi_toutyakumachi("01_katuraginomiya_hensuu.ks"にて設定)=話題の手紙に対してその攻略対象から返事が来るまでにかかる週数（初期）。
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){//好感度がsf.katuraginomiya['koukando_a']以上なら、初期値より1週少なくセットします
		f.katuraginomiya_fumi_toutyakumachi_shumi=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){//好感度がsf.katuraginomiya['koukando_b']を超えるなら、初期値より2週少なくセットします
		f.katuraginomiya_fumi_toutyakumachi_shumi=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}
}
[endscript]
[iscript]
if(f.okeiko_month != 13){

if(f.wadai_list_hairetsu[f.wadai_number][0] == '仕事について' && f.katuraginomiya_fumi_toutyakumachi_sigoto < 0){ //話題「仕事について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_sigoto=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_sigoto=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '家族について' && f.katuraginomiya_fumi_toutyakumachi_kazoku < 0){ //話題「家族について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){//好感度がsf.katuraginomiya['koukando_a']未満なら、週数カウントに初期値をセットします
		f.katuraginomiya_fumi_toutyakumachi_kazoku=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kazoku=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_kazoku=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '季節の話題' && f.katuraginomiya_fumi_toutyakumachi_kisetsu < 0){ //「季節の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート。季節の話題はカウント終了時(四条からの手紙が来る週)に適した季節が選択されるため、下の"季節ものの話題"とは別扱いとなり好感度に応じた週数の返事待ち期間があります
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kisetsu=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kisetsu=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_kisetsu=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '将来について' && f.katuraginomiya_fumi_toutyakumachi_shourai < 0){ //「将来について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_shourai=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_shourai=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_shourai=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}


//◆◆話題への返事待ちカウントスタート処理：発生時期の限られる話題で手紙を送った場合【季節ものの話題】

if(f.wadai_list_hairetsu[f.wadai_number][0] == '新茶の話題'){ //「新茶の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	f.katuraginomiya_fumi_toutyakumachi_sintya=0;//季節ものの話題なので翌週届く
	f.fumi_wadai_toutyakumachi = 0;
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'さつきの話題'){ //「さつきの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	f.katuraginomiya_fumi_toutyakumachi_satuki=0;//季節ものの話題なので翌週届く
	f.fumi_wadai_toutyakumachi = 0;
}


//◆◆話題への返事待ちカウントスタート処理：発生時期の限られる話題で手紙を送った場合【季節にこだわりのない話題】

if(f.wadai_list_hairetsu[f.wadai_number][0] == '読書の話題' && f.katuraginomiya_fumi_toutyakumachi_dokusho < 0){ //「読書の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_dokusho=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_dokusho=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_dokusho=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'スポーツの話題' && f.katuraginomiya_fumi_toutyakumachi_sports < 0){ //「スポーツの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_sports=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_sports=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_sports=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '友人の話題' && f.katuraginomiya_fumi_toutyakumachi_yuujin < 0){ //「友人の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_yuujin=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_yuujin=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_yuujin=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '食事の話題' && f.katuraginomiya_fumi_toutyakumachi_shokuji < 0){ //「食事の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_shokuji=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_shokuji=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_shokuji=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '観劇の話題' && f.katuraginomiya_fumi_toutyakumachi_kangeki < 0){ //「観劇の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kangeki=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kangeki=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + 1; //苦手(-2)だった話題でも少し大丈夫に(+1)
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_kangeki=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + 2; //苦手(-2)だった話題でも大丈夫に(+2)
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '猫の話題' && f.katuraginomiya_fumi_toutyakumachi_neko < 0){ //「猫の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_neko=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_neko=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_neko=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '聞き上手と話し上手の話題' && f.katuraginomiya_fumi_toutyakumachi_kiki < 0){ //「聞き上手と話し上手の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kiki=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_kiki=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_kiki=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
	if(f.midoku_list_hairetsu[3][12] = 0){ //'聞き上手と話し上手の話題'1通目が既読なら
		f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + 3; //1通目(-1)の設定を(+2)にするために+3
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '緑の石の話題' && f.katuraginomiya_fumi_toutyakumachi_midori < 0){ //「緑の石の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_midori=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_midori=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_midori=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '写真の話題' && f.katuraginomiya_fumi_toutyakumachi_photo < 0){ //「写真の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_photo=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_photo=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_photo=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '1日のはじまりの話題' && f.katuraginomiya_fumi_toutyakumachi_hajimari < 0){ //「1日のはじまりの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_hajimari=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_hajimari=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_hajimari=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'お気に入りの曲の話題' && f.katuraginomiya_fumi_toutyakumachi_music < 0){ //「お気に入りの曲の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_music=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_music=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_music=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '道の話題' && f.katuraginomiya_fumi_toutyakumachi_michi < 0){ //「道の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_michi=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_michi=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_michi=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '変化と永遠についての話題' && f.katuraginomiya_fumi_toutyakumachi_henka < 0){ //「変化と永遠についての話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_henka=f.katuraginomiya_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi;
	}
	if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
		f.katuraginomiya_fumi_toutyakumachi_henka=f.katuraginomiya_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 1;
	}
	if(f.para_katuraginomiya_koukando > parseInt(sf.katuraginomiya['koukando_b'])){
		f.katuraginomiya_fumi_toutyakumachi_henka=f.katuraginomiya_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.katuraginomiya_fumi_toutyakumachi - 2;
	}
}
//テスト用設定：tf.test_katuraginomiya_fumi_hensin_speed==0の場合、全手紙が翌週届く
if(tf.test_katuraginomiya_fumi_hensin_speed==0){
if(f.katuraginomiya_fumi_toutyakumachi_shumi>0)f.katuraginomiya_fumi_toutyakumachi_shumi=0;
if(f.katuraginomiya_fumi_toutyakumachi_sigoto>0)f.katuraginomiya_fumi_toutyakumachi_sigoto=0;
if(f.katuraginomiya_fumi_toutyakumachi_kazoku>0)f.katuraginomiya_fumi_toutyakumachi_kazoku=0;
if(f.katuraginomiya_fumi_toutyakumachi_kisetsu>0)f.katuraginomiya_fumi_toutyakumachi_kisetsu=0;
if(f.katuraginomiya_fumi_toutyakumachi_shourai>0)f.katuraginomiya_fumi_toutyakumachi_shourai=0;
if(f.katuraginomiya_fumi_toutyakumachi_yuujin>0)f.katuraginomiya_fumi_toutyakumachi_yuujin=0;
if(f.katuraginomiya_fumi_toutyakumachi_shokuji>0)f.katuraginomiya_fumi_toutyakumachi_shokuji=0;
if(f.katuraginomiya_fumi_toutyakumachi_kangeki>0)f.katuraginomiya_fumi_toutyakumachi_kangeki=0;
if(f.katuraginomiya_fumi_toutyakumachi_neko>0)f.katuraginomiya_fumi_toutyakumachi_neko=0;
if(f.katuraginomiya_fumi_toutyakumachi_kiki>0)f.katuraginomiya_fumi_toutyakumachi_kiki=0;
if(f.katuraginomiya_fumi_toutyakumachi_midori>0)f.katuraginomiya_fumi_toutyakumachi_midori=0;
if(f.katuraginomiya_fumi_toutyakumachi_photo>0)f.katuraginomiya_fumi_toutyakumachi_photo=0;
if(f.katuraginomiya_fumi_toutyakumachi_hajimari>0)f.katuraginomiya_fumi_toutyakumachi_hajimari=0;
if(f.katuraginomiya_fumi_toutyakumachi_music>0)f.katuraginomiya_fumi_toutyakumachi_music=0;
if(f.katuraginomiya_fumi_toutyakumachi_michi>0)f.katuraginomiya_fumi_toutyakumachi_michi=0;
if(f.katuraginomiya_fumi_toutyakumachi_henka>0)f.katuraginomiya_fumi_toutyakumachi_henka=0;
if(f.katuraginomiya_fumi_toutyakumachi_dokusho>0)f.katuraginomiya_fumi_toutyakumachi_dokusho=0;
if(f.katuraginomiya_fumi_toutyakumachi_sports>0)f.katuraginomiya_fumi_toutyakumachi_sports=0;
if(f.katuraginomiya_fumi_toutyakumachi_sintya>0)f.katuraginomiya_fumi_toutyakumachi_sintya=0;
if(f.katuraginomiya_fumi_toutyakumachi_satuki>0)f.katuraginomiya_fumi_toutyakumachi_satuki=0;
sf.katuraginomiya['fumi_hindo_week']=0;
}
}

if (f.fumi_atesaki == 'hujieda'){
	f.para_hujieda_koukando = f.para_hujieda_koukando + f.para_pre_hujieda_koukando;
	f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi-1;
	f.hujieda_fumi_wadai_tyokuzen=f.wadai_list_hairetsu[f.wadai_number][0];

//◆◆話題への返事待ちカウントスタート処理：初期から選べる話題で手紙を送った場合
if(f.wadai_list_hairetsu[f.wadai_number][0] == '趣味について' && f.hujieda_fumi_toutyakumachi_shumi < 0){ //話題「趣味について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){ //sf.hujieda['koukando_a']("01_hujieda_hensuu.ks"にて設定)の数値より好感度が低ければ、↓の週数をカウントにセットします
		f.hujieda_fumi_toutyakumachi_shumi=f.hujieda_fumi_toutyakumachi; //f.hujieda_fumi_toutyakumachi("01_hujieda_hensuu.ks"にて設定)=話題の手紙に対してその攻略対象から返事が来るまでにかかる週数（初期）。
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){//好感度がsf.hujieda['koukando_a']以上なら、初期値より1週少なくセットします
		f.hujieda_fumi_toutyakumachi_shumi=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){//好感度がsf.hujieda['koukando_b']を超えるなら、初期値より2週少なくセットします
		f.hujieda_fumi_toutyakumachi_shumi=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '仕事について' && f.hujieda_fumi_toutyakumachi_sigoto < 0){ //話題「仕事について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_sigoto=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_sigoto=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_sigoto=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '家族について' && f.hujieda_fumi_toutyakumachi_kazoku < 0){ //話題「家族について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){ //好感度がsf.hujieda['koukando_a']未満なら、週数カウントに初期値をセットします
		f.hujieda_fumi_toutyakumachi_kazoku=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_kazoku=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_kazoku=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '季節の話題' && f.hujieda_fumi_toutyakumachi_kisetsu < 0){ //「季節の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート。季節の話題はカウント終了時(四条からの手紙が来る週)に適した季節が選択されるため、下の"季節ものの話題"とは別扱いとなり好感度に応じた週数の返事待ち期間があります
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_kisetsu=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_kisetsu=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_kisetsu=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '将来について' && f.hujieda_fumi_toutyakumachi_shourai < 0){ //「将来について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_shourai=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_shourai=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_shourai=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}


//◆◆話題への返事待ちカウントスタート処理：発生時期の限られる話題で手紙を送った場合【季節ものの話題】

if(f.wadai_list_hairetsu[f.wadai_number][0] == '新茶の話題'){ //「新茶の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	f.hujieda_fumi_toutyakumachi_sintya=0;//季節ものの話題なので翌週届く
	f.fumi_wadai_toutyakumachi = 0;
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'さつきの話題'){ //「さつきの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	f.hujieda_fumi_toutyakumachi_satuki=0;//季節ものの話題なので翌週届く
	f.fumi_wadai_toutyakumachi = 0;
}


//◆◆話題への返事待ちカウントスタート処理：発生時期の限られる話題で手紙を送った場合【季節にこだわりのない話題】

if(f.wadai_list_hairetsu[f.wadai_number][0] == '読書の話題' && f.hujieda_fumi_toutyakumachi_dokusho < 0){ //「読書の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_dokusho=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_dokusho=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_dokusho=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'スポーツの話題' && f.hujieda_fumi_toutyakumachi_sports < 0){ //「スポーツの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_sports=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_sports=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_sports=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}
if(f.wadai_list_hairetsu[f.wadai_number][0] == '友人の話題' && f.hujieda_fumi_toutyakumachi_yuujin < 0){ //「友人の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_yuujin=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_yuujin=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_yuujin=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '食事の話題' && f.hujieda_fumi_toutyakumachi_shokuji < 0){ //「食事の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_shokuji=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_shokuji=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_shokuji=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '観劇の話題' && f.hujieda_fumi_toutyakumachi_kangeki < 0){ //「観劇の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_kangeki=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_kangeki=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_kangeki=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '猫の話題' && f.hujieda_fumi_toutyakumachi_neko < 0){ //「猫の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_neko=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_neko=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_neko=f.hujieda_fumi_toutyakumachi - 2;
		f.para_hujieda_koukando = f.para_hujieda_koukando + 1; //苦手(-1)だった話題でも大丈夫に(+1)
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '聞き上手と話し上手の話題' && f.hujieda_fumi_toutyakumachi_kiki < 0){ //「聞き上手と話し上手の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_kiki=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_kiki=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_kiki=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '緑の石の話題' && f.hujieda_fumi_toutyakumachi_midori < 0){ //「緑の石の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_midori=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_midori=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_midori=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '写真の話題' && f.hujieda_fumi_toutyakumachi_photo < 0){ //「写真の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_photo=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_photo=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_photo=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '1日のはじまりの話題' && f.hujieda_fumi_toutyakumachi_hajimari < 0){ //「1日のはじまりの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_hajimari=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_hajimari=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_hajimari=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == 'お気に入りの曲の話題' && f.hujieda_fumi_toutyakumachi_music < 0){ //「お気に入りの曲の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_music=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_music=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_music=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '道の話題' && f.hujieda_fumi_toutyakumachi_michi < 0){ //「道の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_michi=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_michi=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_michi=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}

if(f.wadai_list_hairetsu[f.wadai_number][0] == '変化と永遠についての話題' && f.hujieda_fumi_toutyakumachi_henka < 0){ //「変化と永遠についての話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
	if(f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_henka=f.hujieda_fumi_toutyakumachi;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi;
	}
	if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a'])){
		f.hujieda_fumi_toutyakumachi_henka=f.hujieda_fumi_toutyakumachi - 1;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 1;
	}
	if(f.para_hujieda_koukando > parseInt(sf.hujieda['koukando_b'])){
		f.hujieda_fumi_toutyakumachi_henka=f.hujieda_fumi_toutyakumachi - 2;
		f.fumi_wadai_toutyakumachi = f.hujieda_fumi_toutyakumachi - 2;
	}
}
//テスト用設定：tf.test_hujieda_fumi_hensin_speed==0の場合、全手紙が翌週届く
if(tf.test_hujieda_fumi_hensin_speed==0){
if(f.hujieda_fumi_toutyakumachi_shumi>0)f.hujieda_fumi_toutyakumachi_shumi=0;
if(f.hujieda_fumi_toutyakumachi_sigoto>0)f.hujieda_fumi_toutyakumachi_sigoto=0;
if(f.hujieda_fumi_toutyakumachi_kazoku>0)f.hujieda_fumi_toutyakumachi_kazoku=0;
if(f.hujieda_fumi_toutyakumachi_kisetsu>0)f.hujieda_fumi_toutyakumachi_kisetsu=0;
if(f.hujieda_fumi_toutyakumachi_shourai>0)f.hujieda_fumi_toutyakumachi_shourai=0;
if(f.hujieda_fumi_toutyakumachi_yuujin>0)f.hujieda_fumi_toutyakumachi_yuujin=0;
if(f.hujieda_fumi_toutyakumachi_shokuji>0)f.hujieda_fumi_toutyakumachi_shokuji=0;
if(f.hujieda_fumi_toutyakumachi_kangeki>0)f.hujieda_fumi_toutyakumachi_kangeki=0;
if(f.hujieda_fumi_toutyakumachi_neko>0)f.hujieda_fumi_toutyakumachi_neko=0;
if(f.hujieda_fumi_toutyakumachi_kiki>0)f.hujieda_fumi_toutyakumachi_kiki=0;
if(f.hujieda_fumi_toutyakumachi_midori>0)f.hujieda_fumi_toutyakumachi_midori=0;
if(f.hujieda_fumi_toutyakumachi_photo>0)f.hujieda_fumi_toutyakumachi_photo=0;
if(f.hujieda_fumi_toutyakumachi_hajimari>0)f.hujieda_fumi_toutyakumachi_hajimari=0;
if(f.hujieda_fumi_toutyakumachi_music>0)f.hujieda_fumi_toutyakumachi_music=0;
if(f.hujieda_fumi_toutyakumachi_michi>0)f.hujieda_fumi_toutyakumachi_michi=0;
if(f.hujieda_fumi_toutyakumachi_henka>0)f.hujieda_fumi_toutyakumachi_henka=0;
if(f.hujieda_fumi_toutyakumachi_dokusho>0)f.hujieda_fumi_toutyakumachi_dokusho=0;
if(f.hujieda_fumi_toutyakumachi_sports>0)f.hujieda_fumi_toutyakumachi_sports=0;
if(f.hujieda_fumi_toutyakumachi_sintya>0)f.hujieda_fumi_toutyakumachi_sintya=0;
if(f.hujieda_fumi_toutyakumachi_satuki>0)f.hujieda_fumi_toutyakumachi_satuki=0;
sf.hujieda['fumi_hindo_week']=0;
}
}
[endscript]
[cm]
[freeimage layer = 28]
;↓手紙を出した後は自動で画面が閉じられるため、ボタン類を撤去
;[button name="list" folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[clearfix]
[wait time=10]
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
