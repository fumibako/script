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
[autosave改]
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
テストページから開始しています。手紙の場面までjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=200 top=100 left=380 opacity=0]
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
[主人公退場]
[wait time=10]
[cm]
[イベント中テスト数値表示]
@jump storage="kuroda_12_3_2.ks" target=*scene7
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
[autosave改]
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
[bg wait=true method='crossfade' storage="../fgimage/bg/anten.jpg" time=500]
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
[bg wait=true method='crossfade' storage="../fgimage/bg/anten.jpg" time=500]
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
[bg wait=true method='crossfade' storage="../fgimage/bg/anten.jpg" time=1000]
[wait time=50]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
;主人公編終了
;背景（効果）表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="bg_effect" storage="toumei.gif"]
[chara_show left=1 top=1 layer=2 name="bg_effect"]
;==========================================================================================
;フリーズや読込不良防止のためファイル分割します
@jump storage="kuroda_12_3_2.ks" target=*start
