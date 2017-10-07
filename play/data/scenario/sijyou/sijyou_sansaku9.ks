*sansaku
[stopbgm]
[call target=*bonyou storage="sijyou/preload_sijyou.ks"]
;[call target=*start storage="macro_tati_sijyou.ks"]
[freeimage layer = 1]
[wait time=10]
[背景_町]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;/////////////////////////////////シーンここから//////////////////////////////
#
町に出た。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今日は橋に行ってみようかしら？)[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[主人公目閉]
[背景_橋]
[主人公目通常]
#
『見返り橋』にやってきた。[r]
橋の下をみると、子供達が遊んでいる。[p]
[whosay name=子供・その壱]
「えんちゃーん、獲れたー？」[p]
#
子供たちは、古いどびんに石油を入れた"カンテラ"とバケツを持ち、[r]
どじょうを捕まえようとしている。[p]
[whosay name=子供・その弐]
「かんちゃん、静かにしてて！」[p]
[whosay name=子供達の親？]
「見つけたわ！　ここにいたのね！[r]
[sp]貴方達、何してるの！　早く帰りますよ！！」[p]
#
子供達は、叱られながらも帰っていった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
(私も帰りましょうか)[p]
#
;=====================システムメッセージ===========================================
[if exp="f.event_replay == 'sijyou'"]
@jump target=*seen_end_sansaku9
[endif]
[iscript]
f.okeiko_para_pre_random_1_3=Math.floor(Math.random() * 3 + 1);
if(f.para_shujinkou_tairyoku_now < 2){
  f.okeiko_para_pre_random_1_3 = 1;
}else if(f.para_shujinkou_tairyoku_now < 3){
  f.okeiko_para_pre_random_1_3 = Math.floor(Math.random() * 2 + 1);
}

f.para_shujinkou_tairyoku_now = f.para_shujinkou_tairyoku_now - f.okeiko_para_pre_random_1_3;

;↓気力回復値(ランダム設定)末尾の"+1"部分はこのイベント用に"少し多め"にした部分です。調整してください
f.okeiko_para_pre_random_1_3_kiryoku = f.okeiko_para_pre_random_1_3 + 1;
if(f.para_shujinkou_kiryoku_now == f.para_shujinkou_kiryoku_max){
  f.okeiko_para_pre_random_1_3_kiryoku = 0;
}
if(f.para_shujinkou_kiryoku_max - f.para_shujinkou_kiryoku_now == 2){
  if(f.okeiko_para_pre_random_1_3_kiryoku > 2){
   f.okeiko_para_pre_random_1_3_kiryoku = 2;
   }
}
if(f.para_shujinkou_kiryoku_max - f.para_shujinkou_kiryoku_now == 1){
  if(f.okeiko_para_pre_random_1_3_kiryoku > 1){
   f.okeiko_para_pre_random_1_3_kiryoku = 1;
   }
}
f.para_shujinkou_kiryoku_now = f.para_shujinkou_kiryoku_now + f.okeiko_para_pre_random_1_3_kiryoku;
if(f.okeiko_para_pre_random_1_3==3){
f.para_shujinkou_sansaku_comment_tairyoku = "たくさん歩き回って疲れたけれど、";
}
if(f.okeiko_para_pre_random_1_3==2){
f.para_shujinkou_sansaku_comment_tairyoku = "色々見て楽しかった、";
}
if(f.okeiko_para_pre_random_1_3==1){
f.para_shujinkou_sansaku_comment_tairyoku = "お散歩は少しだったけれど、";
}
if(f.okeiko_para_pre_random_1_3_kiryoku>=3){
f.para_shujinkou_sansaku_comment_kiryoku = "とても良い気分転換になったわ。";
}
if(f.okeiko_para_pre_random_1_3_kiryoku==2){
f.para_shujinkou_sansaku_comment_kiryoku = "外の空気は心地よかったわ。";
}
if(f.okeiko_para_pre_random_1_3_kiryoku==1){
f.para_shujinkou_sansaku_comment_kiryoku = "気分がさっぱりしたわ。";
}
if(f.okeiko_para_pre_random_1_3_kiryoku==0){
f.para_shujinkou_sansaku_comment_kiryoku = "気力は充実しているわ。";
}
[endscript]
[if exp="f.okeiko_para_pre_random_1_3_kiryoku>=3"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau.png" time=0]
[wait time=10]
[elsif exp="f.okeiko_para_pre_random_1_3_kiryoku==2"]
[主人公ほほえみ]
[else]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そろそろ家に戻りましょう。[l][r]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[sp][emb exp="f.para_shujinkou_sansaku_comment_tairyoku"][emb exp="f.para_shujinkou_sansaku_comment_kiryoku"]」
[wait time=10]
[layopt layer=26 visible=true]
[wait time=10]
[layopt layer=27 visible=true]
[wait time=10]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt='体力が'+f.okeiko_para_pre_random_1_3+'下がり、気力が'+f.okeiko_para_pre_random_1_3_kiryoku+'上がりました'"]
[ptext text=&f.sansaku_machi_seika_txt layer=26 size=21 x=310 y=85 color=darkslateblue bold=bold]
[wait time=10]
[p]
[freeimage layer = 26]
[wait time=10]
*seen_end_sansaku9
[eval exp="sf.event_sijyou_sansaku_9 = 1"]
[イベントシーン終了]
;=====================システムメッセージ===========================================
[if exp="f.okeiko_gamen == true"]
@jump storage="sansaku.ks" target=*sansaku_owari
[else]
[イベントシーン終了２]
[endif]

@jump storage="test_sijyou.ks"
[s]

;=====================おわり===========================================
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
[メッセージウィンドウ上ボタン表示]
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
