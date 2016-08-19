;=============================================
;イベント１５回目【指切りエンド】3月4週、goodED時エピローグ
;=============================================
[背景公園]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]

;エピローグ
#
これが新しい私たちの始まり
私たちは会えない分沢山お手紙を書いた
尽きない思いがあふれ
お手紙は途絶えることはなかった

ー４年後　某月
[背景_庭]
[主人公ポーズ通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
「……」
（もうすぐだわ）[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をどうぞ
[sp]少しは落ち着きませんと」[p]

;【SE】コトリ

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
「ええ、お手紙に書いてありましたが[r]
[sp]肇様が独逸から帰ってこられる予定の月です[r]
[sp]もしかしたら船が遅れるかも知れないとは[r]
[sp]書いてありましたがやっとなのです」[p]

[whosay name=磯野 color="dimgray"]
「そうですね……
[sp]お嬢様もとてもお綺麗になられました」[p]

#
感慨深く磯野がしけしげと私をみる

[whosay name="女中"]
「お嬢様、藤枝様とおっしゃる方がお見えです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
「お通しして下さい！」[r]
（肇様？　でもこんなに早くつくはずが……[r]
[sp]でも藤枝様という方は肇様以外に知らないわ）[p]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

;【立ち絵】藤枝：通常
「入ってもいいでしょうか？　」[p]

#
声は確かに肇様のもので
私は嬉しくて涙がこぼれた[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
「……どうぞ、お入りください」[p]

;【SE】襖を開ける（ゆっくり）

#
肇様は驚いた表情で私を見つめる[p]

[whosay name="藤枝 肇" color=%mp.color]
「どうして泣いているんですか？　」[p]

;【立ち絵】主人公：微笑み
「嬉しいからですわ」[r]
（泣き笑いになってしまう……[r]
[sp]肇様は背も伸びて顔つきも大人びて、雰囲気も[r]
[sp]夢見る少年からきりっとした青年に変わった）[p]

#
時を越えて私たちはまた会えたのだわ
その事を肇様の大人びた姿をみて実感する
肇様は微笑む４年前と変わらない柔らかな微笑み
その微笑みが懐かしくて私はまた涙がこぼれた[p]

[whosay name="藤枝 肇" color=%mp.color]
「僕も嬉しいです」[p]

#
肇様は私の涙を自分の手で
私の涙を拭った

;【立ち絵】主人公：驚き
「肇様！」

#
肇様はハッとしたように
手を引っ込めて照れたように言った

「すみません！　綺麗だからつい[r]
[sp]触れてしまいました[r]
[sp]……貴方はお綺麗になりましたね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ照れ
「肇様の方こそとても男らしくなりました！」[p]

[whosay name=磯野 color="dimgray"]
「コホン」[p]

#
磯野がわざとらしく咳払いする
私たちは我に返り磯野は立ち上がる

[whosay name=磯野 color="dimgray"]
「私は旦那様に来訪をお知らせしに行きます、[r]
[sp]藤枝様、貴方はこの国でのピアノの公演も決定し、[r]
[sp]音楽学校の名誉教授が内定しているとはいえ[r]
[sp]まだお嬢様と婚約が成ったわけではないですよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
「それでもお父様は認めて頂けるはずです！」[p]

[whosay name="藤枝 肇" color=%mp.color]
「十分にお手紙は交わしました[r]
[sp]今日は[名字]様の了承を得にきました[r]
[sp]どうぞお取次ぎよろしくお願します。」[p]

[whosay name=磯野 color="dimgray"]
「私は貴方が成功すると思ってませんでしたが、[r]
[sp]お嬢様が幸せならそれで構いません[r]
[sp]旦那様にお取次ぎしてきます」[p]

;【SE】襖を閉める（ゆっくり）

肇様は再び私に柔らかく微笑む

[whosay name="藤枝 肇" color=%mp.color]
「やっと[名前]さんにお会いできました[r]
[sp]何度もくじけそうになりましたが[r]
[sp]４年間ずっと貴方のお手紙や、[r]
[sp]思い出に支えられました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：、目伏せ微笑み
「私もずっと肇様にお会いしたかったです[r]
[sp]……ずっとお慕いしておりました。」[r]
（時間なんて問題ではなかった[r]
[sp]今でも私は肇さまに恋をしている）[p]

;【立ち絵】主人公：真剣
「私はずっと肇様を信じていました[r]
[sp]肇様は私が思っている以上に強い人です」[p]

[whosay name="藤枝 肇" color=%mp.color]
「そんな事ありませんよ、でも[r]
[sp]貴方もの為だったら僕はどんなにも強くなれる[r]
[sp]愛しています[名前]さん」[p]

#
優しく告げられ、さらに私の鼓動は高鳴る[p]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

「[名前]、藤枝君いいかね？　」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ハッとする
「はい、お父様！」[p]

;【SE】襖を開ける（ゆっくり）

[whosay name=&sf.father_name color="DarkSlateBlue"]
「邪魔をしただろうか？[r]
[sp]４年振りか[r]
[sp]……立派になったね藤枝君」[p]

[whosay name="藤枝 肇" color=%mp.color]
「[名字]様、お久しぶりです、
[sp]ありがとうございますこれからも精進します」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「変わってないようで安心した」[p]

#
お父様はうなずく
お父様の肇様を見る目はあたたかい、
きっと肇様の努力と成功を認めてくれている

[whosay name="藤枝 肇" color=%mp.color]
「[名前]さんとの婚約を正式に認めて頂く為に訪問しました[r]
[sp]どうか今、婚約を許してくださいませんか？　」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
（まだ早いといわれるかしら？　[r]
[sp]肇様をずっと待つことを許して下さったけれど）[p]

#
肇様はいくつもの欧羅巴のコンクールに入賞し、[r]
その賞金で家の借金を返済を終え、[r]
肇様のお父様は楽器の工房を立ち上げている[r]
楽器の評判はとても良く、発注に追い付かないほどだと[p]

#
そして工場を新しく作る話も出ているという[r]
きっと十年後二十年後にはもっと大きくなるわ[r]
肇様も音楽をこの国に広め盛んにすると考えている[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「君と[名前]の結婚を認めよう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
「お父様！」[p]

[whosay name="藤枝 肇" color=%mp.color]
「ありがとうございます」[p]

#
そして私と肇様は微笑み合った。[r]
幸福な気持ちでいっぱいで胸が詰まる[r]
私も肇様のように沢山努力しよう私達が幸せになる為に[p]

ーそして肇様と新し明日を紡いでいく[p]

;終

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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
