*replay_common_ausuka
*start
[call target=*bonyou storage="sijyou/preload_sijyou.ks"]
[stopbgm]
;=================================================================================_
[freeimage layer = 1]
[wait time=10]
[if exp="sf.common_asuka == 1"]
;背景変更:和紙風 桜色
[bg wait=true storage="../fgimage/bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[else]
[背景_お稽古部屋]
[endif]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=================================================================================_
[if exp="sf.common_asuka == 1"]
*event_select
五月『飛鳥紗代子・はじめての手紙』：既読イベントです。[r]
イベントを見ますか？、又はイベントを終了しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=300 top=70 left=300 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=30]

[link target=*jump_to_end1]イベントを終了する[endlink][r]
[r][r]
[link target=*jump_ok1]最初からイベントを見る[endlink][r]
[resetfont]
[s]
*jump_to_end1
[er]
[current layer="message0"]
[resetfont]
[er]
[eval exp="tf.event_skip = 1"]
「イベントを終了する」[r]
終了します。[p]
[cm]
@jump target=*seen_end
[s]
*jump_ok1
[er]
[current layer="message0"]
[resetfont]
[er]
「最初からイベントを見る」[r]
最初の場面に移動します。[p]
[cm]
[背景_お稽古部屋]
[endif]
;=================================================================================_
[whosay name="磯野" color="dimgray"]
「飛鳥紗代子様から、お手紙を頂戴しました」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[主人公ポーズ片手]
「まあ、紗代子さんから？」[p]
#
紗代子さんは、お母様のお兄様の奥様にあたる方だ。[r]
飛鳥伯父様と三年ほど前にご結婚され、 [r]
その時から私を可愛いがってくださる。[p]
[whosay name="磯野" color="dimgray"]
[主人公ポーズ通常]
[主人公目パチ1回]
「どうぞ」[p]

[手紙飛鳥 fumi_number=]
[名前]さんへ。[r][r]
若葉の緑が目にも鮮やかなこの頃。[r]
[r]
お久しぶりです。　飛鳥紗代子です。[r]
[名前]さんも、ついにお手紙のやりとりを[r]
なされるんですってね！[r]
[名字]様から、お聞きしましたわ！[p]

[sp][r]
どうしたら良いのか迷ったりしていないかしら？[r]
[r]
一応、これでも伯母ですから、[r]
[名前]さんのことが気になっているのよ。[r]
お互いを知るために手紙をたくさん書くことも大事だけど[r]
しっかりとお稽古はしておくべきよ～。[r]
[r]
私も、お稽古のおかげで旦那様に振り向いて貰えたから[r]
やっておいて損はないと思うわ。[p]

[sp][r][r]これからも、たまにお手紙を送らせて[r]
頂きますわね。[r]
[名前]さんの幸せを応援しています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]

;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
;[eval exp="f.fumi_toutyaku_oaite.push('飛鳥様')"]
;[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
[if exp="f.okeiko_gamen == true"]
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「はじめてのお手紙」飛鳥 紗代子"; //←仮タイトルです。ご自由に変更してください(スクリプト担
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/asuka_fumi.ks");
f.fumi_list_all_target.push("*0");
f.fumi_list_all_location_taishou.push(7);
f.fumi_list_all_location_fumi.push(0);
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_asuka[0] = 1;
[endscript]
[endif]
[手紙読了]


[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「お見合いに対する[ruby text=こころ]心[ruby text=くば]配りのお手紙だわ」[p]

[whosay name="磯野" color="dimgray"]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「紗代子様は、お嬢様を気に掛けていらっしゃいましたから」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
「そうですね。お父様達が不在の際、[r]
[sp]時折、[ruby text=ウ]当[ruby text=チ]家に立ち寄って下さっては、暖かな言葉を[r]
[sp]掛けて頂いきましたわ」[p]
;文矢もいないときです。当家もおかしいですのでルビで中間をとります
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
（飛鳥家の奥様として来て下さったとしても、[r]
[sp]私にとって、それは嬉しい事だったわ)[p]

;（飛鳥家の奥様のお立場上、来て下さったとしても、[r]
;[sp]私にとって、それは嬉しい事だったわ)[p]
*seen_end
;スキップ地点
[if exp="f.okeiko_gamen == true && sf.common_asuka == 1 && tf.event_skip == 1"]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
;[eval exp="f.fumi_toutyaku_oaite.push('飛鳥様')"]
;[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「はじめてのお手紙」飛鳥 紗代子"; //←仮タイトルです。ご自由に変更してください(スクリプト担
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/asuka_fumi.ks");
f.fumi_list_all_target.push("*0");
f.fumi_list_all_location_taishou.push(7);
f.fumi_list_all_location_fumi.push(0);
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_asuka[0] = 1;
[endscript]
[endif]

[eval exp="sf.common_asuka = 1"]

[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
@jump storage="test_sijyou.ks"
;[イベントシーン終了４]
[endif]
[s]

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
