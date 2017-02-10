;=============================================
;◆黒田イベント【手紙が届く：散策お誘い】黒田ルートかつ10月4週になった時点で1度だけ発生
;=============================================
*replay_kuroda_10_4
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_10_4_scene1==undefined"]
	[skipstop]
[endif]
*scene1

[stopbgm]
[背景_庭]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;[chara_show left=1 top=391 layer=10 name="message_bg"]

;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

[whosay name="磯野" color="dimgray"]
「お嬢様、黒田様からお手紙でございます」
[autosave]
[p]
;【BGM】古都に咲く花（プロローグ等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]

[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
#
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「散策お誘い」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「散策お誘い」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi15");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(14);
f.fumi_list_kuroda_location_fumi.push(14);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi15");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[14]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_kuroda_number=f.fumi_kuroda_number + 1;
f.hensin_list_hairetsu[0][14]=1;
f.para_kuroda_koukando = f.para_kuroda_koukando + 4;
[endscript]

;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=1 y=1 storage="bg/bg_tegami_kuroda.jpg" time=500]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
[名字] [名前]様[r]
[r]
[sp]日毎に寒さが加わるこのごろですね。[r]
先日は、紅葉散策にご一緒してくださりありがとうございました。[r]
お疲れは出ていませんか。[r]
ゆっくりとお話できたことが、とても嬉しかったです。[r]
[r]
冬が近づくと木々もすこし様変わりします。[r]
また散策に出かけませんか。[r]
来月の二週目は、いかがでしょう。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　黒田　将貴[p]
[iscript]
[endscript]
[eval exp="f.midoku_list_hairetsu[0][14] = 0;"]
[freeimage layer = 29 time=500]
;機能ボタン表示
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]

;画面切り替え、手紙画面→通常会話パート
;【テキスト枠】会話パート用 下部横長
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;【立ち絵】主人公：笑顔
[主人公笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まぁ！　またのお誘いをいただいて、嬉しいわ」[p]
[主人公ポーズ指]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
（今度は二週間後にお会いできるのね……待つのも楽しみのうちかしら）[p]
;【立ち絵】主人公：通常
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
「早速、お返事を書きましょう」[p]
;【SE】サラサラと書く音
[playse storage=pen_write.ogg loop=false ]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（……こちらこそ沢山お話しできて、嬉しゅうございました。[r]
[sp]木々の冬仕度も楽しみに、ご一緒させていただきたく存じます……）[p]

;手紙編終了
;◆「休憩中」画像消去
[freeimage layer = 26]

@jump storage="event.ks" target=*event_owari

;回想記録終了 
[endreplay] 

*window_close
[cm]
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
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[l]

;会話ウィンドウ表示
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;機能ボタン表示
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[if exp="f.kaogura!='off'"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]
 