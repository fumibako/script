;=============================================
;◆黒田イベント【手紙が届く：年賀状】黒田ルートかつ1月1週になった時点で1度だけ発生
;=============================================
*replay_kuroda_1_1
;[call target=*start storage="tyrano.ks"]
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
;==========================================================================================
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene1==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene1
[stopbgm]
[freeimage layer = 1]
[wait time=10]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue_dark.jpg" time=500]
[wait time=10]
[プリロード画面消去]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
@layopt layer=message0 visible=true
[current layer="message0"]

;テキスト全画面
[font color=white size=27]
;主人公編
;【背景】黒背景又は黒っぽい和紙風
;【テキスト枠】全画面、白フォント
;【BGM】主人公邸通常会話パート用
;名前欄消去
[whosay name=""]
――新年を迎えた。[l]
[if exp="sf.BGM=='ON'"]
;【BGM】めでたく候（お正月などめでたいシーンに
[playbgm storage="oshougatsu_medetaku.ogg" loop=true]
[eval exp="f.bgm_storage='oshougatsu_medetaku.ogg'"]
[endif]
[r]
[r]
澄みわたった青空のもと[r]
召使い達の陽気な掛け声に[r]
混じって餅つきの音が聞こえる。[p]
[r]
日ごろは海外で暮らす兄夫婦も[r]
お正月の間は家に戻り[r]
賑やかに過ごしている。[p]
[fadeoutbgm time=3000]
[r]
挨拶に訪れる親族や客達の応対で[r]
忙しく過ごしつつも[r]
[r]
年賀の晴れやかな空気とはうらはらに[r]
私の心は浮かぬままだった――。
[autosave]
[p]
[resetfont]

;==========================================================================================
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene2==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene2
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[暗転２ storage="bg/room_niwa.jpg" clegit=true]
;【背景】主人公邸_庭、フェードイン
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[wait time=10]
;【テキスト枠】会話パート用 下部横長
[イベントシーン構築ボタン無し版]
[wait time=10]
;=========================================================================================
;【立ち絵】主人公：伏目
[主人公ポーズ指]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[暗転２終了]
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;=========================================================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……。[r]
[sp]……黒田様は、いかがお過ごしかしら」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]


;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
「年末のご様子では、お便りもお会いすることも[r]
[sp]当分の間は無理でしょうね……」[p]

;【立ち絵】主人公：伏目
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
#
黒田様からの音沙汰はないまま、正月が過ぎてゆく。
[autosave]
[p]

[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ふぅ」[p]

;=========================================================================================
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene3==undefined"]
	[skipstop]
[endif]
;=========================================================================================
*scene3

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name="磯野" color="dimgray"]
「失礼します。[r]
[sp]お嬢様、本日届いた書簡でございます」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

;【立ち絵】主人公：伏目
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
（お友達の華やかな年賀状を見るのも、なんだかつらいわ……）[p]
#
手つきも重く受け取ろうとして――。[p]

;=========================================================================================
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene4==undefined"]
	[skipstop]
[endif]
;=========================================================================================
*scene4
#
;【立ち絵】主人公：驚
[主人公ポーズ片手]
[wait time=10]
[主人公驚]
[wait time=10]
一番上に乗せられたものを見た瞬間、私は息をのんだ。[r]
地味な葉書。しかしそこには、見覚えのある鮮やかな筆跡があった。
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野！　もう、びっくりさせて」[p]
;【立ち絵】主人公：強気
[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「黒田様から届いたなら、先に言ってちょうだいよ」[p]
[主人公通常]
[wait time=10]

[whosay name="磯野" color="dimgray"]
「ご友人方の年賀状もございましたので」
[autosave]
[p]

;【立ち絵】主人公：伏目
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それもそうだけれど……。[r]
[sp]でも、いま渡してもらってよかったわ。ありがとう」[p]

[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
（お兄様たちがいらしたら、どれだけからかわれるか。[r]
[sp]……見られなくてホッとしたわ）
[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]

[主人公閉目パチ1回]
[wait time=10]
[whosay name="磯野" color="dimgray"]
「どういたしまして」[p]
#
磯野にいつもの温かい笑みが浮かぶ。[p]
[whosay name="磯野" color="dimgray"]
「では、失礼いたします」[p]
#
;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]
[wait time=500]
;=========================================================================================
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene5==undefined"]
	[skipstop]
[endif]
;=========================================================================================
*scene5

;【背景、立ち絵、テキスト枠】フェードアウト、暗転
;[主人公退場]
;[wait time=10]
;機能ボタン消去
[機能ボタン消]
[eval exp="sf.FButton='OFF'"]
;[chara_mod name="message_bg" storage="toumei.gif"]
;[wait time=10]
;[bg wait=true storage="toumei.gif" time=500]
;[wait time=50]
;◆テスト中は配列スキップ
[if exp="tf.test_kuroda==true || f.event_replay == 'kuroda'"]
@jump target="test_kuroda_hairetu_skip"
[endif]
;=========================================================================================
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「年賀状」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「年賀状」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi16");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(15);
f.fumi_list_kuroda_location_fumi.push(15);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi16");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[15]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_kuroda_number=f.fumi_kuroda_number + 1;
f.hensin_list_hairetsu[0][15]=1;
f.para_kuroda_koukando = f.para_kuroda_koukando + 4;
[endscript]
[endif]
*test_kuroda_hairetu_skip
;=========================================================================================
;黒田より年賀状
;【背景】年賀状画像（黒田）表示（こちらで作成予定：ハガキ上部に「謹賀新年」の文字と四葉のクローバーの押し花風画像が入るシンプルなもの。ハガキ下部に縦書下記テキスト挿入）
[layopt layer=29 visible=true]
[wait time=10]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/nengajou_kuroda.jpg" time=500]
[wait time=500]
;メッセージレイヤを年賀状用に設定変更
[position left=270 width=400 height=310 top=260 page=fore margint=0]
@layopt layer=message0 page=fore visible=true
[position vertical=true]
[font color=black size=19]
;=========================================================================================
[sp]昨年末には多大な励ましを[r]
いただき、ありがとうございました[r]
[sp]おかげさまで、研究に光明が[r]
見えてまいりました[r]
[r]
[sp]ご無沙汰してしまい大変申し訳[r]
なく感じております[r]
また改めてお手紙をお送り[r]
いたします[r]
[r]
本年が[名前]さんにとって[r]
良き年となりますように
[autosave]
[p]
[position vertical=false]
[resetfont]
;=========================================================================================
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[0][15] = 0;"]
[endif]
[freeimage layer = 29]
[wait time=10]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[wait time=10]
;機能ボタン登場
[機能ボタン表示]
[wait time=50]
[eval exp="sf.FButton='ON'"]
;=========================================================================================
;【立ち絵】主人公：通常
[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=50]

#
裏面に『母の体調も落ち着きました。[r]
その節はご心配をおかけしました』とも記されている。[p]
;=========================================================================================
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene6==undefined"]
	[skipstop]
[endif]
;=========================================================================================
*scene6

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
#
『研究に光明』[p]
――安心すると同時に涙がにじむ。
[autosave]
[p]

;【立ち絵】主人公：目閉じほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
（よかった……お母様も落ち着かれたのですね）[p]

「お忙しいでしょうに、お知らせくださるなんて……」[p]
[fadeoutbgm time=3000]
[wait time=10]
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa_akarui.jpg" time=1000]
[wait time=50]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
#
葉書を胸に、深いため息をついて庭を眺める。[l][r]
;【背景】主人公邸_庭、フェードイン
窓から射す陽光が、ひときわ明るさを増して見えた。[p]
[stopbgm]

*scene_end
;お正月、黒田から年賀状編終了
[eval exp="sf.event_kuroda_1_1 = 1"]

[if exp="tf.test_kuroda == true || f.event_replay == 'kuroda'"]
[イベントシーン終了]
[endif]
;シナリオのみのテスト中はもどる
[if exp="tf.test_kuroda == true"]
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]

;◆「休憩中」画像消去
[freeimage layer = 26]
;回想記録終了 
[endreplay] 

@jump storage="event.ks" target=*event_owari



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
