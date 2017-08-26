;主人公登場時の画像被せ処理に◆B4nFWraU42さん作スクリプトを使用しました。ありがとうございます。
;=============================================
;お稽古パート:画面表示処理
;=============================================
*start
;【システム表示】月週
*draw_month_week
[freeimage layer = 21]
[freeimage layer = 22]
[layopt layer=21 visible=true]
[image layer=21 x=81 y=6 storage=&f.sysgra_okeiko_month]
[wait time=10]
[layopt layer=22 visible=true]
[image layer=22 x=81 y=50 storage=&f.sysgra_okeiko_week]
[wait time=10]

*draw_button_system
[clearstack]
[clearfix]
;背景変更:主人公邸_お稽古部屋
[freeimage layer = 1]
[wait time=10]
[bg wait=true storage="../fgimage/bg/bg_okeiko_main.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[wait time=10]

;【パラメータ計算＆描画】
*draw_para_count
;↓(イベント中に届く)手紙タイトルに付ける月表示設定
[iscript]
if (f.okeiko_month==4){
f.okeiko_month_kansuuji="四月 ";
}
if (f.okeiko_month==5){
f.okeiko_month_kansuuji="五月 ";
}
if (f.okeiko_month==6){
f.okeiko_month_kansuuji="六月 ";
}
if (f.okeiko_month==7){
f.okeiko_month_kansuuji="七月 ";
}
if (f.okeiko_month==8){
f.okeiko_month_kansuuji="八月 ";
}
if (f.okeiko_month==9){
f.okeiko_month_kansuuji="九月 ";
}
if (f.okeiko_month==10){
f.okeiko_month_kansuuji="十月 ";
}
if (f.okeiko_month==11){
f.okeiko_month_kansuuji="十一月 ";
}
if (f.okeiko_month==12){
f.okeiko_month_kansuuji="十二月 ";
}
if (f.okeiko_month==1){
f.okeiko_month_kansuuji="一月 ";
}
if (f.okeiko_month==2){
f.okeiko_month_kansuuji="二月 ";
}
if (f.okeiko_month==3){
f.okeiko_month_kansuuji="三月 ";
}
[endscript]

;↓処理ループ中に含める
[iscript]
f.para_shujinkou_tairyoku=f.para_shujinkou_tairyoku_now + "/" + f.para_shujinkou_tairyoku_max;
f.para_shujinkou_kiryoku=f.para_shujinkou_kiryoku_now + "/" + f.para_shujinkou_kiryoku_max;
f.para_shujinkou_shukujodo_max_width = f.para_shujinkou_shukujodo * 1 + 2;
f.para_shujinkou_shukujodo_now_width = f.para_shujinkou_shukujodo * 1;
f.para_shujinkou_tairyoku_max_width = f.para_shujinkou_tairyoku_max * 1 + 2;
f.para_shujinkou_tairyoku_now_width = f.para_shujinkou_tairyoku_now * 1;
f.para_shujinkou_kiryoku_max_width = f.para_shujinkou_kiryoku_max * 1 + 2;
f.para_shujinkou_kiryoku_now_width = f.para_shujinkou_kiryoku_now * 1;
// ↓茶道などの熟練度表示設定
f.para_shujinkou_sadou=f.para_shujinkou_j_sadou + "/" + f.para_shujinkou_jukuren_max;
f.para_shujinkou_kadou=f.para_shujinkou_j_kadou + "/" + f.para_shujinkou_jukuren_max;
f.para_shujinkou_reihou=f.para_shujinkou_j_reihou + "/" + f.para_shujinkou_jukuren_max;
f.para_shujinkou_gogaku=f.para_shujinkou_j_gogaku + "/" + f.para_shujinkou_jukuren_max;
f.para_shujinkou_koto=f.para_shujinkou_j_koto + "/" + f.para_shujinkou_jukuren_max;
[endscript]

;称号判定 お転婆娘→淑女度5「無垢な娘」→10「夢見る娘」→15「努力家の娘」→20「純真な娘」→30「愛らしい娘」→40「可憐な乙女」→50「花のような乙女」→60「深窓の乙女」→70「たおやかな乙女」→80「優美なる淑女」→90「気高き淑女」→100「麗しき淑女」→200「ミルトニアの淑女」
;◆B4nFWraU42さんの案を称号の一部にいただきました。ありがとうございます

[iscript]
if (f.para_shujinkou_shukujodo >= 200 ){f.shougou = "ミルトニアの淑女";}
else if (f.para_shujinkou_shukujodo >= 100 ){f.shougou = "　麗しき淑女";}
else if (f.para_shujinkou_shukujodo >= 90 ){f.shougou = "　気高き淑女";}
else if (f.para_shujinkou_shukujodo >= 80 ){f.shougou = "優美なる淑女";}
else if (f.para_shujinkou_shukujodo >= 70 ){f.shougou = "たおやかな乙女";}
else if (f.para_shujinkou_shukujodo >= 60 ){f.shougou = "　深窓の乙女";}
else if (f.para_shujinkou_shukujodo >= 50 ){f.shougou = "花のような乙女";}
else if (f.para_shujinkou_shukujodo >= 40 ){f.shougou = "　可憐な乙女";}
else if (f.para_shujinkou_shukujodo >= 30 ){f.shougou = "　愛らしい娘";}
else if (f.para_shujinkou_shukujodo >= 20 ){f.shougou = "　　純真な娘";}
else if (f.para_shujinkou_shukujodo >= 15 ){f.shougou = "努力家の娘";}
else if (f.para_shujinkou_shukujodo >= 10 ){f.shougou = "　　夢見る娘";}
else if (f.para_shujinkou_shukujodo >= 5 ){f.shougou = "　　無垢な娘";}
else {f.shougou = "　　お転婆娘";}
[endscript]

;レイヤー24にパラメータ画像を表示
[freeimage layer = 24]
[layopt layer=24 visible=true]
;◆並んでいるところをみせない : script by ＠名無しさん１
[iscript]
$(".para").css("opacity",0); //パラメータ表示を透明に
[endscript]
[if exp="f.para_shujinkou_shukujodo == 0"]
[else]
[image layer=24 name="para" x=835 y=111 width=&f.para_shujinkou_shukujodo_max_width height=10 storage="button/parabar_empty_brown.png"]
[image layer=24 name="para" x=836 y=112 width=&f.para_shujinkou_shukujodo_now_width height=8 storage="button/parabar_pink.png"]
[endif]
[if exp="f.para_shujinkou_tairyoku_max == 0"]
[else]
[image layer=24 name="para" x=835 y=174 width=&f.para_shujinkou_tairyoku_max_width height=10 storage="button/parabar_empty_brown.png"]
[image layer=24 name="para" x=836 y=175 width=&f.para_shujinkou_tairyoku_now_width height=8 storage="button/parabar_green.png"]
[endif]
[if exp="f.para_shujinkou_kiryoku_max == 0"]
[else]
[image layer=24 name="para" x=835 y=212 width=&f.para_shujinkou_kiryoku_max_width height=10 storage="button/parabar_empty_brown.png"]
[image layer=24 name="para" x=836 y=213 width=&f.para_shujinkou_kiryoku_now_width height=8 storage="button/parabar_blue.png"]
[endif]
;茶道など熟練度表示用枠（暫定。実際にはテキストを入れる予定です
[image layer=24 name="para" x=742 y=241 width=220 height=220 storage="button/frame_para_main_220x200.png"]
;茶道など熟練度パラメータグラフ表示(暫定で各お稽古に色付けしてみましたが、逆に単色の方が見やすいかも…など考え中
[image layer=24 name="para" x=835 y=280 width=&f.para_shujinkou_jukuren_max height=10 storage="button/parabar_empty_brown.png"]
[if exp="f.para_shujinkou_j_sadou > 0"]
[image layer=24 name="para" x=836 y=281 width=&f.para_shujinkou_j_sadou height=8 storage="button/parabar_sadou.png"]
[endif]
[image layer=24 name="para" x=835 y=317 width=&f.para_shujinkou_jukuren_max height=10 storage="button/parabar_empty_brown.png"]
[if exp="f.para_shujinkou_j_kadou > 0"]
[image layer=24 name="para" x=836 y=318 width=&f.para_shujinkou_j_kadou height=8 storage="button/parabar_kadou.png"]
[endif]
[image layer=24 name="para" x=835 y=354 width=&f.para_shujinkou_jukuren_max height=10 storage="button/parabar_empty_brown.png"]
[if exp="f.para_shujinkou_j_reihou > 0"]
[image layer=24 name="para" x=836 y=355 width=&f.para_shujinkou_j_reihou height=8 storage="button/parabar_reihou.png"]
[endif]
[image layer=24 name="para" x=835 y=391 width=&f.para_shujinkou_jukuren_max height=10 storage="button/parabar_empty_brown.png"]
[if exp="f.para_shujinkou_j_gogaku > 0"]
[image layer=24 name="para" x=836 y=392 width=&f.para_shujinkou_j_gogaku height=8 storage="button/parabar_gogaku.png"]
[endif]
[image layer=24 name="para" x=835 y=428 width=&f.para_shujinkou_jukuren_max height=10 storage="button/parabar_empty_brown.png"]
[if exp="f.para_shujinkou_j_koto > 0"]
[image layer=24 name="para" x=836 y=429 width=&f.para_shujinkou_j_koto height=8 storage="button/parabar_koto.png"]
[endif]

;レイヤー24にパラメータテキストを表示
[ptext name="para" text=&f.shougou layer=24 size=23 x=770 y=55 color=black bold=bold]
[ptext name="para" text=&f.para_shujinkou_shukujodo layer=24 size=20 x=915 y=93 color=black bold=bold]
[ptext name="para" text=&f.para_shujinkou_tairyoku layer=24 size=20 x=870 y=158 color=black bold=bold]
[ptext name="para" text=&f.para_shujinkou_kiryoku layer=24 size=20 x=870 y=195 color=black bold=bold]


;茶道など熟練度表示
[ptext name="para" text=&f.para_shujinkou_sadou layer=24 size=20 x=870 y=260 color=black bold=bold]
[ptext name="para" text=&f.para_shujinkou_kadou layer=24 size=20 x=870 y=297 color=black bold=bold]
[ptext name="para" text=&f.para_shujinkou_reihou layer=24 size=20 x=870 y=334 color=black bold=bold]
[ptext name="para" text=&f.para_shujinkou_gogaku layer=24 size=20 x=870 y=371 color=black bold=bold]
[ptext name="para" text=&f.para_shujinkou_koto layer=24 size=20 x=870 y=408 color=black bold=bold]

;茶道などテキスト表記暫定。実際にはテキストを入れたグラフィック枠を使用します。その際はこの部分は撤去予定です
[ptext name="para" text="茶道：" layer=24 size=20 x=770 y=260 color=black bold=bold]
[ptext name="para" text="華道：" layer=24 size=20 x=770 y=297 color=black bold=bold]
[ptext name="para" text="礼法：" layer=24 size=20 x=770 y=334 color=black bold=bold]
[ptext name="para" text="語学：" layer=24 size=20 x=770 y=371 color=black bold=bold]
[ptext name="para" text="お箏：" layer=24 size=20 x=770 y=408 color=black bold=bold]

;◆月始めのみの処理
[if exp="f.tukihajime == 1"]
@jump target=*tukihajime
[else]
@jump target=*fumi_hyouji
[endif]
*tukihajime_owari

*draw_fukidasi
;主人公画像表示【マクロでフリーズしやすいのでchara_modで切り替え】
;主人公L登場時被せ
	[image name="junbi_girl" layer=29 storage="girl/L/gitl_L_all_futuu.png" left=50 top=220 time=300 visible=true]
	[wait time=10]
	[chara_mod name="A_base" storage="girl/L/base.png" time=0]
	[wait time=10]
	[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
	[wait time=10]
[wait time=200]
[iscript]
$('.junbi_girl').remove();
[endscript]

[if exp="f.fumi_toutyaku != 0"]
@jump target=*fumi_hyouji
[endif]
[ct]

;↓アドバイスイベント中はテスト数値非表示
[if exp="f.event_advice == 0"]
@jump target=*return_moto_target
[endif]
;◆◆テスト表示
[if exp="tf.test_gamen_sijyou==true"]
@jump storage="01_sijyou_test_hyouji.ks" target=*start
[endif]

*sijyou_test_hyouji_owari
[if exp="(tf.test_gamen==true && tf.test_gamen_sijyou==false)"]
@jump storage="okeiko_hyouji_test_hyouji.ks" target=*start
[endif]

*test_hyouji_owari

*shujinkou_message
[wait time=10]
[current layer="message0"]
[wait time=10]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[wait time=10]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=360 width=500 height=170 top=250 page=fore margint="50"]
[wait time=10]

;【システム表示】フキダシ枠仮表示【表示をより確実にするため、一旦リセットしてイチから表示】
[freeimage layer = 23]
[chara_new name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png"]
[chara_show left=300 top=220 layer=23 name="sys_fukidasi" time=0]
[wait time=10]

;↓既読色でも元の濃茶色で表示
[config_record_label color="0x664f44"]

[if exp="f.para_shujinkou_tairyoku_now < 1 || f.para_shujinkou_kiryoku_now < 1"]
	[chara_mod name="A_base" storage="girl/L/base.png" time=0]
	[wait time=10]
	[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_fusi1.png" time=0]
	[wait time=10]
	[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
	[wait time=10]
	[font size=25 color="0x664f44"]
	そろそろ休憩したいです……
	[resetfont]
	[eval exp="f.okeikopart_serifu_okeiko_owari=0"]
@jump target=*return_moto_target
[endif]
	[chara_mod name="A_base" storage="girl/L/base.png" time=0]
	[wait time=10]
	[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="girl_base" storage="toumei.gif" time=0]
	[wait time=10]
	[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
	[wait time=10]
	[chara_mod name="girl_me" storage="toumei.gif" time=0]
	[wait time=10]
	[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
	[wait time=10]
	[chara_mod name="girl_emo" storage="toumei.gif" time=0]
	[wait time=10]
;f.fumi_fumiya_11_4…1=文也11_4手紙を読んだ状態、2=1の後の主人公セリフを見た状態、3=2の後にお箏を練習した状態、4=3の後の主人公セリフを見た状態
[if exp="f.fumi_fumiya_11_4 == 1"]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
	[wait time=10]
	[font size=25 color="0x664f44"]
	お箏のお稽古をすれば[r]
	答えは出るかしら。
	[resetfont]
;↓11_4文矢手紙後主人公セリフを見た状態に変更
[eval exp="f.fumi_fumiya_11_4 = 2"]
@jump target=*return_moto_target
[endif]

[if exp="f.fumi_fumiya_11_4 == 3"]
	[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_fusi1.png" time=0]
	[wait time=10]
	[font size=25 color="0x664f44"]
	藤枝様もきっと[r]
	苦しんでいるわ。[p]
	[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
	[wait time=10]
	お箏の音で、想いが[r]
	伝わりますように…！
	[resetfont]
;↓11_4文矢手紙読了かつお箏のお稽古後主人公セリフを見た状態
[eval exp="f.fumi_fumiya_11_4 = 4"]
@jump target=*return_moto_target
[endif]

[if exp="f.okeikopart_serifu_okeiko_owari == 1"]
	[font size=25 color="0x664f44"]
	[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	お稽古が終わりました。[r]
	他にも何かしましょうか？
	[resetfont]
	[eval exp="f.okeikopart_serifu_okeiko_owari=0"]
@jump target=*return_moto_target
[endif]
[if exp="f.okeikopart_shuuhajime == 1"]
	[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	[font size=0][emb exp="f.okeiko_month"]月[emb exp="f.okeiko_week"]週：[font size=25 color="0x664f44"]今週は何をしましょうか？
	[resetfont]
	[eval exp="f.okeikopart_shuuhajime=0"]
[else]
	[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	[font size=25 color=0x664f44]
	他にも何かしましょうか？
	[resetfont]
[endif]
;↓既読色有効に戻す：薄セピア色
[config_record_label color="0xa68f84"]

*button_back_test
[if exp="tf.test_gamen==true"]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="200" x=750 y=0 color=white]
[endif]

*return_moto_target
;◆表示処理呼び出し元へ戻る
@jump storage=&f.hyoujimae_storage target=&f.hyoujimae_target
[s]


;近況報告,1,1,1,-1,1,a,,,3,
;容姿について,0,-1,0,0,1,c,2,,,
;相手の印象を褒める,1,1,1,-2,1,b,,,,
;相手の印象に物申す,0,0,1,2,1,c,,,4,
;華族について,0,0,0,0,1,c,,,,
;住居について,0,0,0,0,1,b,,,,
;自分について,0,1,1,1,1,b,,,5,
;好きな物,1,1,1,0,1,a,,,,

*tukihajime
;◆月始めのみ：便箋追加
;【便箋追加】（↓可能なら文字色変更表示）
[wait time=10]
[iscript]
f.binsen_hairetsu_number=f.binsen_list_hairetsu.length;
f.binsen_hairetsu_number_a=f.binsen_hairetsu_number;
f.binsen_hairetsu_number_b=f.binsen_hairetsu_number+1;
f.binsen_hairetsu_number_c=f.binsen_hairetsu_number+2;
[endscript]
[wait time=50]
[iscript]
if(f.okeiko_month==5){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("レンガ街の風景画",0,2,1,1,1,"","");
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("新緑の模様",1,0,2,1,1,5,6);
}
if(f.okeiko_month==6){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("黒無地",-1,0,0,1,-2,"","");
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("紫陽花の模様",1,0,2,1,1,6,7);
}
if(f.okeiko_month==7){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("夏雲の模様",0,0,1,2,1,7,8);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("清流に鮎の模様",1,1,1,2,1,7,8);
}
if(f.okeiko_month==8){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("ラムネ瓶の模様",0,0,1,1,2,"",8);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("向日葵の模様",1,0,2,1,2,8,"");
}
if(f.okeiko_month==9){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("お月見の模様",1,1,1,1,1,"",9);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("葡萄の模様",1,0,2,1,1,9,10);
}
if(f.okeiko_month==10){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("曼珠沙華の模様",0,2,2,-2,1,10,11);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("紅葉の模様",2,1,2,1,1,10,11);
}
if(f.okeiko_month==11){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("柿の模様",2,0,2,1,2,11,12);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("どんぐりの模様",1,0,2,1,1,11,12);
}
if(f.okeiko_month==12){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("雪の模様",0,0,1,0,1,12,1);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("蜜柑の模様",1,-1,2,1,1,12,1);
}
if(f.okeiko_month==1){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("餅つきの画",1,1,1,2,1,"",1);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("凧の模様",1,0,0,1,1,"",1);
}
if(f.okeiko_month==2){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("豆撒きの風景画",0,0,0,2,1,"",2);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("蕗のとうの模様",1,1,2,1,2,2,3);
}
if(f.okeiko_month==3){
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_a].push("雛飾りの模様",0,-1,0,0,1,"",3);
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b]=[];
	f.binsen_list_hairetsu[f.binsen_hairetsu_number_b].push("うぐいすの模様",1,0,0,1,1,3,"");
}
[endscript]
[wait time=10]
[iscript]
f.binsen_toutyaku_info1="「"+f.binsen_list_hairetsu[f.binsen_hairetsu_number_a][0]+"」「"+f.binsen_list_hairetsu[f.binsen_hairetsu_number_b][0]+"」";
f.binsen_toutyaku_info2="の便箋が選べるようになりました";
[endscript]
	[cm]
	[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
	[wait time=10]
;主人公L登場時被せ
	[image name="junbi_girl" layer=29 storage="girl/L/gitl_L_all_futuu.png" left=50 top=220 time=300 visible=true]
	[wait time=10]
	[chara_mod name="A_base" storage="girl/L/base.png" time=0]
	[wait time=10]
	[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
	[wait time=10]
[wait time=200]
[iscript]
$('.junbi_girl').remove();
[endscript]
	[layopt layer=26 visible=true]
	[layopt layer=27 visible=true]
	[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
	[wait time=10]
		[ptext text=&f.binsen_toutyaku_info1 layer=27 size=21 x=290 y=150 color=darkslateblue bold=bold]
		[ptext text=&f.binsen_toutyaku_info2 layer=27 size=21 x=290 y=185 color=darkslateblue bold=bold]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
	[p]
	[freeimage layer = 26]
	[freeimage layer = 27]
@jump target=*fumi_hyouji

;青葉の模様,1,0,0,-2,0,,

*fumi_hyouji
;◆「休憩中」画像消去
[freeimage layer = 26]
;◆手紙到着していたら表示
[if exp="f.fumi_toutyaku == 0"]
	[eval exp="f.tukihajime = 0"]
	@jump target=*draw_fukidasi
[endif]
;[autostop]を入れるとフリーズ率高いためコメントアウト。調査予定。
;[skipstop]
[if exp="f.tukihajime!=1"]
	[cm]
	[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
	[wait time=10]
	[layopt layer=29 visible=true]
	;主人公L登場時被せ
	[image name="junbi_girl" layer=29 storage="girl/L/gitl_L_all_futuu.png" left=50 top=220 time=300 visible=true]
	[wait time=10]
	[chara_mod name="A_base" storage="girl/L/base.png" time=0]
	[wait time=10]
	[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
	[wait time=10]
	[wait time=200]
	[iscript]
	$('.junbi_girl').remove();
	[endscript]
[endif]
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[wait time=10]

;藤枝からの9月2～10月4週は鳩が届けたという内容に変更
[if exp="f.hato == 1"]
	[ptext text=&f.fumi_toutyaku_info_hato layer=27 size=21 x=290 y=165 color=darkslateblue bold=bold]
	[wait time=10]
	;【SE】キラキラ
	;[playse storage=kira.ogg loop=false ]
	;【SE】鳩	
	[playse storage=tori_hato.ogg loop=false ]
	[eval exp="f.hato == 0"]
[p]
[freeimage layer = 26]
[wait time=10]
[freeimage layer = 27]
[wait time=10]
	@jump target = *fumi_toutyaku_message_owari
[endif]

[if exp="f.fumi_toutyaku_oaite.length > 1"]
	[eval exp="f.fumi_toutyaku_info1=f.fumi_toutyaku_oaite"]
	[eval exp="f.fumi_toutyaku_info2='からお手紙が届いております'"]
	[ptext text=&f.fumi_toutyaku_info1 layer=27 size=21 x=290 y=150 color=darkslateblue bold=bold]
	[wait time=10]
	[ptext text=&f.fumi_toutyaku_info2 layer=27 size=21 x=290 y=185 color=darkslateblue bold=bold]
	[wait time=10]
	;【SE】キラキラ
	[playse storage=kira.ogg loop=false ]
[else]
	[ptext text=&f.fumi_toutyaku_info layer=27 size=21 x=290 y=165 color=darkslateblue bold=bold]
	[wait time=10]
	;【SE】キラキラ
	[playse storage=kira.ogg loop=false ]
[endif]
[p]
[freeimage layer = 26]
[wait time=10]
[freeimage layer = 27]
[wait time=10]

*fumi_toutyaku_message_owari

[eval exp="f.tukihajime = 0"]
[eval exp="f.fumi_toutyaku = 0"]
[eval exp="f.fumi_toutyaku_oaite=[]"]
@jump target=*tukihajime_owari
