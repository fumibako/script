;========================================================================
;イベント１５回目【指切りエンド】3月4週、
;=======================お芝居の準備中です==================================
[setreplay name="replay_hujieda_hujieda_3_4_goodED_scene" storage="hujieda/hujieda_3_4_normalED.ks" target="start"]
[setreplay name="replay_hujieda_hujieda_3_4_normalED_scene" storage="hujieda/ｈujieda_3_4_normalED.ks" target="start"]
*replay_hujieda_hujieda_3_4_normalED_scene
[iscript]
$('rp_bt').remove();
$('.list').remove();
[endscript]
[freeimage layer = 1]
[wait time=10]
[if exp="f.flag_replay == true"]
;[bg wait=true storage="toumei.gif" time=1]
[endif]
*start
[stopbgm]
[call target=*3_4_normalED storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]

[if exp="f.flag_replay == true"]
;@layopt layer=1 visible=true
;[chara_show name="bg"]
[endif]

;【背景】たんぽぽ公園
[bg wait=true storage="../fgimage/bg/hujieda_tanpopo_kouen.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/hujieda_tanpopo_kouen.jpg"]
[eval exp="f.haikei_credit=''"]
[keyframe name="animation1"]
[frame p=100% x="2000" y="1000"]
[endkeyframe]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================
*seen_1a
[whosay name=&sf.girl_namae color="#cf5a7f"]
「忙しい時間を割いて頂き、ありがとうございます。[r]
[主人公目パチ1回]
[sp]それにしても、またどうしてこの場所に？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
#
木漏れ日は暖かく、もう桜も咲き始めている。[r]
今日は、お父様とお母様が公園に連れて行ってくれた。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「私たちも、[名前]のお手紙の相手に興味をもったのでな」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
「まあ……！　それは嬉しい事ですわ」[p]
[image name="kaede" storage="bg/B4nFWraU42/img_kaede.png" layer=1 zindex=2 top=0 left=-200 visible=true time=50]
[wait time=50]
[kanim name="kaede" keyframe="animation1" time="6000"]
[wait time=10]
#
お父様達の意外な言葉に嬉しく思っていると、[r]
暖かな風が吹き、白い綿毛が飛んでいく。
[wait time=1000]
[p]
;===========================全画面==============================================
[iscript]
$('.kaede').remove();
[endscript]
;【背景】綿毛の背景全画面表示用　hijieda_kaede_sita2.jpg
[暗転２ storage="bg/hijieda_kaede_sita2.jpg"]
;【立ち絵】藤枝：真剣
[藤枝ベース私服]
[藤枝微笑み]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;=========================================================================

そして、その後、私は言葉を告げられなくなった。[p]

;=========================================================================
[resetfont]
[主人公驚]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;【背景】たんぽぽ
[bg wait=true storage="../fgimage/bg/hujieda_tanpopo.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/hujieda_tanpopo.jpg"]
[暗転２終了]
;=========================================================================
――目に飛び込んできたのは、誰よりも大切な人。[p]
;==================================================


咲き競う一面のタンポポ畑の上で、彼は私に柔らかく微笑んでいた。[p]

そして、藤枝様は、お父様に礼をして言った。[p]
[藤枝真剣]
[whosay name="藤枝 肇" color=%mp.color]
「[名字]様、[r]
[sp]この度は機会を頂き、ありがとうございます！」[p]

[主人公ほほえみ]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「藤枝君、[r]
[sp]君は、新聞奨学生になり、音楽学校への編入試験も[r]
[sp]優秀な成績だったと聞いた。 努力家のようだな」[p]

;【立ち絵】藤枝：微笑み
[whosay name="藤枝 肇" color=%mp.color]
[藤枝微笑み]
「自分の夢と恋の為ですから[r]
[sp]どんな努力を惜しむつもりはありません」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「良い目をしているな。[r]
[sp]だが、[名前]との仲を正式に認めるのは早いし[r]
[sp]君の努力が必ずしも報われとは限らない」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「それでも、自力で道を開けたときは、[r]
[sp]必ず君と[名前]の仲を認めよう」[p]

;【立ち絵】藤枝：微笑み
[藤枝笑顔大]
[whosay name="藤枝 肇" color=%mp.color]
「今の僕にとって十分なお言葉です。[r]
[sp]慢心ぜず努力し、彼女にふさわしくなります」[p]

*seen_1

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]に苦労させるつもりはない。[r]
[sp]君が一人前になるまではどれぐらいだろうな？」[p]

;【立ち絵】藤枝：真剣
[藤枝通常]
[whosay name="藤枝 肇" color=%mp.color]
「あと一年したら学校は卒業ですが、数年は留学します」[p]

「留学を終えたときには一人前になっているように[r]
[sp]沢山のコンクールに出場し、作曲にも励みます」[p]

[fadeoutbgm time=3000]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「欧米諸国は、音楽のレベルが高いと聞くが……」[p]

;【立ち絵】藤枝：真剣
[藤枝目閉じ]
[whosay name="藤枝 肇" color=%mp.color]
「ええ、[r]
[sp]でも僕も、負けるつもりはありません」[p]

[藤枝目を開く]
;↑「瞳は強く輝いていた」の描写にあわせて目を開く表情を追記しました(◆jsYiJcqRkk
#
藤枝様の瞳は、強く輝いていた。[r]
初めて会った時よりも、ずっと生き生きしている。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公照れ目普通]
「お父様、藤枝様ならきっとやり遂げられますわ。[r]
[sp]大丈夫です！」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「そうか」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

;【立ち絵】藤枝：目伏せ照れ
[藤枝目伏せ照れ]
[whosay name="藤枝 肇" color=%mp.color]
「貴方の事を[名前]さんと、お呼びしてもいいですか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「はい、勿論です。[r]
[sp]私もあなたを 肇様 と、お呼びしても構いませんか？」[p]

;【立ち絵】藤枝：微笑み照れ
[藤枝微笑み照れ]
[whosay name="藤枝 肇" color=%mp.color]
「はい！ ありがとうございます」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「全く、私達がいることを忘れているんじゃないのか？[r]
[sp]まだ二人きりで会わせるつもりはない。[r]
[sp]藤枝君も忙しい中、来てもらったのであまり時間はない」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：落ち込み
[主人公憂い]
「そうですの……」[p]

;【立ち絵】主人公：真剣
「肇様、約束をして頂けませんか？　」[p]

;【立ち絵】藤枝：驚き
[藤枝効果消]
[藤枝驚き]
[whosay name="藤枝 肇" color=%mp.color]
「何の約束ですか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公通常]
[主人公口開]
「私はずっと肇様にお手紙を書き続けます。[r]
[sp]だけど遠いところで離ればなれになるのは不安です。[r]
[sp]必ず私を迎えに来てくれると約束してください」[p]

#
私は小指を立てて手を挙げた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公照れ目普通]
「指切りをしてくださいませんか？」[p]

;【立ち絵】藤枝：微笑み
[藤枝笑顔大]
[whosay name="藤枝 肇" color=%mp.color]
「ええ、約束を必ず守ります」[p]
;=========================================================================
;メッセージウィンドウ消去から復帰時の顔グラをoffにします
[eval exp="f.kaogura = 'off'"]
[if exp="f.okeiko_gamen == true && (f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_c'])) && ( f.para_shujinkou_j_koto >= f.hujieda_koto_good) && f.para_shujinkou_shukujodo >= 70 && f.hujieda_au == 1"]
[暗転２ storage="bg/hujieda_goodED.jpg"]
[else]
[暗転２ storage="bg/hujieda_normalED.jpg"]
[endif]
[藤枝退場]
[主人公退場]
;◆goodED条件を満たす場合、good画像を表示
[if exp="f.okeiko_gamen == true && (f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_c'])) && ( f.para_shujinkou_j_koto >= f.hujieda_koto_good) && f.para_shujinkou_shukujodo >= 70 && f.hujieda_au == 1"]
[bg wait=true storage="../fgimage/bg/hujieda_goodED.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/hujieda_goodED.jpg"]
;◆CGモード用に画像を登録
[cg storage="hujieda_goodED.jpg"] 
[else]
;【背景】hujieda_normalED.jpg
[bg wait=true storage="../fgimage/bg/hujieda_normalED.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/hujieda_normalED.jpg"]
;◆CGモード用に画像を登録
[cg storage="hujieda_normalED.jpg"] 
[endif]
[p]
[暗転２終了]
;指切りCG
;=========================================================================
#
「指切りげんまん。嘘ついたら針千本呑ます」[p]

#
私たちは同時に声を合わせて指切りをした。[p]

――そうお互いに誓い合った。 離れても貴方を想います。[p]

;メッセージウィンドウ消去から復帰時の顔グラをonに戻します
[eval exp="f.kaogura = 'on'"]
*bunki_to_good_or_other
;◆goodED条件を満たす場合、goodへ
[if exp="f.okeiko_gamen == true && (f.para_hujieda_koukando >= parseInt(sf.hujieda['koukando_c'])) && ( f.para_shujinkou_j_koto >= f.hujieda_koto_good) && f.para_shujinkou_shukujodo >= 70 && f.hujieda_au == 1"]
;次のシーンでメッセージ枠消去
[主人公退場]
[eval exp="f.kaogura!='off'"]　
;onにする動作をジャンプ先でつける 済
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去　ジャンプ後に プリロ―ド画面消去があるため
[clearfix]
@jump storage="hujieda/hujieda_3_4_goodED.ks" target="seen_1"
[endif]

;===============================================================
;綿毛全画面
;[暗転２ storage="bg/hijieda_kaede_sita2.jpg"]
[暗転２ storage="bg/bg_prologue.jpg"]
;機能ボタン消去
[clearfix]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position name="kan" left=350 width=300 height=300 top=200 page=fore margint="50"]
;テキスト全画面　0x663300
[font color=white size=35]
[iscript]
$("kan").css('margin','auto');
[endscript]
;【背景】綿毛全画面→normalEDのためbg_prologue.jpgに「完」の方にあわせてみます
;[chara_mod name="bg" storage="bg/hijieda_kaede_sita2.jpg"]
[bg wait=true storage="../fgimage/bg/bg_prologue.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_prologue.jpg"]
;===============================================================
;画面中央に「完」の文字
[sp]　  完[p]
;===============================================================
[fadeoutbgm time=3000]
;===============================================================
[wait time=100]
;ノーマルここまで
[イベントシーン終了]

[if exp="f.flag_replay == true"]
;@layopt layer=29 visible=true
[iscript]
$('.1_fore').remove();
[endscript]
@layopt layer=1 visible=true
[endif]

;◆回想記録 
[endreplay]

[if exp="f.flag_replay == true"]
;web版はendreplayの下にするexe版はendreplayで戻る
@jump storage="replay2.ks"
[endif]

;◆normalED終了処理へ
[if exp="f.okeiko_gamen == true"]
;藤枝ルートをクリアした
;tweet表示
[eval exp="tf.ED_hujieda = 1"]
[call storage="sijyou/01_tweet.ks"]
[藤枝ルート終了 end="normal"]
[endif]

[藤枝ルート終了 end="normal"]
@jump storage="test_hujieda.ks"
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

[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]

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
