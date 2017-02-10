﻿;=============================================
;◆黒田イベント【小料理屋】黒田ルートかつ2月2週になった時点で1度だけ発生
=============================================
*replay_kuroda_2_2
[cm]
[clearfix]
[call target=*start storage="macro_tati_girl.ks"]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]

;黒田画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[chara_new name="kuroda_base" storage="toumei.gif"]
[chara_show left=250 top=60 layer=8 name="kuroda_base" time=0]
[wait time=10]
[chara_new name="kuroda_kuti" storage="toumei.gif"]
[chara_show left=250 top=60 layer=9 name="kuroda_kuti" time=0]
[wait time=10]
[chara_new name="kuroda_me" storage="toumei.gif"]
[chara_show left=250 top=60 layer=10 name="kuroda_me" time=0]
[wait time=10]
[chara_new name="kuroda_mayu" storage="toumei.gif"]
[chara_show left=250 top=60 layer=11 name="kuroda_mayu" time=0]
[wait time=10]
[chara_new name="kuroda_emo" storage="toumei.gif"]
[chara_show left=250 top=60 layer=12 name="kuroda_emo" time=0]
[wait time=10]
[call target=*start storage="macro_tati_kuroda.ks"]

;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene1==undefined"]
	[skipstop]
[endif]
*scene1

[stopbgm]

;【背景】主人公邸_庭
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=0]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]

;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
;[locate x=900 y=390]
;[button name="message_close" graphic="button_message_close.png" role=message ]
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
「お嬢様、黒田様がお迎えにお越しでございます」
[autosave]
[p]
;【BGM】古都に咲く花（プロローグ等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]

;【立ち絵】主人公：ほほえみ
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[r]
手早く身支度を確認し、部屋を出る。
[p]

;【背景】フェードアウト→屋敷玄関背景
[chara_mod name="bg" storage="toumei.gif" time=1000]
[preload storage="kuroda/base_haori_y1100.png"]
[preload storage="kuroda/base_haori_hohosome_y1100.png"]
[preload storage="kuroda/mayu_futuu_y1100.png"]
[preload storage="kuroda/me_futuu_y1100.png"]
[preload storage="kuroda/me_fusi1_y1100.png"]
[preload storage="kuroda/me_fusi2_y1100.png"]
[preload storage="kuroda/kuti_futuu_y1100.png"]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
（黒田様が来て下さるなんて……！）[p]
はやる心を抑えて玄関に急いだ。[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;【SE】軽い足音（フェードアウト）
[playse storage=girl_out_walk.ogg loop=false ]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene2==undefined"]
	[skipstop]
[endif]
*scene2

;【背景】フェードアウト→屋敷玄関背景
[chara_mod name="bg" storage="bg/bg_genkan.jpg" time=1000]
[wait time=10]
;【立ち絵】黒田：ほほえみ
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[黒田ほほえみ]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「[名前]さん！」
[autosave]
[p]

[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
「お久しぶりです。[r]
[sp]本当にご無沙汰してしまって、すみませんでした」[p]

;【立ち絵】黒田：笑顔（頬染め）
[chara_mod name="kuroda_base" storage="kuroda/base_haori_hohosome.png" time=0]
[wait time=10]
[黒田笑顔]
[wait time=10]
「でも、お会いできて嬉しいです！」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi.png" time=0]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene3==undefined"]
	[skipstop]
[endif]
*scene3

;【立ち絵】主人公：笑顔（頬染め）
[主人公笑顔]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様……私こそ、嬉しゅうございます」[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]

;【立ち絵】主人公：ほほえみ困り眉
[主人公困りほほえみ]
[wait time=10]
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[黒田閉目パチ1回]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi.png" time=0]
[wait time=10]
「謝らないでくださいませ」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
（すこしお痩せになったような。[r]
[sp]……苦労されたのですね）[p]

;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「寒いですから、もう出発してしまいましょうか」
[autosave]
[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene4==undefined"]
	[skipstop]
[endif]
*scene4

[主人公目パチ1回]
[wait time=10]
#
人力車に二人で乗り込む。[p]

[黒田退場]
[wait time=10]
[anim name="kuroda_base" left=210 top=30 time=0]
[anim name="kuroda_mayu" left=210 top=30 time=0]
[anim name="kuroda_me" left=210 top=30 time=0]
[anim name="kuroda_kuti" left=210 top=30 time=0]
[anim name="kuroda_emo" left=210 top=30 time=0]
[wa]
[chara_mod name="kuroda_base" storage="kuroda/base_haori_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi_y1100.png" time=0]
[wait time=10]

黒田様の手がぎこちなくこちらへ差しのべられたように見えたとき――[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="磯野" color="dimgray"]
「行ってらっしゃいませ」[p]

;【立ち絵】黒田：ハッとした顔（頬染め）
[chara_mod name="kuroda_base" storage="kuroda/base_haori_hohosome_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_odoroki_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_ake_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake_y1100.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
#
磯野の声を聞いて[r]
黒田様は手をサッと戻されてしまった。[p]
[chara_mod name="kuroda_base" storage="kuroda/base_haori_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]

;【立ち絵】主人公：目閉じ困り眉
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji_y1100.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（もう、磯野……）[p]

;【背景】町並みフェードイン
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=1000]
;【立ち絵】黒田：通常(近
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene5==undefined"]
	[skipstop]
[endif]
*scene5
;【立ち絵】主人公：通常
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
#
隣に並んで腰かけると、距離の近さを感じて[r]
思わず寒さを忘れてしまう。
[autosave]
[p]

[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[黒田目パチ1回L]
[wait time=10]
いつもの町並みも、隣に黒田様がいらっしゃると[r]
鮮やかに目に映る。[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake_y1100.png" time=0]
[wait time=10]
久しぶりの会話を楽しむうちに[r]
遠目にも美しい紅色が見えてきた。[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene6==undefined"]
	[skipstop]
[endif]
*scene6

;【立ち絵】黒田：ほほえみ
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi_y1100.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「梅が見えてきましたね。こちらが今日のお店です」[p]

[chara_mod name="kuroda_me" storage="kuroda/me_fusi2_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake_y1100.png" time=0]
[wait time=10]
「研究室の先輩に教えてもらったお店なのですが[r]
[sp]お料理もなかなか素敵なのですよ」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「見事な紅梅ですね。香りが漂ってきそうな……」
[autosave]
[p]
[主人公閉目パチ1回]
[wait time=10]

;【部分分岐】梅柄の便せんに梅の香を焚き染めたもの【開始】
;"梅柄に梅の香を焚き染めたもの" exp="f.fumi_to_kuroda1_4='b'"
[if exp="f.fumi_to_kuroda1_4=='b'"]
*scene7

[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu_y1100.png" time=0]
[wait time=10]
[黒田目パチ1回L]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「[名前]さんには、香りを早めに届けていただきましたね」[p]

;【立ち絵】黒田：笑顔
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_warau_y1100.png" time=0]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
「お手紙の梅の絵と香りで、今日お会いするのが一層楽しみになったのですよ」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi_y1100.png" time=0]
[wait time=10]
[endif]


;【部分分岐】梅柄の便せんに梅の香を焚き染めたもの【終了】

;【部分分岐】梅にうぐいす柄の便せん【開始】
;"梅にうぐいす柄" exp="f.fumi_to_kuroda1_4='c'"
[if exp="f.fumi_to_kuroda1_4=='c'"]
*scene8
[黒田目パチ1回L]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「[名前]さんには、梅にうぐいすの絵が入ったお手紙をいただきましたね」[p]

;【立ち絵】黒田：ほほえみ
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi_y1100.png" time=0]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
「春を感じて気持ちがあたたかくなりました」[p]
[endif]
;【部分分岐】梅にうぐいす柄の便せん【終了】

;【部分分岐】無地の便せん【開始】
[if exp="f.fumi_to_kuroda1_4=='a'"]
;"無地" exp="f.fumi_to_kuroda1_4='a'"
*scene9
;【立ち絵】黒田：ほほえみ
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi_y1100.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「ほんとうですね」[p]
[endif]
;【部分分岐】無地の便せん【終了】

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene10==undefined"]
	[skipstop]
[endif]
*scene10
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
#
しばらく梅を堪能した後、寒さを気にした黒田様が[r]
店へと先導してくださる。[p]
[黒田退場]
[wait time=10]
[anim name="kuroda_base" left=250 top=60 time=0]
[anim name="kuroda_mayu" left=250 top=60 time=0]
[anim name="kuroda_me" left=250 top=60 time=0]
[anim name="kuroda_kuti" left=250 top=60 time=0]
[anim name="kuroda_emo" left=250 top=60 time=0]
[wa]

;【背景】フェードアウト→黒背景or黒っぽい和紙背景orあれば小料理屋店内風背景
[chara_mod name="bg" storage="bg/bg_prologue_dark.jpg" time=1000]
;【立ち絵】黒田：通常
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「こんにちは。梅が見事ですね」[p]

[黒田目パチ1回]
[wait time=10]
[whosay name="小料理屋店主" color="black"]
「黒田さん、ありがとうございます。寒い中、ようこそ。[r]
[sp]今年も良く咲いてくれまして」
[autosave]
[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[黒田退場]
[wait time=10]
[anim name="kuroda_base" left=210 top=30 time=0]
[anim name="kuroda_mayu" left=210 top=30 time=0]
[anim name="kuroda_me" left=210 top=30 time=0]
[anim name="kuroda_kuti" left=210 top=30 time=0]
[anim name="kuroda_emo" left=210 top=30 time=0]
[wa]
;【背景】フェードアウト→黒背景or黒っぽい和紙背景orあれば小料理屋店内風背景
[eval exp="f.haikei_credit='photo by Omar + Kazumi Ovalle　http://www.flickr.com/photos/ovalle/4664496288/'"]
[chara_mod name="bg" storage="bg/bg_koryouriya.jpg" time=1000]
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene11==undefined"]
	[skipstop]
[endif]
*scene11
[主人公目パチ1回]
[wait time=10]
#
店主が席に案内し[r]
温かいお茶を淹れてくれる。[p]

[whosay name="小料理屋店主" color="black"]
「今日は活けのホウボウが入りましてね」
[autosave]
[p]

;【立ち絵】黒田：ほほえみ
[chara_mod name="kuroda_base" storage="kuroda/base_haori_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi_y1100.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「ホウボウですか。良いですね」[p]
[主人公目パチ1回]
[wait time=10]

[chara_mod name="kuroda_me" storage="kuroda/me_fusi2_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko_y1100.png" time=0]
[wait time=10]
#
店主がカウンター上の水槽を示す。[p]
[chara_mod name="kuroda_me" storage="kuroda/me_yokofusi_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_toji_y1100.png" time=0]
[wait time=100]
[chara_mod name="kuroda_me" storage="kuroda/me_yokofusi_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko_y1100.png" time=0]
[wait time=10]

鮮やかな青緑色に輝くヒレを翼のように広げ[r]
紅色の美しい魚がゆったりと水槽の底面を歩いていた。[p]

;【立ち絵】主人公：驚
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お魚なのに……まるで足があるみたい。[r]
[sp]それにしても、なんて美しいヒレでしょう！」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake_y1100.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「この足のように見えるのは、ヒレの一部なのですよ。[r]
[sp]ヒョコヒョコと歩く姿が可愛いですね」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]

[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi_y1100.png" time=0]
[wait time=10]
「顔や動きに愛嬌があって美しくて、好きな魚です」[p]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu_y1100.png" time=0]
[wait time=10]

[whosay name="小料理屋店主" color="black"]
「綺麗ですよね。　私はこの魚を見ると[r]
[sp]いつも振袖姿の娘さんを思い浮かべるんですよ」[p]

[chara_mod name="kuroda_me" storage="kuroda/me_fusi2_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=10]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「たしかに、このヒレの鮮やかさは振袖みたいですね」[p]
[主人公閉目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene12==undefined"]
	[skipstop]
[endif]
*scene12

[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="小料理屋店主" color="black"]
「そうでしょう。[r]
[sp]このホウボウを、お刺身でどうでしょう？」
[autosave]
[p]

[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake_y1100.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「良いですね。[名前]さんは良いですか？」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]

[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
[主人公閉目パチ1回]
[wait time=10]

[chara_mod name="kuroda_me" storage="kuroda/me_yoko_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake_y1100.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「では、お願いします」[p]
[fadeoutbgm time=3000]

[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="小料理屋店主" color="black"]
「はい。お造りしますね」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene13==undefined"]
	[skipstop]
[endif]
*scene13
[stopbgm]
;【BGM】絆（想いを込める感じ）
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true click=true]
#
店主は奥へ姿を消した。他に客の姿は無い。
[autosave]
[p]
;【立ち絵】主人公：通常
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
;【立ち絵】黒田：目閉じ
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_toji_y1100.png" time=0]
[wait time=10]

[whosay name="黒田 将貴" color="#7a65b2"]
「……」[p]

;【立ち絵】黒田：真剣
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_tuyoki_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_ake_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake_y1100.png" time=0]
[wait time=10]
「[名前]さん。今日は改めてお礼とご報告をしたいのです」
[autosave]
[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu_y1100.png" time=0]
[wait time=10]

;【立ち絵】主人公：驚（頬染め）
[主人公驚]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お礼はお気になさらないでくださいませ」[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]

;【立ち絵】主人公：通常
[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
「『ご報告』とは何でしょうか？」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene14==undefined"]
	[skipstop]
[endif]
*scene14
;【立ち絵】黒田：目閉じ
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_toji_y1100.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「いえ、先にお礼を言わせてください。[r]
[sp]昨年末にいただいたお手紙には……本当に励まされました」
[autosave]
[p]

[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage_y1100.png" time=0]
[wait time=10]
#
懐紙を取り出し、そっと大切そうに広げられた。[p]

[黒田退場]
[wait time=10]
;暗転
[chara_mod name="bg" storage="toumei.gif" time=500]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;【背景】黒背景の中心が温かく輝いている。封筒から麦の穂が机に落ちた様子が光の中に浮かび上がっている（こちらで素材を準備する予定です）
[chara_mod name="bg" storage="bg/bg_komugi_moya.jpg" time=1000]
;【SE】キラキラ
[playse storage=shine.ogg loop=false ]
[chara_mod name="bg" storage="bg/bg_komugi.jpg" time=3000]

[whosay name="黒田 将貴" color="#7a65b2"]
「これを見て、失敗を重ねても挑戦を続けようという力をいただきました。[r]
[sp]そして実験結果を別の角度から見直したところ[r]
[sp]新たな成果が得られたのです」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]

;【立ち絵】黒田：通常
[chara_mod name="kuroda_base" storage="kuroda/base_haori_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]
「時間はかかってしまいましたが、まとめることもできました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……そうだったのですか」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene15==undefined"]
	[skipstop]
[endif]
*scene15
[黒田目パチ1回L]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「成果を得られたのは、黒田様ご自身のお力です。[r]
[sp]麦の穂は、それほどのものではありませんわ」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi_y1100.png" time=0]
[wait time=10]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
「……でも、大切にしてくださって[r]
[sp]嬉しゅうございます」
[autosave]
[p]

;【立ち絵】黒田：笑顔
[chara_mod name="kuroda_me" storage="kuroda/me_niko_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_warau_y1100.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「これは、私の宝物ですよ！」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi_y1100.png" time=0]
[wait time=10]

;【立ち絵】主人公：笑顔
[主人公笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まぁ……そうおっしゃっていただいて[r]
[sp]麦も幸せ者ですね」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene16==undefined"]
	[skipstop]
[endif]
*scene16
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（麦の穂に込めた気持ちを分かってくださっていた[r]
[sp]……同封するには迷いもあったけれど、本当によかった）[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene17==undefined"]
	[skipstop]
[endif]
*scene17
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
;【立ち絵】黒田：真剣
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_tuyoki_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake_y1100.png" time=0]
[wait time=10]
;【背景】フェードアウト→黒背景or黒っぽい和紙背景orあれば小料理屋店内風背景
[chara_mod name="bg" storage="bg/bg_koryouriya.jpg" time=1000]
[whosay name="黒田 将貴" color="#7a65b2"]
「そしてご報告なのですが」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_ake_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake_y1100.png" time=0]
[wait time=10]
「この度、植物研究所からお誘いをいただきまして[r]
[sp]就職することに決まったのです」
[autosave]
[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]
[黒田目パチ1回L]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
「おめでとうございます！[r]
[sp]研究を続けられるのは、何よりでございますね」[p]

;【立ち絵】黒田：ほほえみ
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi_y1100.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「はい、本当に。願ってもないことです。[r]
[sp]これまでの研究の積み重ねを見て下さったそうで[r]
[sp]ありがたいことです」[p]

;【立ち絵】主人公：ほほえみ
[主人公笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それはもう本当に……おめでとうございます」[p]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
（苦労が実を結ばれて……本当によかった）[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_2_2_scene18==undefined"]
	[skipstop]
[endif]
*scene18
;【立ち絵】黒田：通常
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「もうしばらく卒業までバタバタしてしまうのですが……[r]
[sp]卒業式の日に、またお会いできますか？」
[autosave]
[p]
[黒田目パチ1回L]
[wait time=10]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、もちろんです！」[p]

[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi_y1100.png" time=0]
[wait time=10]
[主人公閉目パチ1回]
[wait time=10]
「楽しみに、お待ちしております」[p]
[黒田退場]
[wait time=10]

;小料理屋編　終了
;◆「休憩中」画像消去
[freeimage layer = 26]

@jump storage="event.ks" target=*event_owari

;回想記録終了 
[endreplay] 