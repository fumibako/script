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
イベントを見ますか？　又はイベントを終了しますか？[r]
;選択肢用レイヤーを追加
;[position layer=message1 height=300 top=70 left=300 opacity=0]
;@layopt layer=message1 visible=true
;[current layer="message1"]
;[font size=30]
;[link target=*jump_to_end1]イベントを終了する[endlink][r]
;[r][r]
;[link target=*jump_ok1]最初からイベントを見る[endlink][r]
;[resetfont]
;↓表示を他の選択肢に合わせます◆jsYiJcqRkk
[glink target=*jump_to_end1 text="イベントを終了する" font_color=black size=23 width="300" x=300 y=100 graphic="select_waku_x300.png"]
[glink target=*jump_ok1 text="最初からイベントを見る" font_color=black size=23 width="300" x=300 y=250 graphic="select_waku_x300.png"]

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
;============================================
[whosay name="磯野" color="dimgray"]
「お嬢様の伯父君であらせられる飛鳥[ruby text=こう]公と[r]
[sp]ご結婚なされて、三年は経つのでしょうか」[p]
#
[主人公ポーズ指]
[主人公目閉じ]
紗代子さんは、お母様のお兄様の奥様……つまり義理の伯母にあたる方。[p]
;だ。だと三人称ぽいので修正　あらせが続くので方。
三年ほど前に飛鳥[ruby text=お]伯[ruby text=じ]父様と[r]
ご結婚され、その時から私を可愛いがってくださる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公目パチ1回]
「ええ。[sp]月日とは早いものですね」[p]
;キャラ紹介へ
;暫定　夫婦への褒め言葉
[whosay name="磯野" color="dimgray"]
「[ruby text=お]御二人とも、仲の良い御夫妻でしたね」[p]
;エンディングの予感　夫婦
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公ポーズ指]
「そうですね……」[p]
;キャラ紹介はじまり
#
私は、飛鳥伯父様と紗代子さんの面影を想い浮かべた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(伯父様は思慮[ruby text=ぶか]深く、どこか影のある方でした)[p]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
(対して、紗代子さんは明るく[ruby text=ほが]朗らかな方……)[p]
;でした　過去形だとかなり会っていないになってしまう
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
(紗代子さんは、伯父様の再婚相手で、[r]
[sp]色々と難しい立場とだけ、お聞きしていますけれど……)[p]
;キャラ紹介おわり
(紗代子さん、どうしていらっしゃるのかしら？)[p]
[whosay name="磯野" color="dimgray"]
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[主人公目パチ1回]
「何分、飛鳥家は格式高いお家柄。[sp]ご準備に手間取られていたようで……」[p]
「紗代子様からは、お手紙とともに[ruby text=ご]御連絡が遅れて[r]
[sp]申し訳ないとも[ruby text=おっしゃ]仰ってました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしたのね。[r]
[sp]お手紙には、どの様に書かれているのかしら……？」[p]
[whosay name="磯野" color="dimgray"]
「どうぞ」[p]

[手紙飛鳥 fumi_number=]
*0_1
[cm]
[名前]さんへ。[r][r]
若葉の緑が目にも鮮やかなこの頃。[r]
[r]
お久しぶりです。　飛鳥紗代子です。[r]
[名前]さんも、ついにお手紙のやりとりを[r]
なされるんですってね！[r]
[名字]様から、お聞きしましたわ！
[glink target=*0_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*0_2
[sp][r]
どうしたら良いのか迷ったりしていないかしら？[r]
[r]
一応、これでも伯母みたいなものですから、[r]
[名前]さんのことが気になっているのよ。[r]
お互いを知るために手紙をたくさん書くことも大事だけど[r]
しっかりとお稽古はしておくべきよ～。[r]
[r]
私も、お稽古のおかげで旦那様に振り向いて貰えたから[r]
やっておいて損はないと思うわ。
[glink target=*0_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*0_3 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*0_3
あと、恋に『情報』は必須。[r]
お相手に対して、わからないことがありましたら[r]
一度、見直してみては如何かしら？[r]
特に手紙を出した後に『情報』をご覧になられると良いと思うわ！[r]
[r]これからも、たまにお手紙を送らせて[r]
頂きますわね。[r]
[名前]さんの幸せを応援しています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子
[glink target=*0_2 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*0_close" size=5 x=880 y=24 width=50 height=50]
[s]

*0_close
[cm]
[clearfix]
[clearstack]

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
(いつも通り……お元気な[ruby text=ご]御様子で安心しました）[p]
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
[sp]掛けて頂きましたわ」[p]
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
