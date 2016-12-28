;=========================================================================
;イベント１５回目【指切りエンド】3月4週、goodED時エピローグ
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*3_4_goodED storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]
;【背景】青空に桜
[chara_mod name="bg" storage="bg/bg_sakura.jpg"]
;[chara_mod name="bg" storage="bg/bg_EDsakura.jpg"]
[eval exp="f.haikei_credit=''"]
;[イベントシーン構築ボタン無し版]
;[eval exp="sf.FButton='OFF'"]
;[主人公ポーズ通常]
;[主人公通常]
[プリロード画面消去]
;[メッセージウィンドウ上ボタン表示]
;文字色　font_color
[eval exp="tf.fc='0x663300'"]
;=========================================================================

[mtext name=cc text="これが新しい私たちの始まり。" layer=29 size=29 x=250 y=250 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=true]
[l]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[mtext name=cc text="私たちは会えない分沢山お手紙を書いた。" layer=29 size=29 x=250 y=250 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=true]
[freeimage layer=29]
[layopt layer=29 visible=true]
[mtext name=cc text="尽きない思いがあふれ" layer=29 size=29 x=300 y=250 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=true]
[freeimage layer=29]
[layopt layer=29 visible=true]
[mtext name=cc text="お手紙は途絶えることはなかった。" layer=29 size=29 x=250 y=250 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=true]
[freeimage layer=29]
[layopt layer=29 visible=true]
;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】;bg/bg_EDsakura.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[layopt layer=29 visible=true]
[eval exp="sf.FButton='OFF'"]
;【背景】青空に桜
[image layer=29 x=1 y=1 storage="bg/bg_EDsakura.jpg" time=1000 visible=true]
[chara_mod name="bg" storage="bg/bg_EDsakura.jpg"]
[wait time=100]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position left=300 width=300 height=300 top=200 page=fore margint="50"]
[wait time=10]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

―― 四年後　某月[p]

  ;==========================スクリプト・全画面表示からの復帰準備========================================
[cm]
@layopt layer=message0 visible=false
[call target=*start storage="macro_tati_hujieda.ks"]
;メッセージをもどします
[resetfont]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;[image layer=29 x=1 y=1 storage="bg/room_niwa.jpg" time=1000 visible=true]
;[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[イベントシーン構築ボタン無し版]
[主人公通常]
[主人公ポーズ通常]
@layopt layer=message0 visible=true
[freeimage layer=29 time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
「……」[p]

（もうすぐだわ）[p]


[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をどうぞ。　少しは落ち着きませんと」[p]

;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公照れ]
[主人公目閉]
「ええ、お手紙に書いてありましたが、肇様が独逸から[r]
[sp]帰ってこられる予定の月となりましたわ」[p]

「もしかしたら船が遅れるかも知れないとは、書いてありましたが、[r]
[sp]やっと、肇様とお会いできるのです」[p]

[whosay name=磯野 color="dimgray"]
「そうですね……長い時が経ちました。」[p]

「月日もさることながら、お嬢様もとてもお綺麗になりましたね」[p]
;続けて　ましたね　の方がいいかもしれません

[fadeoutbgm time=3000]
#
感慨深く、磯野がしげしげと私を見る。[p]

[主人公目伏]
;主人公動いてないので変更
[playse storage=fusuma-open.ogg loop=false ]


#
襖から老齢に差し掛かった女中が現れる。[p]
[whosay name="女中"]
「お嬢様、藤枝様とおっしゃる方がお見えです」[p]

#
私は、藤枝様の名を聞いた途端、[r]
期待に震えるような思いで女中に返事をしていた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
「お通しして下さい！」[p]

#
肇様の顔が脳裏に浮かぶ[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（肇様？　でもこんなに早くつくはずが……）[p]
;主人公の思いを時間経過と共になぞる感じに[p]を追加しています(◆jsYiJcqRkk案
（でも藤枝様という方は、肇様以外に知らないわ）[p]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

#
;===========================
;【立ち絵】藤枝：通常
;[表示準備 storage="bg/room_niwa.jpg" layer=13]
;[藤枝ベース私服]
;[藤枝通常]
;[freeimage layer=29 time=500]
;===========================

#
鼓動が高まる中、少し緊張したような声が襖の向こうから聞こえた。[p]
[whosay name="藤枝 肇" color=%mp.color]
「入ってもよろしいでしょうか？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

[主人公目閉じ]
[主人公口通常]
[主人公涙_目閉用]
#
声は確かに肇様のもので、[r]
愛しさと嬉しさが胸に込み上げて涙がこぼれた。[p]

;地の文少し変更I9IｈvvVｄPo　
;左寄り修正仮_script2　ひらがな続き修正　にこみ

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公涙流_目閉用]
[主人公ポーズ片手]
「……どうぞ、お入りください」[p]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

#
部屋に入られた肇様は、私の表情を見て驚かれる。[p]

[whosay name="藤枝 肇" color=%mp.color]
「どうして泣いているんですか？」[p]

;【立ち絵】主人公：微笑み
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「嬉しいからですわ」[p]

（泣き笑いになってしまう……）[p]

#
肇様は、背も伸びて顔つきも夢見る少年から凛々しく落ち着いた青年へと変わられた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（時を越えて、私たちはまた会えたのだわ）[p]

#
その事を、肇様の大人びた姿をみて実感する。[p]
;ここも大人びてが多いので、声、背丈など入れるといいかも_script2

肇様は四年前と変わらない、柔らかな微笑みを浮かべる。[r]
その微笑みが懐かしくて、また涙がこぼれた。[p]

[whosay name="藤枝 肇" color=%mp.color]
「僕も嬉しいです」[p]

#
肇様は手を差し伸べて、私の涙を拭う。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公ポーズ通常]
[主人公驚]
「肇様！」[p]

#
肇様はハッとしたように手を引っ込めて、照れたように言った。[p]

[whosay name="藤枝 肇" color=%mp.color]
「すみません！　綺麗だからつい、触れてしまいました。[r]
[sp]……貴方は、お美しくなりましたね」[p]
;↑お綺麗に→お美しく（綺麗、が続くので異なる表現にしてみています(◆jsYiJcqRkk案

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ照れ
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
[主人公頬染め]
「肇様の方こそ、とても男らしくなりました！」[p]

[whosay name=磯野 color="dimgray"]
「コホン」[p]

#
磯野がわざとらしく咳払いをする。 それを見て、私たちは我に返った。[p]

[whosay name=磯野 color="dimgray"]
「藤枝様、お気持ちはわかりますが、[r]
[sp]旦那様とのご挨拶を終えるまでは、お控え下さりませ」[p]

「貴方はこの国でのピアノの公演も決定し、音楽学校の助教授が[r]
[sp]内定しているとはいえ……。 まだ、お嬢様と婚約が成ったわけでは[r]
[sp]ないのですよ」[p]
;地の文少し変更I9IｈvvVｄPo学校教育法でみると名誉教授は職じゃなく称号みたいですすみません教授で 
;AとBのﾊﾞﾗﾝｽをとる 　Ｂﾙｰﾄでいくなら、藤枝、主人公に報告→主人公労う。（横で磯野聞いている）でいいはずです。script_2

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公通常]
[主人公口開]
「それでも、お父様には認めて頂けるはずです！」[p]
[主人公通常]

[whosay name="藤枝 肇" color=%mp.color]
「失礼しました」[p]

#
肇様は謝った。[sp]その誠実な眼差しは昔と変わらない[p]

[whosay name="藤枝 肇" color=%mp.color]
;「十分にお手紙は交わしました」[p]←胸に秘めたほうが、言葉に重みが出るのではないかと考えますが、いかがでしょうか(◆jsYiJcqRkk案
;I9IｈvvVｄPo十分にお手紙は交わしましたをなしでお願いします
;↓大事な話の内容は、取り次ぎ役には言わない方がやはり重みが出るかと考えて文章を変更しています(◆jsYiJcqRkk案
「今日は[名字]様に大切なお話をさせていただきたく、参りました。[r]
[sp]どうぞお取次ぎをよろしくお願いします」[p]

[whosay name=磯野 color="dimgray"]
;B「私は貴方が成功すると思ってませんでしたが、[r]←家令の立ち場ではお嬢様の婚約者候補に直接批判的な言葉は言いにくいかと思いますので、成功について言い淀む感じに変更↓しています(◆jsYiJcqRkk案
「貴方は、想像していた以上に……いえ、やめておきます」[p]

「お嬢様が幸せでいらっしゃれば、私はよろしいのです」[p]

#
磯野の瞳は和やかな笑みをたたえていた。[r]
その後、チラリと襖に目をやってから、藤枝様へ向き直った。[p]

[whosay name=磯野 color="dimgray"]
「私は旦那様に、ご来訪をお知らせしに参ります」[p]
;にご　になってますがそのままにします。

;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]

#
磯野を見送った後、私達はもう一度向き合った。[r]
肇様は再び私に柔らかく微笑む。[p]

[whosay name="藤枝 肇" color=%mp.color]
「今日は名前さんのお父様に認めてもらうよう[r]
[sp]誠意をもって婚約を申し込みします。[r]
[sp]……やっと[名前]さんに辿り着きました」[p]

#
ふと肇様は辛そうな顔をする[p]

[whosay name="藤枝 肇" color=%mp.color]
「遠い独逸での留学は貴方への手紙にさえ書けない辛いこともありました。[r]
[sp]何度も挫折しかけたのです」[p]

[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……肇様」[p]

#
肇様の憂いを帯びた表情は慈愛に満ちた表情へと変わる。[p]

[whosay name="藤枝 肇" color=%mp.color]
「でもその度に貴方との手紙や思い出が僕を慰め、励ましてくれました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：、目伏せ微笑み
[主人公目閉じ]
「私も不安な気持ちになることもありましたわ[r]
[sp]そんな時はお箏を弾いて自分の気持ちを確かめていましたの[r]
[sp]離れていても恋しさは募るばかりでしたわ」[p]

[主人公照れ目普通]
「……ずっとお慕いしておりました」[p]

[主人公目閉]
（時間なんて問題ではなかった。[r]
[sp]今でも私は肇さまに恋をしている）[p]

;【立ち絵】主人公：真剣
[主人公照れ目普通]
[主人公口開]
「私はずっと肇様を信じていました。[r]
[sp]肇様は私が思っている以上に強い方です」[p]
[主人公口通常]

[whosay name="藤枝 肇" color=%mp.color]
「そんな事ありませんよ、でも」[p]

「貴方の為だったら僕はどんなにも強くなれる」[p]

「愛しています。 [名前]さん」[p]

#
[主人公柔和ほほえみ１]
優しく告げられ、私の鼓動は高鳴る。[p]
;I9IｈvvVｄPoさらにはいらないですね（汗

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

[whosay name=&sf.father_name color="DarkSlateBlue"]
[主人公照れ目普通]
「[名前]、藤枝君、いいかね？」[p]

;藤枝さんも返事をした方が空間認識しやすいと思いますscript_2

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ハッとする
[主人公驚]
「ええ、お父様！」[p]
[主人公ほほえみ]

[whosay name="藤枝 肇" color=%mp.color]
「いえ、お待ちしておりました。[r]
[sp]お久しぶりでございます、浩文様」[p]


;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]


[whosay name=&sf.father_name color="DarkSlateBlue"]
「邪魔をしただろうか？」[p]

「四年振りか。 ……立派になったね、藤枝君」[p]

[whosay name="藤枝 肇" color=%mp.color]
「ありがとうございます。 これからも精進します。[r]
[sp]浩文様もご健勝のようで何よりです 」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「謙虚な所は、変わってないようで、安心した」[p]

[whosay name="藤枝 肇" color=%mp.color]
「あれからの多くの事を学び、経験しました[r]
[名前]様のおかげで希望を持ち続けられこの国に貢献できるように帰ってこれました」[p]

;不安と過去の移り変わりを伝える
「あの頃よりは、一人前の大人になっているでしょうか？」[p]
#
お父様は頷き、あたたかな眼差しで肇様を見ている。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（きっと肇様の努力と成功を認めてくれている）[p]

;←胸に秘めた方が（どうなることか）とプレイヤーさんにより興味を持ち続けてもらえそうかと思いますが、いかがでしょうか(◆jsYiJcqRkk案

[whosay name="藤枝 肇" color=%mp.color]
「[名前]さんとの婚約を正式に認めて頂く為に、訪問しました。[r]
[sp]どうか今、婚約を許してくださいませんか？」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「藤枝君……」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公真剣]
（まだ早いといわれるかしら？[r]
[sp]肇様をずっと待つことを許して下さったけれど）[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「肇君、君はいくつもの欧羅巴のコンクールに入賞し、[r]
[sp]父君は楽器の工房を立ち上げているそうだね」[p]

[whosay name="藤枝 肇" color=%mp.color]
「はい、ご贔屓頂いてる皆様のお陰で、工房を大きくする予定です」

#
巷では楽器の評判はとても良く、発注に追い付かないほどだとの噂だ。[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
（きっと十年後二十年後には、もっと大きくなるわ。 肇様も音楽をこの国に[r]
[sp]広め、盛んにしようと考えておられる）[p]
;ｽﾏﾎ最大行数で仮改行_script2

[whosay name=&sf.father_name color="DarkSlateBlue"]
「ピアニスト、作曲家として名をあげている事も[r]
音楽学校の助教授が内定したとも磯野から聞いている」[p]

[whosay name="藤枝 肇" color=%mp.color]
「僕にはなすべきことが多くあり、これからも努力します！」[p]

将来について語る肇様のお姿は、まぶしく頼もしかった。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「君は、夢を現実にする才能も芯の強さを持ったようだね」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「……君と[名前]の結婚を認めよう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「お父様！」[p]

[whosay name="藤枝 肇" color=%mp.color]
「ありがとうございます！[r]
[sp]これからも、名前さんを幸せにする為に精一杯努力します」[p]

#
私と肇様は、微笑み合った。 幸福な気持ちでいっぱいで胸が詰まる。[p]

[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私も肇様のように沢山努力しよう）[p]

（私達が幸せになる為に）[p]
#
[fadeoutbgm time=3000]

;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】
[主人公退場]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[layopt layer=29 visible=true]
[eval exp="sf.FButton='OFF'"]
;【背景】青空に桜
;[image layer=29 x=1 y=1 storage="bg/bg_EDsakura.jpg" time=1000 visible=true]
;【背景】ﾌﾟﾛﾛーｸﾞ
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[chara_mod name="bg" storage="bg/bg_prologue.jpg"]
[wait time=100]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position left=300 width=330 height=300 top=200 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
――そして肇様と[p]
新しい明日を紡いでいく。[p]
;==================================================================================
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position left=300 width=300 height=300 top=200 page=fore margint="50"]
[font color=white size=35]
;画面中央に「完」の文字
[sp]　　　　完[p]
;================スクリプト・全画面表示からの復帰準備 初期化　ｽｸﾘﾌﾟﾄ担当さまにお任せします。================
;メッセージをもどします
[resetfont]
;メッセージの表示を消します　
[layopt layer=message0 visible=false]
[freeimage layer=29 time=1000]
;メッセージレイヤを会話窓用に設定変更
;[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
;[layopt layer=fix visible=true]
;[eval exp="sf.FButton='ON'"]
;[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

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
