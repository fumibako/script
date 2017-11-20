;=============================================
;◆黒田イベント【黒田母倒れデートキャンセル】黒田ルートかつ11月4週になった時点で1度だけ発生
;=============================================
*start
*replay_kuroda_11_4
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

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_4_scene1==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene1
[freeimage layer = 1]
[wait time=10]
[背景_庭]
[wait time=10]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;[chara_show left=1 top=391 layer=10 name="message_bg"]
[stopbgm]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;==========================================================================================
*scene1_1


[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;主人公の家編 イベント発生:11月第4週
;画面:通常会話パート
;【テキスト枠】会話パート用 下部横長

;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今日はどんな着物にしましょう」
[autosave]
[p]
;最初のシーンは短いためBGM無しにします

「黒田様はいつも紫色をお召しだから、この色が合うかしら」[p]
;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
「……早くお会いしたいわ」[p]

[wait time=300]
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name="磯野" color="dimgray"]
「お嬢様、黒田様からご伝言でございます」[p]
[stopse]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうぞ、入っていいわよ」[p]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
[whosay name="磯野" color="dimgray"]
「失礼いたします」[p]
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「先ほど、黒田様より使いの方が来られまして[r]
[sp]『本日のお約束ですが、所要で伺えなくなりました』とのご伝言です」[p]

;【立ち絵】主人公：驚
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ……！」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name="磯野" color="dimgray"]
「この非礼は日を改めてお詫びしたい、とも仰せでした」[p]

;【立ち絵】主人公：不安
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「一体、どうされたのかしら？」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=50]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
（先日の公園で、少し疲れたお顔をされていたような……）[p]
#
『黒田も泊まりで頑張っていますよ』[r]
という田中様の言葉が思い浮かぶ。[p]

[whosay name="磯野" color="dimgray"]
「はて、詳しいことは伺っておりませぬが」[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……わかったわ。ありがとう」[p]
;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
「下がってちょうだい」[p]

[whosay name="磯野" color="dimgray"]
「失礼いたします」[p]
;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
[wait time=500]
[stopse]
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]
#
……[p]
磯野はいつも、他家について深くは語らない。
[autosave]
[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_4_scene2==undefined"]
	[skipstop]
[endif]
*scene2

[whosay name=&sf.girl_namae color="#cf5a7f"]
（他の者が、何か聞いているかもしれないわ。そっと尋ねてみましょう）[p]
#
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
;【背景】暗転
[bg wait=true method='crossfade' storage="toumei.gif" time=2000]
[wait time=10]
;【SE】軽い足音（フェードアウト）
[playse storage=girl_out_walk.ogg loop=false ]
……[p]
;==========================================================================================
[whosay name="女中"]
「お嬢様。先ほど黒田様の車夫から聞いたのですが――」[p]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
「なんでも、ご母堂様の病が悪くて倒れられたとかで……[r]
[sp]朝からお医者様を呼ばれたりで、大変だったそうでございますよ」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ。……そうだったの」[p]
;【立ち絵】主人公：ほほえみ
[主人公困りほほえみ]
[wait time=10]
「ありがとう」[p]
[主人公通常]
[wait time=10]
;【SE】軽い足音（フェードイン）
[playse storage=girl_in_walk.ogg loop=false ]
[wait time=500]

;【背景】暗転終了、庭背景フェードイン
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=2000]
[wait time=10]
;【立ち絵】主人公：強気
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野！　磯野！」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
[whosay name="磯野" color="dimgray"]
「はい。お嬢様」[p]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「入ってちょうだい」[p]

[stopse]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
[whosay name="磯野" color="dimgray"]
「失礼いたします」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_4_scene3==undefined"]
	[skipstop]
[endif]
*scene3
;【立ち絵】主人公：伏目
[主人公伏目]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……黒田様のことを、聞いたわ」
[autosave]
[p]

[whosay name="磯野" color="dimgray"]
「……左様でございますか」[p]

;【立ち絵】主人公：不安
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「…………」[p]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「お見舞いに伺いたいの。……心配で」[p]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「構わないかしら？」[p]

[whosay name="磯野" color="dimgray"]
「お嬢様。それはなりませぬ」[p]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;【立ち絵】主人公：伏目
「ご心配はわかりますが[r]
[sp]……他家へのご訪問はよくよくのことでございますからね」[p]

「お見舞いでしたら、もう手配済みでございますよ」[p]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「わかったわ。……ありがとう」[p]
[fadeoutbgm time=3000]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
#
華族が自ら他家を訪ねることは相当な重みを持つ。[p]
まして女性から男性の家へとなれば[r]
相応の順序を踏まなければならないだろう。[p]
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
それを思い出し、訪問は慎むこととした。[p]
;【立ち絵】消去
[主人公退場]
[wait time=10]
;主人公の家編終了

;==========================================================================================
;黒田家編　主人公の家編に続いて発生
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

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_4_scene4==undefined"]
	[skipstop]
[endif]
*scene4
;【テキスト枠】消去
[freeimage layer = 26]
[freeimage layer = 27]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=0]
;機能ボタン消去
[機能ボタン消]
[eval exp="sf.FButton='OFF'"]

;【背景】黒背景（完全な黒か、和紙風の黒っぽい背景か考え中。スクリプト組み時に決めます）全画面テキスト、褪せた灰青色文字（場面変化と緊張の色的な）色は仮でスクリプト組む際に調整予定
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue_dark.jpg" time=1000]
[wait time=10]
[call target=*start storage="macro_tati_kuroda.ks"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【テキスト枠】全画面、白文字
[font color=white size=27]

[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲（攻略対象側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]
#
一方、黒田家では――。
[autosave]
[p]

#
【黒田 将貴】[r]
「――母上！　しっかりなさってください」[r]
[r]
……母上の枕元で看病を続け、何時間経ったのだろう。[r]
[r]
クレゾオルの匂いが鼻をつき[r]
ふと目を上げると周囲の様子がゆっくりと目に映る。[p]
[resetfont]
;画面:通常会話パート
;【テキスト枠】会話パート用 下部横長【茶色（男性視点用）】
[イベントシーン構築ボタン無し版枠茶色]


;【背景】和室（黒田家） フェードイン
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_kurodake.jpg" time=500]
[wait time=10]
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
[機能ボタン表示]

;【立ち絵】黒田：目閉じ（黒田視点パートのため、以下の本パート内では黒田立ち絵は縮小＆顔周辺をトリミングして顔グラ位置に表示するかもです。違和感が大きければ通常立ち絵予定）
[chara_mod name="kuroda_base" storage="kuroda/base_kimono.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]

#
部屋の空気に緊張と疲労とがにじむ。[r]
[r]
しんしんと寒さが身にしみるなか[r]
母上の身体だけが異様に熱を持ち続けている。[p]

時おり母上は何かつぶやくものの、小さくかすれた声で聞き取りづらい。[r]
[黒田閉伏目パチ1回]
[wait time=10]
母上の唇が少し動いたのを見て、耳を寄せてみる。[p]

;【立ち絵】黒田：不安
[黒田困り]
[wait time=10]

[whosay name="黒田　母" color="saddlebrown"]
「すみれ咲く、あの丘が懐かしいわ……」[p]
「将貴。あなたが小さいころ……よく連れていったものよ」[p]

;【立ち絵】黒田：哀しみ
[chara_mod name="kuroda_base" storage="kuroda/base_kimono_aozame.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_kurusige.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]

[whosay name="黒田 将貴" color="#7a65b2"]
「母上、その丘のある一帯は……」[p]
;【立ち絵】黒田：目閉じ
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
（もう、手放して、無いのです）[p]
#
そう口に出しそうになり、うつむいて言葉を飲み込んだ。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_4_scene5==undefined"]
	[skipstop]
[endif]
*scene5
;【立ち絵】黒田：伏目
[chara_mod name="kuroda_base" storage="kuroda/base_kimono.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2.png" time=0]
[wait time=50]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[wait time=10]
#
暮らしのために土地を売るたびに、少しずつ寡黙になる母上の姿を見てきた。[r]
母上は自然豊かな土地を、とても愛していた――。
[autosave]
[p]

[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
かつて父上と共に花や紅葉を楽しんだ笑顔が思い出される。[r]
今は父上も亡く、屋敷もすっかり寂しくなってしまった。[p]

[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[黒田閉目パチ1回]
[wait time=10]
[whosay name="黒田家家令" color="black"]
「将貴様」[p]
;【立ち絵】黒田：通常
「夜中に奥様がお倒れになってから[r]
[sp]ずっと看病し通しでございます」[p]

「あとは私どもにまかせて、そろそろお休みくださいませ」[p]

;【立ち絵】黒田：目閉じ
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2.png" time=0]
[wait time=50]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
#
家令が心配そうにこちらを見ている。[p]

;【立ち絵】黒田：伏目
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「……わかった。行く」[p]
#
と答えるものの、そばを離れると[r]
母上に何か良くないことが起こりそうで[r]
[r]
……身体が動かない。[p]
[黒田閉目パチ1回]
[wait time=10]
[fadeoutbgm time=3000]
[whosay name="黒田 将貴" color="#7a65b2"]
[wait time=10]
（母上には無理をさせてしまっているな）[p]
;【立ち絵】黒田：目閉じ
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2.png" time=0]
[wait time=50]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
（こんなときに、研究ばかりしていて良いものだろうか[r]
[sp]……しかし、研究も長く休むわけにはいかない）[p]
[stopbgm]

[黒田退場]
[wait time=10]
*scene_end
;黒田家編　終了
[eval exp="sf.event_kuroda_11_4 = 1"]

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
