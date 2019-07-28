;=============================================
;◆黒田イベント12_3_2黒田ルートかつ12月3週になった時点で好感度一定値以上かつ麦の穂所持で1度だけ
;=============================================
*start
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
[stopse]
[wait time=50]
[if exp="sf.SE=='ON'"]
[playse storage=thunder_gorogoro.ogg loop=false ]
[endif]
[wait time=50]

遠くに響く音は雷だろうか。[r]
[r]
;【SE】雨
[stopse]
[wait time=50]
[if exp="sf.SE=='ON'"]
[playse storage=rain.ogg loop=false ]
[endif]
[wait time=50]
嫌な夢を見た。
[autosave改]
[p]

;【SE】落雷
[stopse]
[wait time=50]
[if exp="sf.SE=='ON'"]
[playse storage=thunder.ogg loop=false ]
[endif]
[wait time=50]
雷が校舎に落ち、[ruby text="ごう"]轟[ruby text="おん"]音とともに[r]
[r]
研究室も何もかも崩れ落ちる夢。[p]

;【効果】白フラッシュ2回
[bg wait=true method='crossfade' storage="../fgimage/bg/white.jpg" time=10]
[wait time=70]
[bg wait=true method='crossfade' storage="../fgimage/bg/anten.jpg" time=10]
[wait time=350]
[bg wait=true method='crossfade' storage="../fgimage/bg/white.jpg" time=10]
[wait time=70]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue.jpg" time=1]
[wait time=50]
[freeimage layer = 2]
[wait time=50]

;[chara_mod name="bg_effect" storage="toumei.gif" time=50]
;[wait time=50]
;[chara_mod name="bg_effect" storage="bg/white.jpg" time=50]
;[wait time=10]
;[chara_mod name="bg_effect" storage="toumei.gif" time=100]
;[wait time=10]
;【効果】可能なら、全画面にガラスが割れ落ちるような、又は白い破片的なものが崩れ落ちるようなアニメーション挿入。実装困難なら省略
;このあとがフリーズしやすいのでclearstack
[clearstack]
[wait time=50]

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
[bg wait=true method='crossfade' storage="../fgimage/bg/anten.jpg" time=1000]
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
[if exp="sf.SE=='ON'"]
[playse storage=rain.ogg loop=false ]
[endif]

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
[if exp="sf.SE=='ON'"]
[playse storage=walk_kutsu.ogg loop=false ]
[endif]
;【SE】ドアが開く
[if exp="sf.SE=='ON'"]
[playse storage=door_open.ogg loop=false ]
[endif]
;【BGM】通常会話パート用

[chara_mod name="kuroda_base" storage="kuroda/base_kimono.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[黒田閉目パチ1回]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「いやぁ～、雨に降られちまって参ったよ」
[autosave改]
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
[if exp="sf.SE=='ON'"]
[playse storage=paper_su.ogg loop=false ]
[endif]
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
[if exp="sf.SE=='ON'"]
[playse storage=walk_kutsu.ogg loop=false ]
[endif]
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
[if exp="sf.SE=='ON'"]
[playse storage=rain.ogg loop=false ]
[endif]

;【SE】紙に触れる（スッ）
[if exp="sf.SE=='ON'"]
[playse storage=paper_su.ogg loop=false ]
[endif]
油紙を開くと、現れたのは封筒だった。[r]
[r]
見覚えのある文字。[r]
[r]
白い封筒が暖かく輝くように感じられた――。
[autosave改]
[p]
[if exp="sf.BGM == 'ON'"]
;【BGM】絆（想いを込める感じ）
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[wait time=50]
[endif]
[wait time=10]
[resetfont]

[if exp="sf.KSKIP == 'ON' && sf.trail_kuroda_12_3_scene8 == undefined"]
	[skipstop]
[endif]
*scene8
;【SE】紙に触れる（パラリ）
[if exp="sf.SE=='ON'"]
[playse storage=paper_open.ogg loop=false ]
[endif]

;【背景他】手紙用画面に切り替え
;主人公より手紙
;背景変更:手紙青
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/bg_tegami_blue.jpg" time=100]
[wait time=100]

;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

;メッセージレイヤサイズを手紙用に設定変更
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
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
[autosave改]
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
[bg wait=true method='crossfade' storage="../fgimage/bg/anten.jpg" time=500]
[wait time=50]
;【背景】黒背景の中心が温かく輝いている。封筒から麦の穂が机に落ちた様子が光の中に浮かび上がっている（こちらで素材を準備する予定です）
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_komugi_moya.jpg" time=1000]
[wait time=10]
;【SE】キラキラ
[if exp="sf.SE=='ON'"]
[playse storage=shine.ogg loop=false ]
[endif]
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
[bg wait=true method='crossfade' storage="../fgimage/bg/anten.jpg" time=1000]
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
