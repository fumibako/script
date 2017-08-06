;9回目イベント【背景】公園　背景森林公園 主人公と葛城宮抱擁CG
=======================お芝居の準備中です==================================
*replay_katuraginomiya_3_4_nomalED
;↓回想シーンスタートはnormal/goodどちらもここから始まるのが自然かと思いますので、この位置に置いてみます
[setreplay name="replay_katuraginomiya_3_4_nomalED_scene" storage="katuraginomiya/katuraginomiya_3_4_nomalED.ks" target="start"]
[setreplay name="replay_katuraginomiya_3_4_goodED_scene" storage="katuraginomiya/katuraginomiya_3_4_nomalED.ks" target="start"]
*replay_katuraginomiya_3_4_nomalED_scene
[iscript]
$('rp_bt').remove();
$('.list').remove();
[endscript]
[freeimage layer = 1]
[if exp="f.flag_replay == true"]
;[bg storage="toumei.gif" time=1]
[endif]
*start
[stopbgm]
[call target=*3_4_nomal storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]

[if exp="f.flag_replay == true"]
;@layopt layer=1 visible=true
;[chara_show name="bg"]
[endif]

;【背景】公園
[bg wait=true storage="../fgimage/bg/I9IhvvVdPo/kouenn.jpg" time=100]
[wait time=10]
;[chara_mod name="bg" storage="bg/I9IhvvVdPo/kouenn.jpg"]
[表示準備 storage="bg/I9IhvvVdPo/kouenn.jpg"]
[eval exp="f.haikei_credit=''"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
[主人公目パチ1回]


[whosay name=磯野 color="dimgray"]
「ああ……殿下が来られましたね。[r]
;test
;====================
;【立ち絵】葛城宮通常
[葛城宮ベース私服]
[葛城宮通常]
[表示開始 time=300]
;====================
[sp]では私は呼ばれるまで、暫く失礼します」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ」[p]

;【立ち絵】葛城宮　微笑み
[葛城宮笑顔大]
[whosay name="葛城宮　晴仁" color=%mp.color]
「[名前]殿、やっと君とゆっくり話ができる」[p]

;【立ち絵】葛城宮 真剣
[葛城宮目伏せ照れ]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_hohoemi_age.png" time=0]
[wait time=10]
「……抱きしめていいだろうか？」[p]

;【立ち絵】主人公 照れ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
「ええ」[p]
#
[暗転２ storage="bg/I9IhvvVdPo/kouenn.jpg"]
[葛城宮サイズ顔アップ storage="bg/I9IhvvVdPo/kouenn.jpg"]
[葛城宮ベース私服]
[葛城宮微笑み]
[暗転２終了]
[葛城宮目を閉じる]
[主人公頬染め]
殿下は私を引き寄せ、ぎゅっと私を力強く抱きしめた。[p]
私の鼓動は高鳴り、顔が熱くなっていく……。[p]

;【立ち絵】主人公 照れ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
「……」[p]

;【立ち絵】葛城宮 微笑み
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み]
「そんなに照れないでくれないか？[sp]私までうつってしまいそうだ」[p]

「今は純粋に再会できたことを喜んでいる。[r]
[sp]だからもっと自然に受け止めてほしい」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公笑顔]
「ええ」[p]
（今は変に意識するより自然に喜びを共にしたいわ）[p]

#
[主人公口ほほえみ]
[主人公目伏柔]
私は殿下の背にそっと手をまわす。[p]

;[葛城宮効果消]
;[葛城宮目閉じ]
;【立ち絵】葛城宮 真剣
[whosay name="葛城宮　晴仁" color=%mp.color]
「やっと落ち着いた。　君にはずっと待たせてすまなかった」[p]

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
[主人公眉下げ下]
[主人公目閉]
「いいえ、殿下の御心を分かっておりました」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ずっと信じておりました」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「きゃ！」[p]

;抱き上げるCGここからで
;===========================ＣＧ表示==================================
;メッセージウィンドウ消去から復帰時の顔グラをoffにします
[eval exp="f.kaogura = 'off'"]
;good条件分岐は6箇所：130行目、140行目、151行目、165行目、249行目、preload_katuraginomiya.ks469行目付近
;◆goodED条件を満たす場合、goodのCGを表示
[if exp="f.okeiko_gamen == true && (f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_c'])) && ( f.para_shujinkou_j_sadou >= f.katuraginomiya_sadou_good) && f.para_shujinkou_shukujodo >= 100 && f.katuraginomiya_au == 1"]
[暗転２ storage="bg/katuraginomiya_3_4_goodED.jpg"]
[else]
[暗転２ storage="bg/katuraginomiya_3_4_nomalED.jpg"]
[endif]
[葛城宮退場]
;退場しないとＣＧ見れない
[主人公退場]
;【背景】主人公と葛城宮抱擁 仮
;◆goodED条件を満たす場合、goodのCGを表示
[if exp="f.okeiko_gamen == true && (f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_c'])) && ( f.para_shujinkou_j_sadou >= f.katuraginomiya_sadou_good) && f.para_shujinkou_shukujodo >= 100 && f.katuraginomiya_au == 1"]
[bg wait=true storage="../fgimage/bg/katuraginomiya_3_4_goodED.jpg" time=100]
[wait time=10]
;[chara_mod name="bg" storage="bg/katuraginomiya_3_4_goodED.jpg"]
;◆CGモード用に画像を登録
[cg storage="katuraginomiya_3_4_goodED.jpg"] 
[else]
[bg wait=true storage="../fgimage/bg/katuraginomiya_3_4_nomalED.jpg" time=100]
[wait time=10]
;[chara_mod name="bg" storage="bg/katuraginomiya_3_4_nomalED.jpg"]
;◆CGモード用に画像を登録
[cg storage="katuraginomiya_3_4_nomalED.jpg"] 
[endif]
[eval exp="f.haikei_credit=''"]
[p]
[暗転２終了]
;=============================================================
#
殿下は私を抱き上げた。[p]
;◆CG2：goodED条件を満たす場合はgood版に切り替え
[if exp="f.okeiko_gamen == true && (f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_c'])) && ( f.para_shujinkou_j_sadou >= f.katuraginomiya_sadou_good) && f.para_shujinkou_shukujodo >= 100 && f.katuraginomiya_au == 1"]
[bg wait=true storage="../fgimage/bg/katuraginomiya_3_4_goodED_2.jpg" time=0]
[wait time=10]
;[chara_mod name="bg" storage="bg/katuraginomiya_3_4_goodED_2.jpg" time=0]
[else]
[bg wait=true storage="../fgimage/bg/katuraginomiya_3_4_nomalED_2.jpg" time=0]
[wait time=10]
;[chara_mod name="bg" storage="bg/katuraginomiya_3_4_nomalED_2.jpg" time=0]
[endif]

;【立ち絵】葛城宮 微笑み
;[葛城宮微笑み]
[whosay name="葛城宮　晴仁" color=%mp.color]
「私も君の気持ちを感じていた。 君にとても励まされた」[p]

#
優しい微笑みを浮かべる殿下は、嬉しさをこらえきれないといった様子だ。[p]
;◆CG3：goodED条件を満たす場合はgood版に切り替え
[if exp="f.okeiko_gamen == true && (f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_c'])) && ( f.para_shujinkou_j_sadou >= f.katuraginomiya_sadou_good) && f.para_shujinkou_shukujodo >= 100 && f.katuraginomiya_au == 1"]
[bg wait=true storage="../fgimage/bg/katuraginomiya_3_4_goodED_3.jpg" time=0]
[wait time=10]
[else]
[bg wait=true storage="../fgimage/bg/katuraginomiya_3_4_nomalED_3.jpg" time=0]
[wait time=10]
[endif]
そんな殿下の様子に私もつられて微笑んでいた。[p]
言葉にできないほどの嬉しさが込み上げる。[p]

;[主人公目閉じ]
;[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……殿下」[p]
;メッセージウィンドウ消去から復帰時の顔グラをonに戻します
[eval exp="f.kaogura = 'on'"]
;=============================================================
;CGここまで
;【背景】公園
[暗転２ storage="bg/I9IhvvVdPo/kouenn.jpg"]
[bg wait=true storage="../fgimage/bg/I9IhvvVdPo/kouenn.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　----'"]
[葛城宮サイズ隣に並ぶ storage="bg/I9IhvvVdPo/kouenn.jpg"]
[葛城宮ベース私服]
[葛城宮微笑み]
[主人公ポーズ通常]
[主人公通常]
[暗転２終了]
;=====================抱き上げるCGここまで=================================
#
そして殿下は私を降ろして言った。[p]
[whosay name="葛城宮　晴仁" color=%mp.color]
「……左手を出してくれるか？」[p]

[主人公目パチ1回]
;【立ち絵】主人公 通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
 [主人公目大]
 [主人公口通常]
「？　ええ」[p]


;【立ち絵】葛城宮照れ
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み照れ]
「……」[p]

#
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[wait time=10]
私の手をそっと取り、薬指に指輪をはめる。[p]
[葛城宮効果消]
[葛城宮真剣]
;【立ち絵】主人公 驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「この指輪は？」[p]

;【立ち絵】葛城宮真剣
[whosay name="葛城宮　晴仁" color=%mp.color]
「エンゲージメントリングという。[r]
[sp]西洋では婚約する時こうして指輪を贈るんだ」[p]
[葛城宮目伏]
「もう一度君に結婚を申し込もう」[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「はい！　お受けします」[p]
[葛城宮微笑み]

「殿下をいつまでもお慕いしています」[p]
[主人公目伏柔]
「貴方とともに喜びも悲しみも、共にすると誓います」[p]
#
*bunki_to_good_or_other
;◆goodED条件を満たす場合、goodへ
[if exp="f.okeiko_gamen == true && (f.para_katuraginomiya_koukando >= parseInt(sf.katuraginomiya['koukando_c'])) && ( f.para_shujinkou_j_sadou >= f.katuraginomiya_sadou_good) && f.para_shujinkou_shukujodo >= 100 && f.katuraginomiya_au == 1"]
[主人公退場]
[葛城宮退場]
@jump storage="katuraginomiya/katuraginomiya_3_4epilogue_goodED.ks" target="seen_1"
[endif]
;=============================================================
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image name=end layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=1000]
;一瞬裏がみえるの防止背景
[bg wait=true storage="../fgimage/bg/bg_prologue.jpg" time=50]
[wait time=10]
[葛城宮退場]
[主人公退場]
;===============================================================
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position name="kan" left=350 width=300 height=300 top=200 page=fore margint="50"]
;テキスト全画面　0x663300
[font color=white size=35]
[iscript]
$("kan").css('margin','auto');
[endscript]
;===============================================================
;画面中央に「完」の文字
[sp]　  完[p]
;===============================================================
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;=============================================================

[イベントシーン終了]

[if exp="f.flag_replay == true"]
;@layopt layer=29 visible=true
[iscript]
$('.1_fore').remove();
[endscript]
@layopt layer=1 visible=true
[endif]

;ifからだしておいてください
[endreplay]

[if exp="f.flag_replay == true"]
;web版はendreplayの下にするexe版はendreplayで戻る
@jump storage="replay2.ks"
[endif]

;↓終了設定をありがとうございました。動作をシンプルにしたかったため、少し変更しました。マクロの動作がうまくいかない場合にまた変更する可能性があります(スクリプト担
[if exp="f.okeiko_gamen == true"]
;葛城宮ルートをクリアした
[eval exp="tf.ED_katuraginomiya = 1"]
;tweet表示
[call storage="sijyou/01_tweet.ks"]
[wait time=10]
[葛城宮ルート終了 end="normal"]
@jump storage="event.ks" target=*event_ED
[endif]

@jump storage="test_katuragi.ks"
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
