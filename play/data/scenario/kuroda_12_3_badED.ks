;=============================================
;◆黒田イベント【分岐：badED】黒田ルートかつ12月3週になった時点で好感度一定値未満又は麦の穂無しでbadED
;=============================================
*start
*replay_kuroda_12_3_badED
[if exp="f.flag_replay == true"]
	[cm]
[endif]
[stopbgm]
[ct]
[clearfix]
[clearstack]
[call storage="tyrano.ks"]
[setreplay name="replay_kuroda_12_3_badED_scene" storage="kuroda_12_3_badED.ks" target="replay_kuroda_12_3_badED_1"]
[iscript]
$(".list").remove();
$(".rp_bt").remove();
[endscript]
[if exp="f.flag_replay==true"]
[back storage="toumei.gif" time=1]
[endif]
;==========================================================================================
*replay_kuroda_12_3_badED_1
[freeimage layer = 1]
[wait time=10]
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
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_badED_scene1==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene1
[stopbgm]
[freeimage layer = 24]
[wait time=10]
;【背景】庭・夜
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa_yoru.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[プリロード画面消去]
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;==========================================================================================
*scene1_1

[主人公ふぅ閉]
[wait time=10]
;【SE】時計（広間カチコチ）
[playse storage=tokei_hiroma.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ふぅ」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】冬支度
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_koto_fuyujitaku.ogg'"]
[endif]

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
[bg wait=true method='crossfade' storage="toumei.gif" time=1000]
[wait time=10]
[eval exp="f.kaogura='off'"]
[主人公退場]
[wait time=10]
;==========================================================================================

――週末を迎えた。[p]

;==========================================================================================
;【背景】町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=1000]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[wait time=10]
;==========================================================================================
[eval exp="f.kaogura='on'"]
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公伏目]
[wait time=50]
[iscript]
$('.junbi_girl').remove();
[endscript]
;==========================================================================================

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
[bg wait=true method='crossfade' storage="toumei.gif" time=1000]
[wait time=10]
[eval exp="f.kaogura='off'"]
[主人公退場]
[wait time=10]

――不安を抱えたまま、時が経ち[p]
;==========================================================================================
;画面切り替え【背景】「主人公邸」
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa_yoru.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;主人公復帰表情目閉じ　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[eval exp="f.kaogura='on'"]
[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[iscript]
$('.junbi_girl').remove();
[endscript]
;==========================================================================================

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


[主人公退場]
[wait time=10]
[fadeoutbgm time=3000]
;==========================================================================================
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif"]
;==========================================================================================
;背景変更:手紙
[手紙黒田]
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
[手紙黒田読了]


;【BGM】雪解水（哀しげな曲
;[playbgm storage="kanasige_yukigemizu.ogg" loop=true click=true]
[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true click=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

;【背景】黒背景（完全な黒か、和紙風の黒っぽい背景か考え中。スクリプト組み時に決めます）全画面テキスト、褪せた灰青色文字（場面変化と緊張の色的な）色は仮でスクリプト組む際に調整予定
;メッセージレイヤを全画面用に設定変更
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue_dark.jpg" time=1000]
[wait time=10]
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]
[r]
[r]
後の文字は、涙でぼやけて目に入らない――。[p]

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
[fadeoutbgm time=3000]
[r]
（淑女たるもの、うろたえてはいけないわ。[r]
[sp]もっとお稽古に励もう――）[r]
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
[bg wait=true method='crossfade' storage="toumei.gif" time=1000]
[wait time=10]
[clearfix]
[cm]
[resetfont]
[eval exp="sf.ED_kuroda_bad = 1"]
[if exp="f.okeiko_gamen == true"]
	[eval exp="sf.ending_Number_of_times = sf.ending_Number_of_times + 1"]
[endif]
;回想記録終了 
[endreplay] 

[if exp="f.flag_replay == true"]
[イベントシーン終了]
[bg wait=true method='crossfade' storage="../fgimage/bg/plane_sepia.jpg" time=100]
[wait time=10]
@jump storage=replay2.ks
[endif]

[if exp="tf.test_kuroda == true"]
[イベントシーン終了]
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]

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
