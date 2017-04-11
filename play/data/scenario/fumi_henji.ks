*start

;=============================================
;手紙を書く
;=============================================
*fumibako_kuroda
[eval exp = "f.fumi_atesaki = 'kuroda'"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumibako_zaizen
[eval exp = "f.fumi_atesaki = 'zaizen'"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumibako_sijyou
[eval exp = "f.fumi_atesaki = 'sijyou'"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumibako_katuraginomiya
[eval exp = "f.fumi_atesaki = 'katuraginomiya'"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumibako_hujieda
[eval exp = "f.fumi_atesaki = 'hujieda'"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_write_hyouji
[clearfix]
[cm]
[freeimage layer = 21]
[freeimage layer = 22]
;[freeimage layer = 23]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]

[freeimage layer = 24]
[freeimage layer = 25]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[layopt layer=25 visible=true]
;背景画像表示【マクロでフリーズしやすいのでchara_modで切り替え】
[if exp="f.fumi_henjityu==1"]
[chara_mod name="bg" storage="bg/plane_sakura.jpg"]
[image layer=25 x=380 y=20 storage="button/fumi_henji.png"]
[image layer=25 x=660 y=20 storage="button/fumi_atena_bg_henji.png"]
[else]
[chara_mod name="bg" storage="bg/plane_mizuiro.jpg"]
[image layer=25 x=380 y=20 storage="button/fumi_write.png"]
[image layer=25 x=660 y=20 storage="button/fumi_atena_bg_write.png"]
[endif]
[wait time=10]
;◆宛名表示
[layopt layer=23 visible=true]
[eval exp = "f.button_atesaki = 'button/fumi_atena_' + f.fumi_atesaki + '.png'"]
[image layer=25 x=660 y=20 storage=&f.button_atesaki]

;主人公画像表示【マクロでフリーズしやすいのでchara_modで切り替え】
;[chara_mod name="A_base" storage="girl/L/base.png" time=0]
;[wait time=10]
;[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
;[wait time=10]
;[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
;[wait time=10]
;[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
;[wait time=10]

;[chara_show left=80 top=30 layer=23 name="sys_fukidasi" time=100]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
;[position left=330 width=500 height=550 top=60 page=fore margint="50"]
[image layer=25 x=30 y=20 storage="button/frame_lesson_fukidasi300.png"]
[wait time=10]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=80 width=700 height=550 top=37 page=fore margint="50"]

[if exp="f.para_shujinkou_tairyoku_now < 1"]
[else]
;【機能ボタン表示】
;*draw_button_system
[locate x=680 y=535]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=780 y=535]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[endif]

[if exp="f.para_shujinkou_kiryoku_now < 5"]
[else]
;【機能ボタン表示】
;*draw_button_system
[locate x=680 y=535]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=780 y=535]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[endif]
[return]

*binsen_sentaku
[if exp="f.para_shujinkou_tairyoku_now < f.fumi_hituyou_tairyoku"]
[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
[wait time=10]
;[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
;[wait time=10]
[font size=25]
今は疲れすぎて[r]
書けないわ……[r]
[font size=20 color=rosybrown]
(必要体力[emb exp="f.fumi_hituyou_tairyoku"] 気力[emb exp="f.fumi_hituyou_kiryoku"])
[s]
[s]
[elsif exp="f.para_shujinkou_kiryoku_now < f.fumi_hituyou_kiryoku"]
[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
[wait time=10]
;[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
;[wait time=10]
[font size=25]
今は疲れすぎて[r]
書けないわ……[r]
[font size=20 color=rosybrown]
(必要体力[emb exp="f.fumi_hituyou_tairyoku"] 気力[emb exp="f.fumi_hituyou_kiryoku"])
[s]
[s]
[else]
@jump target=*binsen_sentaku2
[endif]
[s]
[s]

*binsen_sentaku2

[if exp="f.binsen_viewing_target == null"]
	[eval exp="f.binsen_viewing_target = '*fumi_binsen_page1'"]
[endif]
;f.binsen_viewing_target=[emb exp ="f.binsen_viewing_target"][r]
[jump target=&f.binsen_viewing_target]



*fumi_binsen_page1
[cm]
[freeimage layer = 28]

[eval exp="f.binsen_now_page = 1"]
[eval exp="f.binsen_viewing_target = '*fumi_binsen_page1'"]
;便箋の数
[eval exp="f.fumi_binsen_number=f.binsen_list_hairetsu.length"]
[eval exp="f.binsen_selected=''"]

[iscript]
f.binsen_max_page = Math.ceil(f.fumi_binsen_number / 10);
f.binsen_page_hyouji = f.binsen_now_page + " ／ " + f.binsen_max_page + " 頁";
[endscript]
	[ptext text=&f.binsen_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]

[if exp="f.fumi_binsen_number>10"]
			[glink target=*fumi_binsen_page2 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_binsen_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_binsen_left
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_binsen_y = ( 10 + 80 * f.fumi_binsen_number ) - 80 * f.list_count;
[endscript]

	[eval exp="f.binsen_selected = '*binsen_shori'+f.list_count"]
	[glink storage="fumi_henji.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="200" x=380 y=&f.fumi_binsen_y color=white]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_left
[endif]
;f.binsen_viewing_target=[emb exp ="f.binsen_viewing_target"][r]
[font size=25]
;[r]f.binsen_list_hairetsu.length=[emb exp="f.binsen_list_hairetsu.length"]
;[emb exp="f.wadai_list_hairetsu[4][0]"]、[emb exp="f.wadai_list_hairetsu[4][1]"][r]
;[emb exp="f.wadai_list_hairetsu[5][0]"]、[emb exp="f.wadai_list_hairetsu[5][1]"][r]
どの便せんに[r]
書きましょう？
;f.fumi_hairetsu1=[emb exp="f.fumi_hairetsu1"]
;f.fumi_hairetsu2=[emb exp="f.fumi_hairetsu2"]

;[emb exp ="f.viewing_target"][r]

[eval exp="f.list_count = f.fumi_binsen_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_binsen_right

	[if exp="f.list_count == 0"]
	[else]
		[eval exp="f.list_count = f.list_count - 1"]
	[endif]
	[if exp="f.loop_count == 0"]
	[else]
		[eval exp="f.loop_count = f.loop_count - 1"]
	[endif]
	[iscript]
		f.fumi_binsen_y =  10 + 80 * (f.fumi_binsen_number - 5)  - 80 * f.list_count;
	[endscript]

		[eval exp="f.binsen_selected = '*binsen_shori'+f.list_count"]
[if exp="f.fumi_binsen_number>5"]
		[glink storage="fumi_henji.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="200" x=680 y=&f.fumi_binsen_y color=white]
[endif]
	[if exp="f.loop_count>0"]
		@jump target=*loop_fumi_binsen_right
	[endif]
	[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]

[glink target="repair_binsen" text="磯野を呼ぶ" graphic="select_waku_x500.png" size=16 width="200" x=380 y=550 color=white]

[s]
[s]

*fumi_binsen_page2
[cm]
[freeimage layer = 28]
*binsen_serifu
[font size=25]
どの便せんに[r]
書きましょう？
;[emb exp ="f.viewing_target"][r]

[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]

[eval exp="f.binsen_now_page = 2"]
[eval exp="f.binsen_viewing_target = '*fumi_binsen_page2'"]
[iscript]
f.binsen_max_page = Math.ceil(f.fumi_binsen_number / 10);
f.binsen_page_hyouji = f.binsen_now_page + " ／ " + f.binsen_max_page + " 頁";
[endscript]
	[ptext text=&f.binsen_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]

			[glink target=*fumi_binsen_page1 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_binsen_number>20"]
			[glink target=*fumi_binsen_page3 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_binsen_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_binsen_left_page2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_binsen_y =  10 + 80 *( f.fumi_binsen_number - 10 ) - 80 * f.list_count;
[endscript]
;f.fumi_binsen_y＝[emb exp ="f.fumi_binsen_y"][r]

	[eval exp="f.binsen_selected = '*binsen_shori'+f.list_count"]
	[glink storage="fumi_henji.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="200" x=380 y=&f.fumi_binsen_y color=white]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_left_page2
[endif]
[if exp="f.fumi_binsen_number > 15"]
[eval exp="f.list_count = f.fumi_binsen_number - 15"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_binsen_right_page2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_binsen_y =  10 + 80 * (f.fumi_binsen_number - 15)  - 80 * f.list_count;
[endscript]
;[emb exp ="f.list_count"][r]

	[eval exp="f.binsen_selected = '*binsen_shori'+f.list_count"]
[if exp="f.fumi_binsen_number>15"]
	[glink storage="fumi_henji.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="200" x=680 y=&f.fumi_binsen_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_right_page2
[endif]
[endif]

[s]
[s]

*fumi_binsen_page3
[cm]
[freeimage layer = 28]
*binsen_serifu3
[font size=25]
どの便せんに[r]
書きましょう？
;[emb exp ="f.viewing_target"][r]

[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
;	[glink storage="fumi_henji.ks" target="*fumi_henji_owari" text="終了" color=gray size=16 width="40" x=880 y=585 color=white]

[eval exp="f.binsen_now_page = 3"]
[eval exp="f.binsen_viewing_target = '*fumi_binsen_page3'"]
[iscript]
f.binsen_max_page = Math.ceil(f.fumi_binsen_number / 10);
f.binsen_page_hyouji = f.binsen_now_page + " ／ " + f.binsen_max_page + " 頁";
[endscript]
	[ptext text=&f.binsen_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink target=*fumi_binsen_page2 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_binsen_number>30"]
		[glink target=*fumi_binsen_page4 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_binsen_number - 20"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_binsen_left_page3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_binsen_y =  10 + 80 *( f.fumi_binsen_number - 20 ) - 80 * f.list_count;
[endscript]
;f.fumi_binsen_y＝[emb exp ="f.fumi_binsen_y"][r]

	[eval exp="f.binsen_selected = '*binsen_shori'+f.list_count"]
	[glink storage="fumi_henji.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="200" x=380 y=&f.fumi_binsen_y color=white]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_left_page3
[endif]
[if exp="f.fumi_binsen_number > 25"]
[eval exp="f.list_count = f.fumi_binsen_number - 25"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_binsen_right_page3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_binsen_y =  10 + 80 * (f.fumi_binsen_number - 25)  - 80 * f.list_count;
[endscript]
;[emb exp ="f.list_count"][r]

	[eval exp="f.binsen_selected = '*binsen_shori'+f.list_count"]
[if exp="f.fumi_binsen_number>25"]
	[glink storage="fumi_henji.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="200" x=680 y=&f.fumi_binsen_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_right_page3
[endif]
[endif]
[s]
[s]

*fumi_binsen_page4
[cm]
[freeimage layer = 28]
*binsen_serifu4
[font size=25]
どの便せんに[r]
書きましょう？
;[emb exp ="f.viewing_target"][r]

[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
;	[glink storage="fumi_henji.ks" target="*fumi_henji_owari" text="終了" color=gray size=16 width="40" x=880 y=585 color=white]

[eval exp="f.binsen_now_page = 4"]
[eval exp="f.binsen_viewing_target = '*fumi_binsen_page4'"]
[iscript]
f.binsen_max_page = Math.ceil(f.fumi_binsen_number / 10);
f.binsen_page_hyouji = f.binsen_now_page + " ／ " + f.binsen_max_page + " 頁";
[endscript]
	[ptext text=&f.binsen_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink target=*fumi_binsen_page3 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_binsen_number>40"]
		[glink target=*fumi_binsen_page5 text="→" size=20 width="20" x=890 y=480 color=white]
[endif]
[eval exp="f.list_count = f.fumi_binsen_number - 30"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_binsen_left_page4
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_binsen_y =  10 + 80 *( f.fumi_binsen_number - 30 ) - 80 * f.list_count;
[endscript]
;f.fumi_binsen_y＝[emb exp ="f.fumi_binsen_y"][r]

	[eval exp="f.binsen_selected = '*binsen_shori'+f.list_count"]
	[glink storage="fumi_henji.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="200" x=380 y=&f.fumi_binsen_y color=white]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_left_page4
[endif]
[if exp="f.fumi_binsen_number > 35"]
[eval exp="f.list_count = f.fumi_binsen_number - 35"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_binsen_right_page4
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_binsen_y =  10 + 80 * (f.fumi_binsen_number - 35)  - 80 * f.list_count;
[endscript]
;[emb exp ="f.list_count"][r]

	[eval exp="f.binsen_selected = '*binsen_shori'+f.list_count"]
[if exp="f.fumi_binsen_number>35"]
	[glink storage="fumi_henji.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="200" x=680 y=&f.fumi_binsen_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_right_page4
[endif]
[endif]
[s]
[s]

*fumi_binsen_page5
[cm]
[freeimage layer = 28]
*binsen_serifu5
[font size=25]
どの便せんに[r]
書きましょう？
;[emb exp ="f.viewing_target"][r]

[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
;	[glink storage="fumi_henji.ks" target="*fumi_henji_owari" text="終了" color=gray size=16 width="40" x=880 y=585 color=white]

[eval exp="f.binsen_now_page = 5"]
[eval exp="f.binsen_viewing_target = '*fumi_binsen_page5'"]
[iscript]
f.binsen_max_page = Math.ceil(f.fumi_binsen_number / 10);
f.binsen_page_hyouji = f.binsen_now_page + " ／ " + f.binsen_max_page + " 頁";
[endscript]
	[ptext text=&f.binsen_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink target=*fumi_binsen_page4 text="←" size=20 width="20" x=350 y=480 color=white]
[eval exp="f.list_count = f.fumi_binsen_number - 40"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_binsen_left_page5
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_binsen_y =  10 + 80 *( f.fumi_binsen_number - 40 ) - 80 * f.list_count;
[endscript]
;f.fumi_binsen_y＝[emb exp ="f.fumi_binsen_y"][r]


	[eval exp="f.binsen_selected = '*binsen_shori'+f.list_count"]
	[glink storage="fumi_henji.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="200" x=380 y=&f.fumi_binsen_y color=white]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_left_page5
[endif]
[if exp="f.fumi_binsen_number > 45"]
[eval exp="f.list_count = f.fumi_binsen_number - 45"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_binsen_right_page5
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_binsen_y =  10 + 80 * (f.fumi_binsen_number - 45)  - 80 * f.list_count;
[endscript]
;[emb exp ="f.list_count"][r]

	[eval exp="f.binsen_selected = '*binsen_shori'+f.list_count"]
[if exp="f.fumi_binsen_number>45"]
	[glink storage="fumi_henji.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="200" x=680 y=&f.fumi_binsen_y color=white]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_right_page5
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
[eval exp="f.fumi_henjityu=0"]
[eval exp="f.fumi_kakunin=0"]
[eval exp="f.fumi_atesaki=''"]
[eval exp="f.fumi_hairetsu1=0"]
[eval exp="f.fumi_hairetsu2=0"]

[clearfix]
;[freeimage layer = 23]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[freeimage layer = 25]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[cm]

@jump storage=info_oaite_fumi.ks target=&f.viewing_target
[s]

;◆選択した便箋のNoを振って、好感度処理に繋ぐ
*binsen_shori0
[eval exp = "f.binsen_number = 0"]
[jump target = *binsen_shori_koukando]

*binsen_shori1
[eval exp = "f.binsen_number = 1"]
[jump target = *binsen_shori_koukando]

*binsen_shori2
[eval exp = "f.binsen_number = 2"]
[jump target = *binsen_shori_koukando]

*binsen_shori3
[eval exp = "f.binsen_number = 3"]
[jump target = *binsen_shori_koukando]

*binsen_shori4
[eval exp = "f.binsen_number = 4"]
[jump target = *binsen_shori_koukando]

*binsen_shori5
[eval exp = "f.binsen_number = 5"]
[jump target = *binsen_shori_koukando]

*binsen_shori6
[eval exp = "f.binsen_number = 6"]
[jump target = *binsen_shori_koukando]

*binsen_shori7
[eval exp = "f.binsen_number = 7"]
[jump target = *binsen_shori_koukando]

*binsen_shori8
[eval exp = "f.binsen_number = 8"]
[jump target = *binsen_shori_koukando]

*binsen_shori9
[eval exp = "f.binsen_number = 9"]
[jump target = *binsen_shori_koukando]

*binsen_shori10
[eval exp = "f.binsen_number = 10"]
[jump target = *binsen_shori_koukando]

*binsen_shori11
[eval exp = "f.binsen_number = 11"]
[jump target = *binsen_shori_koukando]

*binsen_shori12
[eval exp = "f.binsen_number = 12"]
[jump target = *binsen_shori_koukando]

*binsen_shori13
[eval exp = "f.binsen_number = 13"]
[jump target = *binsen_shori_koukando]

*binsen_shori14
[eval exp = "f.binsen_number = 14"]
[jump target = *binsen_shori_koukando]

*binsen_shori15
[eval exp = "f.binsen_number = 15"]
[jump target = *binsen_shori_koukando]

*binsen_shori16
[eval exp = "f.binsen_number = 16"]
[jump target = *binsen_shori_koukando]

*binsen_shori17
[eval exp = "f.binsen_number = 17"]
[jump target = *binsen_shori_koukando]

*binsen_shori18
[eval exp = "f.binsen_number = 18"]
[jump target = *binsen_shori_koukando]

*binsen_shori19
[eval exp = "f.binsen_number = 19"]
[jump target = *binsen_shori_koukando]

*binsen_shori20
[eval exp = "f.binsen_number = 20"]
[jump target = *binsen_shori_koukando]

*binsen_shori21
[eval exp = "f.binsen_number = 21"]
[jump target = *binsen_shori_koukando]

*binsen_shori22
[eval exp = "f.binsen_number = 22"]
[jump target = *binsen_shori_koukando]

*binsen_shori23
[eval exp = "f.binsen_number = 23"]
[jump target = *binsen_shori_koukando]

*binsen_shori24
[eval exp = "f.binsen_number = 24"]
[jump target = *binsen_shori_koukando]

*binsen_shori25
[eval exp = "f.binsen_number = 25"]
[jump target = *binsen_shori_koukando]

*binsen_shori26
[eval exp = "f.binsen_number = 26"]
[jump target = *binsen_shori_koukando]

*binsen_shori27
[eval exp = "f.binsen_number = 27"]
[jump target = *binsen_shori_koukando]

*binsen_shori28
[eval exp = "f.binsen_number = 28"]
[jump target = *binsen_shori_koukando]

*binsen_shori29
[eval exp = "f.binsen_number = 29"]
[jump target = *binsen_shori_koukando]

*binsen_shori30
[eval exp = "f.binsen_number = 30"]
[jump target = *binsen_shori_koukando]

*binsen_shori31
[eval exp = "f.binsen_number = 31"]
[jump target = *binsen_shori_koukando]

*binsen_shori32
[eval exp = "f.binsen_number = 32"]
[jump target = *binsen_shori_koukando]

*binsen_shori33
[eval exp = "f.binsen_number = 33"]
[jump target = *binsen_shori_koukando]

*binsen_shori34
[eval exp = "f.binsen_number = 34"]
[jump target = *binsen_shori_koukando]

*binsen_shori35
[eval exp = "f.binsen_number = 35"]
[jump target = *binsen_shori_koukando]

*binsen_shori36
[eval exp = "f.binsen_number = 36"]
[jump target = *binsen_shori_koukando]

*binsen_shori37
[eval exp = "f.binsen_number = 37"]
[jump target = *binsen_shori_koukando]

*binsen_shori38
[eval exp = "f.binsen_number = 38"]
[jump target = *binsen_shori_koukando]

*binsen_shori39
[eval exp = "f.binsen_number = 39"]
[jump target = *binsen_shori_koukando]

*binsen_shori40
[eval exp = "f.binsen_number = 40"]
[jump target = *binsen_shori_koukando]

*binsen_shori41
[eval exp = "f.binsen_number = 41"]
[jump target = *binsen_shori_koukando]

*binsen_shori42
[eval exp = "f.binsen_number = 42"]
[jump target = *binsen_shori_koukando]

*binsen_shori43
[eval exp = "f.binsen_number = 43"]
[jump target = *binsen_shori_koukando]

*binsen_shori44
[eval exp = "f.binsen_number = 44"]
[jump target = *binsen_shori_koukando]

*binsen_shori45
[eval exp = "f.binsen_number = 45"]
[jump target = *binsen_shori_koukando]

*binsen_shori46
[eval exp = "f.binsen_number = 46"]
[jump target = *binsen_shori_koukando]

*binsen_shori47
[eval exp = "f.binsen_number = 47"]
[jump target = *binsen_shori_koukando]

*binsen_shori48
[eval exp = "f.binsen_number = 48"]
[jump target = *binsen_shori_koukando]

*binsen_shori49
[eval exp = "f.binsen_number = 49"]
[jump target = *binsen_shori_koukando]

*binsen_shori50
[eval exp = "f.binsen_number = 50"]
[jump target = *binsen_shori_koukando]

;◆便箋Noから便箋配列の好感度の部分を呼び出してpre好感度パラメータに代入
*binsen_shori_koukando
[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[iscript]
f.para_pre_kuroda_koukando = parseInt(f.binsen_list_hairetsu[f.binsen_number][1]);
f.para_pre_zaizen_koukando = parseInt(f.binsen_list_hairetsu[f.binsen_number][2]);
f.para_pre_sijyou_koukando = parseInt(f.binsen_list_hairetsu[f.binsen_number][3]);
f.para_pre_katuraginomiya_koukando = parseInt(f.binsen_list_hairetsu[f.binsen_number][4]);
f.para_pre_hujieda_koukando = parseInt(f.binsen_list_hairetsu[f.binsen_number][5]);
[endscript]
[eval exp="f.hantei_event_storage = 'parseInt(f.binsen_list_hairetsu[f.binsen_number][2])=' + parseInt(f.binsen_list_hairetsu[f.binsen_number][2])"]
;[変数ログ表示]
[eval exp="f.hantei_event_storage = 'parseInt(f.binsen_list_hairetsu[f.binsen_number][0])=' + f.binsen_list_hairetsu[f.binsen_number][0]"]
;[変数ログ表示]

[if exp = "f.binsen_list_hairetsu[f.binsen_number][6] == f.okeiko_month"]
[call target = *binsen_good_kisetsu]
[elsif exp = "f.binsen_list_hairetsu[f.binsen_number][7] == f.okeiko_month"]
[call target = *binsen_good_kisetsu]
[endif]
[if exp="f.fumi_kakunin==1"]
@jump storage=fumi_wadai.ks target=*fumi_kakunin
[else]
;f.para_pre_kuroda_koukando=[emb exp ="f.para_pre_kuroda_koukando"]
[jump target=*gotyou_sentaku]
[endif]
[s]

;◆便箋csvの配列6,7は便箋の旬の月。その月に便箋を使うと各キャラ本来より好感度+1
*binsen_good_kisetsu
[iscript]
f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando + 1;
f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 1;
f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 1;
f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 1;
f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 1;
[endscript]
[return]

;=============================================
;手紙　語調の選択
;=============================================
*gotyou_sentaku
[cm]
[freeimage layer = 28]
[font size=25]
どんな感じに[r]
書きましょう？
;[emb exp ="f.viewing_target"][r]
[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
	[glink storage="fumi_henji.ks" target=*gotyou_kanketsu text="簡潔に書く" size=16 width="200" x=480 y=150 color=white]
	[glink storage="fumi_henji.ks" target=*gotyou_teinei text="丁寧に書く" size=16 width="200" x=480 y=250 color=white]
	[glink storage="fumi_henji.ks" target=*gotyou_kigaru text="気軽に書く" size=16 width="200" x=480 y=350 color=white]
[s]

*gotyou_kanketsu
[eval exp="f.fumi_gotyou='簡潔に書く'"]
[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[iscript]
f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando;

if (f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 0;
}else if((f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a'])) && (f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_b']))){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 1;
}else if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_b'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 0;
}

if (f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_a'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 0;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_a']) && f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 0;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando - 1;
}

if (f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 2;
}else if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 1;
}

if (f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 2;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a']) && f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando - 1;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 0;
}
[endscript]
[if exp="f.fumi_kakunin==1"]
@jump storage=fumi_wadai.ks target=*fumi_kakunin
[else]
@jump storage=fumi_wadai.ks target=*wadai_sentaku
[endif]
[s]

*gotyou_teinei
[eval exp="f.fumi_gotyou='丁寧に書く'"]
[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[iscript]
f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando + 1;
f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 2;

if (f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_a'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 0;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_a']) && f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 0;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 2;
}

if (f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 0;
}else if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a']) && f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_b'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 1;
}else if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_b'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 2;
}

if (f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 2;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a']) && f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 1;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 2;
}
[endscript]
;f.para_pre_kuroda_koukando=[emb exp ="f.para_pre_kuroda_koukando"]
[if exp="f.fumi_kakunin==1"]
@jump storage=fumi_wadai.ks target=*fumi_kakunin
[else]
@jump storage=fumi_wadai.ks target=*wadai_sentaku
[endif]

[s]

*gotyou_kigaru
[eval exp="f.fumi_gotyou='気軽に書く'"]
[button folder="fgimage/button" graphic="button_close80x80.png" storage="fumi_henji.ks" target="*fumi_henji_owari" x=870 y=555]
[iscript]
if (f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a']) && f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_b'])){
	f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 2;
}else if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a']) && f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_b'])){
	f.para_pre_kuroda_koukando = f.para_pre_kuroda_koukando - 1;
}

if (f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_a'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 3;
}else if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_a']) && f.para_zaizen_koukando < parseInt(sf.zaizen['koukando_b'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando - 2;
}else if(f.para_zaizen_koukando >= parseInt(sf.zaizen['koukando_b'])){
	f.para_pre_zaizen_koukando = f.para_pre_zaizen_koukando + 0;
}

if (f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_a'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 2;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_a']) && f.para_sijyou_koukando < parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 2;
}else if(f.para_sijyou_koukando >= parseInt(sf.sijyou['koukando_b'])){
	f.para_pre_sijyou_koukando = f.para_pre_sijyou_koukando + 2;
}

if (f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_a'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 1;
}else if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_a']) && f.para_katuraginomiya_koukando < parseInt(sf.katuraginomiya['koukando_b'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 2;
}else if(f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_b'])){
	f.para_pre_katuraginomiya_koukando = f.para_pre_katuraginomiya_koukando + 3;
}

if (f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_a'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 1;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_a']) && f.para_hujieda_koukando < parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 2;
}else if(f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_b'])){
	f.para_pre_hujieda_koukando = f.para_pre_hujieda_koukando + 2;
}
[endscript]
[if exp="f.fumi_kakunin==1"]
@jump storage=fumi_wadai.ks target=*fumi_kakunin
[else]
@jump storage=fumi_wadai.ks target=*wadai_sentaku
[endif]

[s]



;=============================================
;手紙　返事
;=============================================

*fumi_henji_0_0
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=0;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_1
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=1;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_2
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=2;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_3
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=3;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_4
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=4;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_5
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=5;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_6
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=6;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_7
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=7;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_8
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=8;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_9
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=9;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_10
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=10;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_11
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=11;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_12
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=12;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_13
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=13;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_14
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=14;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_0_15
[eval exp="f.fumi_atesaki='kuroda'; f.fumi_hairetsu1=0; f.fumi_hairetsu2=15;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]
*fumi_henji_1_0
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=0;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_1
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=1;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_2
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=2;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_3
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=3;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_4
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=4;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_5
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=5;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_6
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=6;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_7
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=7;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_8
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=8;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_9
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=9;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_10
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=10;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_11
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=11;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_12
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=12;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_13
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=13;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_14
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=14;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_15
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=15;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_16
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=16;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_17
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=17;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_18
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=18;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_19
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=19;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_20
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=20;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_21
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=21;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_22
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=22;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_23
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=23;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_24
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=24;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_25
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=25;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_26
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=26;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_27
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=27;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_28
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=28;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_29
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=29;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_30
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=30;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_31
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=31;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_32
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=32;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_1_33
[eval exp="f.fumi_atesaki='zaizen'; f.fumi_hairetsu1=1; f.fumi_hairetsu2=33;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_0
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=0;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_1
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=1;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_2
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=2;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_3
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=3;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_4
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=4;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_5
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=5;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_6
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=6;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_7
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=7;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_8
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=8;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_9
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=9;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_10
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=10;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_11
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=11;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_12
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=12;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_13
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=13;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_14
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=14;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_15
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=15;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]
*fumi_henji_2_16
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=16;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_17
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=17;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_18
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=18;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_19
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=19;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_20
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=20;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_21
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=21;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_22
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=22;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_23
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=23;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_24
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=24;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_25
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=25;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_26
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=26;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_27
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=27;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_28
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=28;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_29
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=29;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_30
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=30;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_31
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=31;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_32
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=32;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_33
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=33;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_34
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=34;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_35
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=35;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_36
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=36;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_37
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=37;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_38
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=38;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_39
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=39;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_40
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=40;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_41
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=41;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_42
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=42;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_43
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=43;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_44
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=44;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_45
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=45;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]
*fumi_henji_2_46
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=46;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_47
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=47;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_48
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=48;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_49
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=49;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_50
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=50;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_51
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=51;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_52
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=52;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_53
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=53;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_54
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=54;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_55
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=55;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_56
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=56;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_57
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=57;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_58
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=58;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_59
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=59;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_60
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=60;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_61
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=61;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_62
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=62;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_63
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=63;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_64
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=64;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_65
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=65;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_66
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=66;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_67
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=67;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_68
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=68;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_69
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=69;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_70
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=70;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_71
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=71;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_72
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=72;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_73
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=73;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_74
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=74;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_75
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=75;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]
*fumi_henji_2_76
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=76;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_77
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=77;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_78
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=78;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_79
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=79;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_80
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=80;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_81
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=81;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_82
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=82;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_83
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=83;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_84
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=84;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_85
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=85;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_86
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=86;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_87
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=87;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_88
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=88;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_89
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=89;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_90
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=90;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_91
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=91;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_92
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=92;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_93
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=93;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_94
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=94;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_95
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=95;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_96
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=96;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_97
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=97;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_98
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=98;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_99
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=99;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_100
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=100;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_101
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=101;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_102
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=102;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_103
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=103;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_104
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=104;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_105
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=105;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]
*fumi_henji_2_106
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=106;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_107
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=107;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_108
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=108;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_109
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=109;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_110
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=110;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_111
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=111;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_112
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=112;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_113
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=113;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_114
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=114;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_115
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=115;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_116
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=116;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_117
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=117;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_118
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=118;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_119
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=119;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_2_120
[eval exp="f.fumi_atesaki='sijyou'; f.fumi_hairetsu1=2; f.fumi_hairetsu2=120;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_0
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=0;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_1
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=1;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_2
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=2;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_3
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=3;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_4
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=4;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_5
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=5;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_6
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=6;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_7
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=7;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_8
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=8;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_9
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=9;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_10
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=10;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_11
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=11;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_12
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=12;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_13
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=13;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_14
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=14;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_15
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=15;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_16
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=16;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_17
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=17;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_18
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=18;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_19
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=19;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_20
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=20;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_21
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=21;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_22
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=22;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_23
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=23;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_24
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=24;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_25
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=25;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_26
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=26;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_27
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=27;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_28
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=28;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_29
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=29;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_30
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=30;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_31
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=31;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_3_32
[eval exp="f.fumi_atesaki='katuraginomiya'; f.fumi_hairetsu1=3; f.fumi_hairetsu2=32;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_0
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=0;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_1
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=1;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_2
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=2;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_3
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=3;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_4
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=4;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_5
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=5;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_6
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=6;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_7
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=7;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_8
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=8;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_9
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=9;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_10
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=10;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_11
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=11;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_12
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=12;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_13
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=13;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_14
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=14;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_15
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=15;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_16
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=16;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_17
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=17;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_18
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=18;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_19
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=19;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_20
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=20;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_21
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=21;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_22
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=22;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_23
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=23;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_24
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=24;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_25
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=25;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_26
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=26;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_27
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=27;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_28
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=28;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_29
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=29;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*fumi_henji_4_30
[eval exp="f.fumi_atesaki='hujieda'; f.fumi_hairetsu1=4; f.fumi_hairetsu2=30;"]
[call target=*fumi_write_hyouji]
@jump target=*binsen_sentaku
[s]

*repair_binsen
[cm]

;選択肢用レイヤーを追加
[position layer=message1 height=500 top=90 left=350 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
【磯野】お嬢様、いかがされましたか？[r][r]
[sp]　　　便せんの具合が悪くなった場合に[r]
[sp]　　　お直しすることができます。[r]
[sp]　　　便せんをお直ししましょうか？[r][r]
[font size=32]
[link target=*repair_binsen_ok][sp]　は　　　い[endlink][r]
[r][r]
[link target=*repair_binsen_no][sp]　い　い　え[endlink][r]
[resetfont]
[s]


*repair_binsen_ok

[sp]　　　「はい」[r]
[sp]　　　便せんをお直しします。[p]
@layopt layer=message1 visible=false
[cm]
@layopt layer=message0 visible=true
[current layer="message0"]
@jump storage="fumi_repair_binsen.ks" target="*start"

[s]

*repair_binsen_no
[sp]　　　「いいえ」[r]
[sp]　　　また何かございましたら、お呼びください。[p]
@layopt layer=message1 visible=false
@layopt layer=message0 visible=true
[cm]
[current layer="message0"]
@jump target=*binsen_sentaku2
[s]

