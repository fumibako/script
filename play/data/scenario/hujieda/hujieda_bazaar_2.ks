;=============================================
;◆チャリティーバザー◆3月1週から３月3週まで琴パラが高い藤枝ルート
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*hujieda_bazaar_2 storage="hujieda/preload_hujieda.ks]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;最大全角３１文字×４行
;=====================ここからお芝居の幕引きです===============================
;【背景】ﾁｬﾘﾃｨｰ会場門前
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity6.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
#
数日は藤枝様の仕事前の数時間合奏の練習をする。[p]


;【背景】;野点傘と縁談の背景
[chara_mod name="bg" storage="bg/B4nFWraU42/katuraginomiya_yaten.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
会場の玄関に七時に財前様と待ち合わせ。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（女中が控えていて、無言の圧力を感じるわ
[主人公眉下げ下]
[主人公口ほほえみ]
それでも藤枝様にお会いできる）[p]

[whosay name=財前美彬]
「貴方が[名字][名前]さんですね。 私が、財前です」[p]

＃
長身の彫の深い顔立ちの青年が私に声を掛けた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目閉じ]
[主人公口ほほえみ]
「ええ、この度は機会を与えて下さってありがとうございます」[p]

[whosay name=財前美彬]
「いえ、今年は経済的にも色々あって[r]
[sp]出店を取りやめた方もいて場所に空きがありましたからね[r]
[sp]有効活用出来ますのでこちらこそ礼をいいます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口通常]
「会場はどちらになりますか？[r]
[sp]……もう藤枝様はいらっしゃるのですよね」[p]

[whosay name=財前美彬]
「いらっしゃいますよ、案内します」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「ええ」[p]

;【背景】演奏会場１
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity51.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]

;【背景】二階への階段
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_cyarity7.jpg" time=1100]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]

;【背景】演奏会場１
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou1.jpg" time=1200]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
#
財前様に案内され、2階の奥のテラスに面した会場に着く。[p]


藤枝様はピアノを弾いていた。[p]

;[ピアノと筝の入った背景]
[藤枝ベース私服]
[藤枝微笑み]

[主人公眉下げ下]
[主人公目閉じ]
[主人公口ほほえみ]
（本当にいつ聞いても
心に響く綺麗で優しい音だわ）[p]

[whosay name=財前美彬]
「藤枝君」

[whosay name="藤枝 肇" color=%mp.color]
[藤枝驚き]
「あ、財前さん、貴方も！」[p]

[whosay name=財前美彬]
「今は誰も居ませんが、誰が聞いているかわからないので[r]
[sp]滅多な事はいわないようにしてください。[r]
[sp]あくまでも私からの紹介ですので」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝憂い]
「はい」

[whosay name=財前美彬]
「私は他の打ち合わせに行きます。[r]
[sp]お二人とも、時間は限られているので、しっかり練習を[r]
[sp]お願いします」[p]

＃
そういって財前様はこの場を後にした。[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝口微笑み]
「さあ、音を合わせていきましょう」[p]
#
私たちは音合わせを始めた。互いの心を探るように音を重ねて行く。[p]

もうすこしで合う、というところでピアノの澄んだ音がすこしためらうように震えた。[p]

藤枝様はピアノに顔を向けたまま手を止めずに私だけに聞こえるようにささやいた。[p]

[whosay name="藤枝 肇" color=%mp.color]
「あの……」[p]
#
私も箏を見つめ爪弾きながら、ささやきかえす。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「なんですか？」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝困り]
「財前さんの事をどう思いましたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚き]
「え？」
[whosay name="藤枝 肇" color=%mp.color]
[藤枝目閉じ]
「仕事も出来て、すごい方ですよね。 外見も良いです。[r]
[藤枝憂い]
貴方は、僕で良かったんですか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「私は貴方がいいです」
（私は藤枝様が好き。　今になって揺らぐことはないわ）

[whosay name="藤枝 肇" color=%mp.color]
[藤枝微笑み]
「そうですか。　……良かったです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「藤枝様は、私の気持ちを疑っているのですか？」
[whosay name="藤枝 肇" color=%mp.color]
[藤枝目閉じ]
「いえ、……僕は貴方と公然とお手紙を交わせる財前さんに[r]
[sp]嫉妬していたのです。[r]
[藤枝憂い]
[sp]だから財前さんを見ると少し卑屈になってしまうのです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚き]
（藤枝さまが嫉妬なんて）[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝目閉じ]
[藤枝頬染め]
「僕も貴方が好きです。[r]
[sp]言葉にできないぐらいに……きっとずっと」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
[主人公頬染め]
「藤枝様……」[p]
（胸がじんわりと熱いわ）[p]

[藤枝退場]


[暗転]
＃
女中に見張られながらも、藤枝様は優しく要領よく[r]
指導して下さって、数日間のピアノと筝の合わせる、[r]
お稽古は、とても満ち足りた幸せな気持ちだった。[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景に白文字  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=10]
[イベントシーン構築ボタン無し版]
;裏で表情リセット
[主人公ポーズ通常]
[主人公通常]
[藤枝ベース私服]
[藤枝微笑み]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】[ピアノと筝の入った背景]
;【背景】演奏会場１
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_hujieda_ensou1.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

数日後[r]
チャリティバザー当日[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_hujieda.ks"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================
;[ピアノと筝の入った背景]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公目閉じ]
（藤枝様のピアノと、筝のつま弾く音が溶け合って、[r]
[sp]見事に調和した演奏になったわ）[p]

[藤枝ベース私服]
[藤枝微笑み]
「ご清聴ありがとうございました」[p]

;[SE拍手]
[playse storage=hakushu.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ありがとうございました」[p]

#
演奏会は、[ruby text=じゅう]十時、[ruby text=じゅうに]十二時半、[ruby text=に]二時からの三回で、[r]
[ruby text=いち]一回目は、観客の方はまばらだったけど、[ruby text=さん]三回目には、席に[r]
座れないほどの観客になった。[p]

#
お客様が去っていく中、[r]
[ruby text=ひと]一[ruby text=り]人の男性が、藤枝様に声をかける。[p]


[whosay name=？？？]
「亡き母君も喜んでおられるだろう。[r]
[sp]今回の演奏は2年前以上に素晴らしかったよ。[r]
[sp]ピアノの腕が上達したね肇くん！」

[whosay name="藤枝 肇" color=%mp.color]
[藤枝驚き]
「青山男爵！お久しぶりです」[p]

[whosay name=青山男爵]
「ああ、爵位を返上したと聞いたが、元気そうでなによりだ」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝微笑み]
「はい！ありがとうございます。 貴方もお元気そうで、何よりです」[p]

[whosay name=青山男爵]
「そちらの女性は？[r]
[sp]君ととても息が合った演奏で、まさに心を合わせているような[r]
[sp]演奏だったが」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝通常]
[藤枝汗]
「財前さんにご紹介して頂いた[名字][名前]さんです」[p]

[whosay name=青山男爵]
「そうか、それならば名家の御令嬢だろう。[r]
[sp]折角の演奏の後にこんな事をいうのは何だが、[r]
[sp]あまり、親しくなりすぎない方がいい」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝効果消し]
[藤枝憂い]
「……青山男爵」[p]

[whosay name=青山男爵]
「身分違いの恋で不幸な最後を見たことがある[r]
[sp]……演奏を聞いて少し気になったのでな」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（胸が痛い……いつかは一緒になれると信じているけど[r]
[sp]もし、お父様が認めて下さらなかったら、[r]
[主人公目閉じ]
[sp]そして藤枝様が独逸に留学した時私達はどうなるのかしら）[p]

[whosay name=青山男爵]
「ああ、お嬢さん、気を悪くしたかな失礼したね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「いえ、お心遣い痛み入りますわ」[p]

(胸が痛いけど親切心で言って下さっているのだわ)[p]

[whosay name=青山男爵]
「では肇くん、父君と姉君によろしく伝えておいてくれ」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝口ほほえみ]
「はい、伝えておきます」[p]

#
人気がなくなった演奏会場で
気まずい雰囲気が私と藤枝様に流れる。[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝憂い]
「こんなにも近くにいるのに、僕にとって貴方は随分と遠い人です」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開け]
「藤枝様！　財前様に滅多な事を言わないようにと」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝目閉じ]
「そうですね。また沢山お手紙をかきましょう。[r]
[藤枝真剣]
[sp]……音楽学校の編入試験の結果がでたら、[r]
[sp]貴方のお父様にもお手紙を書きます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚き]
「お父様に！」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝伏目照れ]
「はい、僕の今の気持ちを精一杯書きます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
[主人公頬染め]
「ええ、お手紙を待っていますわ」[p]
（たとえ何年経っても、私は藤枝様だけをお慕いしている）[p]
#
;次のイベントにでてしまう名前残りを消去
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
