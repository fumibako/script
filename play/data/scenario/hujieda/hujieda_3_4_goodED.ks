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
[chara_mod name="bg" storage="bg/bg_EDsakura.jpg"]
[eval exp="f.haikei_credit=''"]
;[イベントシーン構築ボタン無し版]
;[主人公ポーズ通常]
;[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
;エピローグ
#
[mtext name=cc text="これが新しい私たちの始まり。" layer=29 size=29 x=300 y=200 color=white in_effect="fadeIn" out_effect="fadeOut"]
[mtext name=cc text="私たちは会えない分沢山お手紙を書いた。" layer=29 size=29 x=300 y=250 color=white in_effect="fadeIn" out_effect="fadeOut"]
[l]
[freeimage layer=27 time=1000]
[layopt layer=27 visible=true]
[mtext name=cc text="尽きない思いがあふれ" layer=29 size=29 x=300 y=200 color=white in_effect="fadeIn" out_effect="fadeOut"]
[mtext name=cc text="お手紙は途絶えることはなかった。" layer=29 size=29 x=300 y=250 color=white in_effect="fadeIn" out_effect="fadeOut"]
[l]
[freeimage layer=27 time=1000]
[layopt layer=27 visible=true]
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】;bg/bg_EDsakura.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg/bg_EDsakura.jpg" time=1000 visible=true]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
―― ４年後　某月[p]
 
 ;==========================スクリプト・全画面表示からの復帰準備========================================
[cm]
@layopt layer=message0 visible=false
[call target=*start storage="macro_tati_hujieda.ks"]
;メッセージをもどします
[resetfont]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[表示準備 storage="bg/room_niwa.jpg" layer=29]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[イベントシーン構築ボタン無し版]
[主人公通常]
[主人公ポーズ通常]
@layopt layer=message0 visible=true
[freeimage layer=29]
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

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をどうぞ。　少しは落ち着きませんと」[p]

;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公照れ]
[主人公目閉じ]
「ええ、お手紙に書いてありましたが、肇様が独逸から帰ってこられる予定の月です」[p]
;↑↓左寄り調整のために一旦[r]を除いています。テストプレイしつつ[r]を追記予定(◆jsYiJcqRkk案
「もしかしたら船が遅れるかも知れないとは、書いてありましたが、やっとなのです」[p]

;↓◆B4nFWraU42さんもおっしゃってくださいましたが、主人公の「やっとなのです」を受ける言葉を入れてみています(◆jsYiJcqRkk案
[whosay name=磯野 color="dimgray"]
「そうですね……長い月日が経ちました」[p]

「お嬢様も、とてもお綺麗になられました」[p]

[fadeoutbgm time=3000]
#
感慨深く磯野がしけしげと私を見る。[p]

[whosay name="女中"]
「お嬢様、藤枝様とおっしゃる方がお見えです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
「お通しして下さい！」[p]

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

[whosay name="藤枝 肇" color=%mp.color]
「入ってもいいでしょうか？」[p]

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
愛しさと嬉しさが[r]
胸にこみ上げて涙がこぼれた。[p]
;地の文少し変更I9IｈvvVｄPo

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公涙流_目閉用]
[主人公ポーズ片手]
「……どうぞ、お入りください」[p]

;【SE】襖を開ける（ゆっくり）

#
肇様は驚いた表情で私を見つめる。[p]

[whosay name="藤枝 肇" color=%mp.color]
「どうして泣いているんですか？　」[p]

;【立ち絵】主人公：微笑み
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「嬉しいからですわ」[p]

（泣き笑いになってしまう……）[p]

#
肇様は背も伸びて顔つきも大人びて、雰囲気も夢見る少年からキリッとした青年に変わられた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（時を越えて、私たちはまた会えたのだわ）[p]

#
その事を、肇様の大人びた姿をみて実感する。[p]

肇様は４年前と変わらない、柔らかな微笑みをうかべる。[r]
その微笑みが懐かしくて、また涙がこぼれた。[p]
;↑思い文には（）を付け、行を分けてみました。また、"微笑み"が続くため「微笑みをうかべる」にするなど少し文章を変えています(◆jsYiJcqRkk案

[whosay name="藤枝 肇" color=%mp.color]
「僕も嬉しいです」[p]

#
肇様は手を差し伸べて、私の涙を拭った。[p]
;↑誰の手かプレイヤーさんに分かりやすいように「手を差し伸べて」という表現に変更してみました(◆jsYiJcqRkk案

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公ポーズ通常]
[主人公驚]
「肇様！」[p]

#
肇様はハッとしたように手を引っ込めて、照れたように言った。[p]

[whosay name="藤枝 肇" color=%mp.color]
「すみません！　綺麗だからつい、触れてしまいました。[r]
[sp]……貴方はお美しくなりましたね」[p]
;↑お綺麗に→お美しく（綺麗、が続くので異なる表現にしてみています(◆jsYiJcqRkk案

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ照れ
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
[主人公頬染め]
「肇様の方こそとても男らしくなりました！」[p]

[whosay name=磯野 color="dimgray"]
「コホン」[p]

#
磯野がわざとらしく咳払いをする。 それを見て、私たちは我に返った。[p]

磯野はチラリと襖に目をやってから、藤枝様へ向き直った。[p]
;↑立ってから客である藤枝を見下ろしつつ話しかけることは磯野はしなさそうなので、襖に目をやって退出を準備する的な表現に変更してみています(◆jsYiJcqRkk案

[whosay name=磯野 color="dimgray"]
「私は旦那様にご来訪をお知らせしに参ります」[p]

「藤枝様、貴方はこの国でのピアノの公演も決定し、音楽学校の助教授が内定しているとはいえ……。[r]
[sp]まだお嬢様と婚約が成ったわけではないですよ」[p]
;地の文少し変更I9IｈvvVｄPo学校教育法でみると名誉教授は職じゃなく称号みたいですすみません教授で

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公通常]
[主人公口開]
「それでも、お父様には認めて頂けるはずです！」[p]
[主人公通常]

[whosay name="藤枝 肇" color=%mp.color]
;「十分にお手紙は交わしました」[p]←胸に秘めたほうが、言葉に重みが出るのではないかと考えますが、いかがでしょうか(◆jsYiJcqRkk案
;I9IｈvvVｄPo十分にお手紙は交わしましたをなしでお願いします
;↓大事な話の内容は、取り次ぎ役には言わない方がやはり重みが出るかと考えて文章を変更しています(◆jsYiJcqRkk案
「今日は[名字]様に大切なお話をさせていただきたく、参りました。[r]
[sp]どうぞお取次ぎをよろしくお願いします。」[p]

[whosay name=磯野 color="dimgray"]
;「私は貴方が成功すると思ってませんでしたが、[r]←家令の立ち場ではお嬢様の婚約者候補に直接批判的な言葉は言いにくいかと思いますので、成功について言い淀む感じに変更↓しています(◆jsYiJcqRkk案
「貴方は、想像していた以上に……いえ、やめておきます」[p]

「お嬢様が幸せでいらっしゃれば、私はよろしいのです」[p]
#
そう言う磯野の瞳は和やかな笑みをたたえていた。
;↑磯野が二人の仲を理解してくれた場面かと思いますのでそのような表現を入れてみました(◆jsYiJcqRkk案

[whosay name=磯野 color="dimgray"]
「では、旦那様にお取次ぎして参ります」[p]

;【SE】襖を閉める（ゆっくり）

#
肇様は再び私に柔らかく微笑む。[p]

[whosay name="藤枝 肇" color=%mp.color]
「やっと[名前]さんにお会いできました」[p]

「何度もくじけそうになりましたが、４年間ずっと貴方のお手紙や思い出に支えられました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：、目伏せ微笑み
[主人公照れ目普通]
「私もずっと肇様にお会いしたかったです」[p]

「……ずっとお慕いしておりました」[p]

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
;↑告白シーンは言葉の重みを活かすために、細かく改頁しています(◆jsYiJcqRkk案
#
優しく告げられ、私の鼓動は高鳴る。[p]
;I9IｈvvVｄPoさらにはいらないですね（汗

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、藤枝君、いいかね？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ハッとする
[主人公驚]
「はい、お父様！」[p]
[主人公ほほえみ]

;【SE】襖を開ける（ゆっくり）

[whosay name=&sf.father_name color="DarkSlateBlue"]
「邪魔をしただろうか？」[p]

「４年振りか。 ……立派になったね、藤枝君」[p]

[whosay name="藤枝 肇" color=%mp.color]
「[名字]様、お久しぶりです」[p]

「ありがとうございます。 これからも精進します」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「変わってないようで、安心した」[p]

#
お父様はうなずく。 お父様の肇様を見る目はあたたかい。[p]
;（きっと肇様の努力と成功を認めてくれている）[p]←胸に秘めた方が（どうなることか）とプレイヤーさんにより興味を持ち続けてもらえそうかと思いますが、いかがでしょうか(◆jsYiJcqRkk案

[whosay name="藤枝 肇" color=%mp.color]
「[名前]さんとの婚約を正式に認めて頂く為に、訪問しました。[r]
[sp]どうか今、婚約を許してくださいませんか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公真剣]
（まだ早いといわれるかしら？[r]
[sp]肇様をずっと待つことを許して下さったけれど）[p]

#
肇様はいくつもの欧羅巴のコンクールに入賞され、肇様のお父様は楽器の工房を立ち上げておられる。[p]
;↑↓左寄りを調整するため[r]を除いています。地の文は自動改行にまかせても良いのではとも思います(◆jsYiJcqRkk案
楽器の評判はとても良く、発注に追い付かないほどだとの噂だ。そして工場を新しく作る話も出ているという。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（きっと十年後二十年後には、もっと大きくなるわ。 肇様も音楽をこの国に広め、盛んにしようと考えておられる）[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「君と[名前]の結婚を認めよう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「お父様！」[p]

[whosay name="藤枝 肇" color=%mp.color]
「ありがとうございます」[p]

#
私と肇様は、微笑み合った。 幸福な気持ちでいっぱいで胸が詰まる。[p]

[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私も肇様のように沢山努力しよう）[p]

（私達が幸せになる為に）[p]

[fadeoutbgm time=3000]

#
[テキスト全画面白文字]
[r][r][r][r]
;↓画面中央に見えるように調整予定(◆jsYiJcqRkk案
[sp]　　　　　　――そして肇様と[p]

[r][r][r][r]
[sp]　　　　　新しい明日を紡いでいく。[p]
[font color=white size=35]
;画面中央に「完」の文字
[font color=white size=35]
[r]
[r]
[r]
[r]
[sp]　　　　　　　　　　完[p]
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
