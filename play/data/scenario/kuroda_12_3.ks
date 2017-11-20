;=============================================
;◆黒田イベント【分岐：normal/goodED】黒田ルートかつ12月3週になった時点で好感度一定値以上かつ麦の穂所持で1度だけ
;=============================================
*start
*replay_kuroda_12_3
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
[call target=*start storage="macro_tati_kuroda.ks"]
[preload storage="data/fgimage/bg/white.jpg"]
;==========================================================================================
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_scene1==undefined"]
	[skipstop]
[endif]
;==========================================================================================
[stopbgm]
[cm]
[if exp="tf.test_kuroda != true"]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[endif]
;==========================================================================================
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

;==========================================================================================
*scene1
[freeimage layer = 1]
[wait time=10]
;【背景】黒背景（完全な黒か、和紙風の黒っぽい背景か考え中。スクリプト組み時に決めます）全画面テキスト、褪せた灰青色文字（場面変化と緊張の色的な）色は仮でスクリプト組む際に調整予定
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue_dark.jpg" time=500]
[wait time=10]
[プリロード画面消去]
[wait time=50]

;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
@layopt layer=message0 visible=true
[current layer="message0"]
;テキスト全画面
[font color=white size=27]
;名前欄消去
[whosay name=""]

;主人公編
;【背景】黒背景又は黒っぽい和紙風
;【テキスト枠】全画面、白フォント
;【BGM】主人公邸通常会話パート用
;【SE】時計（広間カチコチ）
[playse storage=tokei_hiroma.ogg loop=false ]
[r]
（黒田様のお力になりたい）[r]
[r]
そのための――[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[r]
[r]
『手紙』
[autosave]
[p]
[r]
（でも、どのように書けばよいものか……）[r]
[r]
この一週間、お稽古の合間に何度も書いては直し[r]
悩み続けてきた。[p]
[r]
手紙を託す日が迫り、ついに心を決め[r]
[r]
背筋を伸ばして文机に向かう。[p]
;【SE】ペンで書く
[playse storage=pen_write.ogg loop=false ]

[resetfont]
;==========================================================================================
;【背景】主人公邸_庭
;【背景】庭・夜
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa_yoru.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;==========================================================================================
;【テキスト枠】会話パート用 下部横長
[イベントシーン構築ボタン無し版]
;[chara_config ptext="chara_name_area"]
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]

;【立ち絵】主人公：目閉じ
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公ふぅ閉]
[wait time=50]
[iscript]
$('.junbi_girl').remove();
[endscript]
[if exp="tf.test_gamen==true"]
テストページから開始しています。町の場面までjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]


*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
[イベント中テスト数値表示]
@jump target=*scene3_end
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
そのまま続きを表示します。[p]
[cm]
[イベント中テスト数値表示]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ふぅ」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_scene2==undefined"]
	[skipstop]
[endif]
*scene2

;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
#
手紙を書き終えるころには、窓の外はすっかり暗くなってしまった。[r]
シン……と冷え込みを感じて思わず身を震わせた。
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（少しでもお力になれると良いのだけれど。[r]
[sp]まだ何か足りない気がする）[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
（文字だけでなく、何か心にスッと届くようなものがあれば……）[p]

;【立ち絵】主人公：伏目
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
#
ペンを置き、文机の引き出しを開けてみる。[r]
思い出の品々を大切に置いている引き出しの中の箱。[p]
……その隅の品にそっと手を触れる。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_scene3==undefined"]
	[skipstop]
[endif]
*scene3

;【立ち絵】主人公：通常又は驚
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「これは……」[p]
[fadeoutbgm time=3000]
#
;==========================================================================================
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif"]
[wait time=10]
;【立ち絵】消去
[主人公退場]
[wait time=10]
;==========================================================================================
;暗転
[bg wait=true method='crossfade' storage="toumei.gif" time=500]
[wait time=50]
;画面切り替え、【背景】黒背景又は和紙背景にぼんやりとした光が浮かび、キラキラ輝いている感じのもの（こちらで作成予定。作成に時間がかかりそうなら切り替え無し）
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_komugi_moya.jpg" time=1000]
[wait time=10]
;【SE】キラキラ
[playse storage=shine.ogg loop=false ]
;【テキスト枠】下部、白フォント
[font color=white size=27]

これなら、黒田様のお心に届くかしら……。[p]
[resetfont]

*scene3_end
;ゆっくり暗転
[bg wait=true method='crossfade' storage="toumei.gif" time=500]
[wait time=50]
;==========================================================================================
;【BGM】冬支度（悲しげ・筝曲）
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】冬支度
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_koto_fuyujitaku.ogg'"]
[endif]
;画面切り替え、【背景】「町並み」
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=1000]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[wait time=10]
;==========================================================================================
;【テキスト枠】会話パート用 下部横長
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
[wait time=10]
;機能ボタン登場
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;==========================================================================================
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_scene4==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene4
;【立ち絵】主人公：目閉じ
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
;【立ち絵】主人公：通常
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=50]
[iscript]
$('.junbi_girl').remove();
[endscript]
#
翌日、町にて――。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様に、よろしくお伝えくださいませ」[p]

[主人公目パチ1回]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「貴方からの手紙を見れば、黒田もきっと喜びますよ」[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……はい」[p]
[fadeoutbgm time=3000]

[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;【立ち絵】主人公：通常
「よろしくお願いいたします」[p]
田中様に託した手紙を、祈るような心地で見つめた――。[p]
#
[主人公退場]
[wait time=10]
;==========================================================================================
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif"]
[wait time=10]
;==========================================================================================
;暗転
[bg wait=true method='crossfade' storage="toumei.gif" time=1000]
[wait time=50]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
;主人公編終了
;背景（効果）表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="bg_effect" storage="toumei.gif"]
[chara_show left=1 top=1 layer=2 name="bg_effect"]
;==========================================================================================
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_scene5==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene5
;黒田編開始
;【背景】黒背景又は黒っぽい和紙風
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue.jpg" time=1]
[wait time=10]
;【テキスト枠】全画面、白フォント
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]

[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]
;==========================================================================================

#
――その夕刻、研究室。[l][r]
[r]
;【SE】雷（ゴロゴロ
[playse storage=thunder_gorogoro.ogg loop=false ]

遠くに響く音は雷だろうか。[r]
[r]
;【SE】雨
[playse storage=rain.ogg loop=false ]
嫌な夢を見た。
[autosave]
[p]

;【SE】落雷
[playse storage=thunder.ogg loop=false ]
雷が校舎に落ち、[ruby text="ごう"]轟音とともに[r]
[r]
研究室も何もかも崩れ落ちる夢。[p]

;【効果】白フラッシュ3回
[bg wait=true method='crossfade' storage="../fgimage/bg/white.jpg" time=10]
[wait time=70]
[bg wait=true method='crossfade' storage="toumei.gif" time=10]
[wait time=150]
[bg wait=true method='crossfade' storage="../fgimage/bg/white.jpg" time=10]
[wait time=70]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue.jpg" time=1]
[wait time=50]
[freeimage layer = 2]

;[chara_mod name="bg_effect" storage="toumei.gif" time=50]
;[wait time=50]
;[chara_mod name="bg_effect" storage="bg/white.jpg" time=50]
;[wait time=10]
;[chara_mod name="bg_effect" storage="toumei.gif" time=100]
;[wait time=10]
;【効果】可能なら、全画面にガラスが割れ落ちるような、又は白い破片的なものが崩れ落ちるようなアニメーション挿入。実装困難なら省略
;このあとがフリーズしやすいのでclearstack
[clearstack]

【黒田 将貴】[r]
[r]
（夢は無意識の願望を映すというが。[r]
[r]
[sp]『何もかも、壊れてしまえばいい』[r]
[r]
[sp]……そんな望みが、心の奥底に[r]
[sp]あるのだろうか）[p]

【黒田 将貴】[r]
[r]
「恐ろしい」[p]
記憶を振り払うように目をこすり[r]
[r]
周囲をぼんやりと眺めた。[p]
[resetfont]

;画面:通常会話パート

;【背景】あればレトロな実験室　 フェードイン（見つからなければ、黒背景）
[bg wait=true method='crossfade' storage="toumei.gif" time=1000]
[wait time=50]
[eval exp="f.haikei_credit=''"]
;【テキスト枠】会話パート用 下部横長【茶色（男性視点用）】
[イベントシーン構築ボタン無し版枠茶色]

;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]

;【立ち絵】黒田：横目（青ざめ）
[chara_mod name="kuroda_base" storage="kuroda/base_kimono_aozame.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_kurusige.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_yoko.png" time=0]
[wait time=10]

;【SE】雨
[playse storage=rain.ogg loop=false ]

実験台のガラス器具には、つい先刻の[r]
――新たな『失敗』[r]
無残な姿が窓からの弱い光に浮かび上がっている。[p]
[黒田目パチ1回]
[wait time=10]

積まれた記録紙や実験ノートも目に映り、現実に引き戻される。[p]

;【立ち絵】黒田：目閉じ（青ざめ）
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「失敗の山――だな」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
#
溜め息を吐いて、力なく椅子にもたれる。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_scene6==undefined"]
	[skipstop]
[endif]
*scene6

;【SE】足音（靴
[playse storage=walk_kutsu.ogg loop=false ]
;【SE】ドアが開く
[playse storage=door_open.ogg loop=false ]
;【BGM】通常会話パート用

[chara_mod name="kuroda_base" storage="kuroda/base_kimono.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[黒田閉目パチ1回]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「いやぁ～、雨に降られちまって参ったよ」
[autosave]
[p]

[whosay name="黒田 将貴" color="#7a65b2"]
「……おかえり」[p]
;【立ち絵】黒田：通常
[黒田通常]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「メシの材料を、八百屋のおばちゃんに分けてもらったぜ！」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_mu.png" time=0]
[wait time=10]
#
そう誇らしげに包みを掲げて見せる。[r]
全く、この男はいつ見ても快活だ。[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「そうだ黒田」[p]

[黒田目パチ1回]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「ん？」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[whosay name="田中　岩男" color="#775545"]
「これだけは、厳重に包んで雨から守ったんだ」[p]
#
油紙に包まれたものを、大切そうに両手で差し出す。[p]

;【立ち絵】黒田：驚
[黒田驚]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「これは……？」[p]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]

;【SE】足音（靴
[playse storage=walk_kutsu.ogg loop=false ]
#
田中は声だけ残して足早に去って行く。[p]

[whosay name="田中　岩男" color="#775545"]
「んじゃ、向こうでメシ作ってるから。[r]
[sp]またな～」[p]
#
[fadeoutbgm time=3000]
;【立ち絵】消去
[黒田退場]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_scene7==undefined"]
	[skipstop]
[endif]
*scene7

;暗転
;【背景】黒背景又は黒っぽい和紙風
;【テキスト枠】全画面、白フォント
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif"]
[wait time=10]

;【背景】黒背景又は黒っぽい和紙風
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue.jpg" time=500]
[wait time=10]
;【テキスト枠】全画面、白フォント
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]


;【SE】雨
[playse storage=rain.ogg loop=false ]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
油紙を開くと、現れたのは封筒だった。[r]
[r]
見覚えのある文字。[r]
[r]
白い封筒が暖かく輝くように感じられた――。
[autosave]
[p]
[resetfont]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_scene8==undefined"]
	[skipstop]
[endif]
*scene8
[if exp="sf.BGM=='ON'"]
;【BGM】絆（想いを込める感じ）
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true click=true]
[endif]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【背景他】手紙用画面に切り替え
;主人公より手紙
[手紙青]
[wait time=100]
[font color=navy size=21]

黒田 将貴様[r]
[r]
[sp]冷え込む日が続いておりますね。[r]
霜の中に立つ樹々を見ては、黒田様を思い出します。[r]
[r]
植物には厳しい環境を何度もくぐりぬける強さがある、と[r]
いつか話して下さった言葉は、私に力を与えてくださいました。[p]
[r]
[r]
[r]
葉を落として一見何もまとわない冬の樹の姿も[r]
年々幹が太さを増し、力強く感じられます。[r]
[r]
積み重ねるということの大切さを教えてくれるようにも思います。[r]
[r]
霜が溶け、芽吹く日をお祈りしております。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　 　　　[名字]　[名前][p]
[resetfont]

;【背景】黒背景又は黒っぽい和紙風
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue.jpg" time=500]
[wait time=10]
;【テキスト枠】全画面、白フォント
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_12_3_scene9==undefined"]
	[skipstop]
[endif]
*scene9

懐かしい文字に温かい言葉。[r]
[r]
何度も手紙を読み返すうちに雨は上がり[r]
[r]
窓からの光は夕焼け色に染まり始めている。
[autosave]
[p]

【黒田 将貴】[r]
[r]
失敗ばかりの自分を想って[r]
こんなにも心を尽くしてくれるとは。[r]
[r]
（……ありがたい）[p]

言葉が胸に沁み入るようだ。[r]
[r]
大きく深呼吸をし、手紙を丁寧にたたんで直そうとする。[r]
[r]
そのとき、ハラリと封筒から何かが机に落ちた。[p]

;暗転
[bg wait=true method='crossfade' storage="toumei.gif" time=500]
[wait time=50]
;【背景】黒背景の中心が温かく輝いている。封筒から麦の穂が机に落ちた様子が光の中に浮かび上がっている（こちらで素材を準備する予定です）
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_komugi_moya.jpg" time=1000]
[wait time=10]
;【SE】キラキラ
[playse storage=shine.ogg loop=false ]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_komugi.jpg" time=3000]
[wait time=10]
;【テキスト枠】会話パート用 下部横長
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[font color=white]
麦の穂……。[p]
[sp]踏まれても踏まれても強く立ち上がるという、麦。[p]
[resetfont]

;【背景】あればレトロな実験室　 フェードイン（見つからなければ、黒背景）
[bg wait=true method='crossfade' storage="toumei.gif" time=1000]
[wait time=50]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_brown.png"]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]

;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]

;【立ち絵】黒田：真剣
[chara_mod name="kuroda_base" storage="kuroda/base_kimono.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_ake.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]

思わず背筋を伸ばし、手紙をそっと手に取り眺める。[p]
[fadeoutbgm time=3000]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[fadeoutbgm time=3000]
（もう一度――いや、何度でも研究に向かおう。[r]
[sp]試料が尽きようとも、方法はあるはずだ）[p]
[stopbgm]
[黒田退場]
[wait time=10]

*scene_end
;黒田編終了
[eval exp="sf.event_kuroda_12_3 = 1"]

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
