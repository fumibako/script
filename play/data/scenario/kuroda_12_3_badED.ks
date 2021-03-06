﻿;=============================================
;◆黒田イベント【分岐：badED】黒田ルートかつ12月3週になった時点で好感度一定値未満又は麦の穂無しでbadED
;=============================================

*replay_kuroda_12_3_badED
[stopbgm]
[call storage="tyrano.ks"]
[setreplay name="replay_kuroda_12_3_badED_scene" storage="kuroda_12_3_badED.ks" target="replay_kuroda_12_3_badED_1"]

*replay_kuroda_12_3_badED_1
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_badED_scene1==undefined"]
	[skipstop]
[endif]
*scene1
[freeimage layer = 24]

[call target=*start storage="hensuu.ks"]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[wait time=10]
;【背景】庭・夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[eval exp="f.message_storage='message_bg/frame_red.png'"]
[chara_mod name="message_bg" storage=&f.message_storage time=1]

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
[stopbgm]

[主人公ポーズ通常]
[wait time=10]
[主人公ふぅ閉]
[wait time=10]
;【SE】時計（広間カチコチ）
[playse storage=tokei_hiroma.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ふぅ」[p]
;【BGM】冬支度（悲しげ・筝曲）
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
#
白い紙面と向かい合ったまま時は経ち[r]
窓の外はすっかり暗くなってしまった。[p]

シン……と冷え込みを感じて、思わず私は身を震わせた。[p]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（何をお伝えしたら、黒田様の力になれるのだろう）[p]
#
ペンを手に取ってみるものの、考えがまとまらず途方に暮れる。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_badED_scene2==undefined"]
	[skipstop]
[endif]
*scene2
;ゆっくり暗転
[chara_mod name="bg" storage="toumei.gif" time=1000]
[eval exp="f.kaogura='off'"]
[主人公退場]
[wait time=10]

――週末を迎えた。[p]
;【背景】町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[wait time=10]
[eval exp="f.kaogura='on'"]
[主人公ポーズ通常]
[wait time=10]
[主人公伏目]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様に、よろしくお伝え下さいませ」[p]

[whosay name="田中　岩男" color="#775545"]
「はい。貴方からの手紙を見れば、黒田もきっと喜びますよ」[p]

[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……はい」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（そうだと良いけれど、自信が無いわ）[p]

#
夜中までかかってやっと手紙をしたため[r]
田中様へ託したものの、心は晴れない。[p]

;ゆっくり暗転
[chara_mod name="bg" storage="bg/toumei.gif" time=1000]
[eval exp="f.kaogura='off'"]
[主人公退場]
[wait time=10]
――不安を抱えたまま、時が経ち[p]
;画面切り替え【背景】「主人公邸」
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[eval exp="f.kaogura='on'"]
[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name="磯野" color="dimgray"]
「お嬢様、黒田様よりお手紙が届いております」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

#
いつもなら嬉しい手紙だけれど[r]
今日は受け取った指先に重みを感じる。[p]
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_badED_scene3==undefined"]
	[skipstop]
[endif]
*scene3

;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
[主人公退場]
[wait time=10]
[fadeoutbgm time=3000]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif"]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=1 y=1 storage="bg/bg_tegami_kuroda.jpg" time=500]
[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=1]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
[名字] [名前]様[r]
[r]
[sp]長い間連絡できずに、大変申し訳ありませんでした。[r]
先日は、お手紙をいただきありがとうございました。[r]
身の上を案じて下さる心遣いを、勿体なく感じます。[r]
[r]
[sp]まだまだ研究が実を結ぶには、時が要りそうです。[r]
大変勝手ながら、いましばらく研究のみ[r]
一心に集中したいと考えています。[r]
[r]
[sp]このような状態で貴方に心労をおかけし続けることは[r]
心苦しく思いますので、このたびのことは[r]
白紙に戻していただきたいと存じます。[r]
……[p]
[freeimage layer = 29 time=1500]

;【BGM】雪解水（哀しげな曲
[playbgm storage="kanasige_yukigemizu.ogg" loop=true click=true]
;【背景】黒背景（完全な黒か、和紙風の黒っぽい背景か考え中。スクリプト組み時に決めます）全画面テキスト、褪せた灰青色文字（場面変化と緊張の色的な）色は仮でスクリプト組む際に調整予定
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]
[r]
[r]
後の文字は、涙でぼやけて目に入らない――[p]

（お忙しい上に、色々な出来事が[r]
[sp]重なってしまったのですもの……[r]
[r]
[sp]そのなかで、きっと真摯に考えて[r]
[sp]断りのお手紙を下さったのですね）[p]
[r]
そっと手紙を畳む手がふるえ[r]
ふと、動きを止める。[l][r]
[r]
ポタ、ポタ、と[r]
涙が紙に落ちて、にじんでいく。[p]
[wait time=500]
[r]
[r]
[r]
外には雪がしんしんと、積もりはじめている。[p]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
[wait time=500]
聞きなれた足音が部屋の外から響いてくる。[r]
磯野が心配して、様子を見に来たのだろう。[l][r]
[r]
その音に、私はハッと顔を上げ[r]
目元をぬぐい、表情を引き締めた。[l][r]
[r]
（淑女たるもの、うろたえてはいけないわ。[r]
もっとお稽古に励もう――）[r]
[sp]･[r]
[sp]･[r]
[sp]･[p]
[wait time=500]

;画面中央に
[font color=white size=35]
[r]
[r]
[r]
[r]
[sp]　　　　　　　　完[p]
[stopbgm]
[chara_mod name="bg" storage="toumei.gif" time=1000]
[wait time=10]
[clearfix]
[cm]
[resetfont]
[eval exp="sf.ED_kuroda_bad=1"]
;回想記録終了 
[endreplay] 
@jump storage="event.ks" target=*event_ED

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

