;=========================================================================
;イベント6回目【藤枝の事を考える】9月1週、誰も選ばないを選択
;=======================お芝居の準備中です==================================
*scene1
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*9_1 storage="hujieda/preload_hujieda.ks]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】主人公邸 庭の見える部屋：夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=30]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;最大全角３１文字×４行
;=====================ここからお芝居の幕引きです===============================
*replay_hujieda_9_1
#
お手紙の相手と会う事を勧められて思い浮かんだのは、[r]
一度だけ拝見した藤枝様の顔だった。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;【立ち絵】主人公：困り 
[whosay name=&sf.girl_namae color="#cf5a7f"] 
[主人公憂い] 
[主人公目閉] 
（藤枝様の事が、どうしても気になってしまう……)[p]  

[主人公憂い] 
（こんな気持ちを抱えたまま、他の方達にお会いするのは失礼だわ）[p] 

# 
私は覚悟を決め、スッと姿勢を正して息を整えた。[p] 

;【立ち絵】主人公：決意 
[主人公通常] 
[主人公口開] 
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「お父様、結婚は考えられません！[r]
[sp]私には、まだ学ぶべきことがあります」[p] 

[whosay name=&sf.father_name color="DarkSlateBlue"] 
「[名前]には、まだ早かったか……。[r] 
[sp]そういえば、最近はお筝のお稽古に熱心なようだね」[p] 

[whosay name=&sf.girl_namae color="#cf5a7f"] 
;【立ち絵】主人公：通常 
[主人公通常] 
[主人公口通常] 
「ええ！　お筝を極めたいと思っております」[p] 

[whosay name=&sf.father_name color="DarkSlateBlue"] 
「それは良いことだな。 お稽古を頑張るなら、[r] 
[sp]また良縁に恵まれるだろう。[sp]精進しなさい」[p] 

;【立ち絵】主人公：笑顔 
[whosay name=&sf.girl_namae color="#cf5a7f"] 
[主人公ほほえみ] 
「ありがとうございますお父様！」[p] 

#
[主人公眉下げ下]
[主人公通常]
お父様は、憂いを帯びた目で、再び私を見つめた。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"] 
「[名前]。本当にいいのかね？[r]
;分岐メッセージ　自由に変更してください
[if exp="tf.common_9_1_ninzuu == 2"]
;２人の場合
[sp]彼らは、
[elsif exp="tf.common_9_1_ninzuu == 1"]
;１人の場合
[sp]彼は、
[elsif exp="tf.common_9_1_ninzuu == 3"]
;３人の場合
[sp]三人とも
[elsif exp="f.common_9_1_ninzuu >= 3"]
[sp]三人とも
[else]
[sp]彼は
[endif]

;共通

良い青年だし、惜しいと思っている」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
[主人公口ほほえみ]
「外交ひとつとってしても、変革の時代だ。[r]
[sp]今後も私達は、忙しいあまり、[名前]に構って[r]
[sp]やれないかもしれない」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「それに文矢も家から出てしまった今、お前は、また家で一人に[r]
[sp]なってしまう。 私は、それだけが気がかりで仕方がない」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ] 
「お父様……磯野もいますし、私は大丈夫ですわ」[p]
[主人公眉下げ下]
[主人公目伏] 
「それに、これが私の望んだことなのです……」[p]

;【立ち絵】主人公：目閉じ思案 
[whosay name=&sf.girl_namae color="#cf5a7f"] 
[主人公口通常]
[主人公目閉]
（……たぶん、このまま結婚してしまったら、後悔してしまう)[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、[r]
[sp]そこまで言うのなら、お前の気持ちを尊重しよう」[p]

*scene3 
[whosay name=&sf.girl_namae color="#cf5a7f"] 
[主人公ほほえみ]
「はい。 精一杯努力いたします」[p] 

;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
#
[主人公眉下げ下]
[主人公目伏]
お父様は、静かに頷くと部屋を出て行った。[p]

;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]
[wait time=1000]



# 
[主人公憂い]
藤枝様に拒絶された……。[r]
[主人公口ほほえみ]
けれども今はただお筝を弾いていたい。[p]
[主人公眉下げ下]
[主人公目閉]
それが正直な私の気持ち。[p]
[主人公目伏]

*scene4
;【立ち絵】主人公：ふぅ
[主人公ふぅ閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ、これでもう後戻りはできないわ）[p]

;【分岐】他攻略対象の好感度が高い場合
;[if exp="f.para_kuroda_koukando > 15 || f.para_katuraginomiya_koukando > 15 || f.para_hujieda_koukando > 15 || f.para_zaizen_koukando > 15"]
;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そうだ、他の方にも手紙を送らなければ）[p]

;========================jsYiJcqRkkさんの共通テキスト(改行含む)を貼っています　表情はそのままです======================================
;【立ち絵】主人公：目閉じ困り眉
[主人公目閉じ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（せっかく長い間楽しい時間を過ごさせて頂いたのに心苦しいけれど[r]
[sp]こればっかりは仕方ないわね）[p]
[fadeoutbgm time=3000]
;【立ち絵】主人公：通常
[主人公照れ目普通]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（せめて、今まで以上に心を込めて別れの手紙を書こう。[r]
[sp]もしどこかでお会いすることがあっても笑顔でお話できるように）[p]

*end_rute
[stopbgm]
;[endif]
;個別ルート前夜終了
[eval exp="f.hujieda_au = 1"]
[eval exp="f.event_oaite_mitei = 0"]

#
;次のイベントにでてしまう名前残りを消去
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
[イベントシーン終了４]
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
