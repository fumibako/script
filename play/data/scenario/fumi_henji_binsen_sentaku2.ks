*binsen_sentaku2
[if exp="f.binsen_viewing_target == null"]
	[eval exp="f.binsen_viewing_target = '*fumi_binsen_page1'"]
[endif]
[jump target=&f.binsen_viewing_target]

*fumi_binsen_page1
[cm]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
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
	[ptext name="list" text=&f.binsen_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]

[if exp="f.fumi_binsen_number>10"]
			[glink name="list" storage="fumi_henji_binsen_sentaku2.ks" target=*fumi_binsen_page2 text="→" size=20 width="20" x=890 y=480 color=white]
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
	[glink name="list" storage="fumi_henji_binsen_shori.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="250" x=380 y=&f.fumi_binsen_y graphic="select_waku_x500.png" font_color=black]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_left
[endif]
[font size=25]
どの便せんに[r]
書きましょう？

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
		[glink name="list" storage="fumi_henji_binsen_shori.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="250" x=680 y=&f.fumi_binsen_y graphic="select_waku_x500.png" font_color=black]
[endif]
	[if exp="f.loop_count>0"]
		@jump target=*loop_fumi_binsen_right
	[endif]
@jump storage="fumi_henji_binsen_hyouji_end.ks" target="*fumi_binsen_hyouji_end"
[s]
[s]
*fumi_binsen_page2
[cm]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
[freeimage layer = 28]
*binsen_serifu
[font size=25]
どの便せんに[r]
書きましょう？
;[emb exp ="f.viewing_target"][r]


[eval exp="f.binsen_now_page = 2"]
[eval exp="f.binsen_viewing_target = '*fumi_binsen_page2'"]
[iscript]
f.binsen_max_page = Math.ceil(f.fumi_binsen_number / 10);
f.binsen_page_hyouji = f.binsen_now_page + " ／ " + f.binsen_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.binsen_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]

			[glink name="list" storage="fumi_henji_binsen_sentaku2.ks" target=*fumi_binsen_page1 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_binsen_number>20"]
			[glink name="list" storage="fumi_henji_binsen_sentaku2.ks" target=*fumi_binsen_page3 text="→" size=20 width="20" x=890 y=480 color=white]
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
	[glink name="list" storage="fumi_henji_binsen_shori.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="250" x=380 y=&f.fumi_binsen_y graphic="select_waku_x500.png" font_color=black]

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
	[glink name="list" storage="fumi_henji_binsen_shori.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="250" x=680 y=&f.fumi_binsen_y graphic="select_waku_x500.png" font_color=black]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_right_page2
[endif]
[endif]
@jump storage="fumi_henji_binsen_hyouji_end.ks" target="*fumi_binsen_hyouji_end"
[s]
[s]

*fumi_binsen_page3
[cm]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
[freeimage layer = 28]
*binsen_serifu3
[font size=25]
どの便せんに[r]
書きましょう？

[eval exp="f.binsen_now_page = 3"]
[eval exp="f.binsen_viewing_target = '*fumi_binsen_page3'"]
[iscript]
f.binsen_max_page = Math.ceil(f.fumi_binsen_number / 10);
f.binsen_page_hyouji = f.binsen_now_page + " ／ " + f.binsen_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.binsen_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink name="list" storage="fumi_henji_binsen_sentaku2.ks" target=*fumi_binsen_page2 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_binsen_number>30"]
		[glink name="list" storage="fumi_henji_binsen_sentaku2.ks" target=*fumi_binsen_page4 text="→" size=20 width="20" x=890 y=480 color=white]
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
	[glink name="list" storage="fumi_henji_binsen_shori.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="250" x=380 y=&f.fumi_binsen_y graphic="select_waku_x500.png" font_color=black]

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
	[glink name="list" storage="fumi_henji_binsen_shori.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="250" x=680 y=&f.fumi_binsen_y graphic="select_waku_x500.png" font_color=black]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_right_page3
[endif]
[endif]
@jump storage="fumi_henji_binsen_hyouji_end.ks" target="*fumi_binsen_hyouji_end"
[s]
[s]

*fumi_binsen_page4
[cm]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
[freeimage layer = 28]
*binsen_serifu4
[font size=25]
どの便せんに[r]
書きましょう？

[eval exp="f.binsen_now_page = 4"]
[eval exp="f.binsen_viewing_target = '*fumi_binsen_page4'"]
[iscript]
f.binsen_max_page = Math.ceil(f.fumi_binsen_number / 10);
f.binsen_page_hyouji = f.binsen_now_page + " ／ " + f.binsen_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.binsen_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink name="list" storage="fumi_henji_binsen_sentaku2.ks" target=*fumi_binsen_page3 text="←" size=20 width="20" x=350 y=480 color=white]
[if exp="f.fumi_binsen_number>40"]
		[glink name="list" storage="fumi_henji_binsen_sentaku2.ks" target=*fumi_binsen_page5 text="→" size=20 width="20" x=890 y=480 color=white]
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
	[glink name="list" storage="fumi_henji_binsen_shori.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="250" x=380 y=&f.fumi_binsen_y graphic="select_waku_x500.png" font_color=black]

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

	[eval exp="f.binsen_selected = '*binsen_shori'+f.list_count"]
[if exp="f.fumi_binsen_number>35"]
	[glink name="list" storage="fumi_henji_binsen_shori.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="250" x=680 y=&f.fumi_binsen_y graphic="select_waku_x500.png" font_color=black]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_right_page4
[endif]
[endif]
@jump storage="fumi_henji_binsen_hyouji_end.ks" target="*fumi_binsen_hyouji_end"
[s]
[s]

*fumi_binsen_page5
[cm]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
[freeimage layer = 28]
*binsen_serifu5
[font size=25]
どの便せんに[r]
書きましょう？

[eval exp="f.binsen_now_page = 5"]
[eval exp="f.binsen_viewing_target = '*fumi_binsen_page5'"]
[iscript]
f.binsen_max_page = Math.ceil(f.fumi_binsen_number / 10);
f.binsen_page_hyouji = f.binsen_now_page + " ／ " + f.binsen_max_page + " 頁";
[endscript]
	[ptext name="list" text=&f.binsen_page_hyouji layer=28 size=20 x=600 y=490 color=rosybrown bold=bold]
		[glink name="list" storage="fumi_henji_binsen_sentaku2.ks" target=*fumi_binsen_page4 text="←" size=20 width="20" x=350 y=480 color=white]
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
	[glink name="list" storage="fumi_henji_binsen_shori.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="250" x=380 y=&f.fumi_binsen_y graphic="select_waku_x500.png" font_color=black]

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
	[glink name="list" storage="fumi_henji_binsen_shori.ks" target=&f.binsen_selected text=&f.binsen_list_hairetsu[f.list_count][0] size=16 width="250" x=680 y=&f.fumi_binsen_y graphic="select_waku_x500.png" font_color=black]
[endif]

[if exp="f.loop_count>0"]
	@jump target=*loop_fumi_binsen_right_page5
[endif]
[endif]
@jump storage="fumi_henji_binsen_hyouji_end.ks" target="*fumi_binsen_hyouji_end"
[s]
[s]
