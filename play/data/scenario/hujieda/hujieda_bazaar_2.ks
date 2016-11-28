;=============================================
;◆チャリティーバザー◆3月1週から３月3週まで琴パラが高い藤枝ルート
;=========================================================================
;イベント6回目【藤枝の事を考える】9月1週、誰も選ばないを選択
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*hujieda_bazaar_2 storage="hujieda/preload_hujieda.ks]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】主人公邸 庭の見える部屋：夜　;チャリティバザー会場演奏会場 いまはない
[暗転]
;[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=30]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;最大全角３１文字×４行
;=====================ここからお芝居の幕引きです===============================
;チャリティバザー会場演奏会場 いまはない
#
いまはないのでこの背景です [p]

＃
数日は藤枝様の仕事前の数時間合奏の練習をする。
会場の玄関に７時に財前様と待ち合わせ[p]

[主人公憂い]
（女中が控えていて、無言の圧力を感じるわ
[主人公眉下げ下]
[主人公口ほほえみ]
それでも藤枝様にお会いできる）[p]

[whosay name=財前美彬]
「貴方が[名字][名前]さんですね。
私が、財前です」[p]

＃
長身の彫の深い顔立ちの青年が私に声を掛けた。[p]

[主人公眉下げ下]
[主人公目閉じ]
[主人公口ほほえみ]
「ええ、
この度は機会を与えて下さってありがとうございます」[p]

[whosay name=財前美彬]
「いえ、今年は経済的にも色々あって
出店を取りやめた方もいて場所に空きがありましたからね
有効活用出来ますのでこちらこそ礼をいいます」[p]

[主人公口通常]
「会場はどちらになりますか？
……もう藤枝様はいらっしゃるのですよね」[p]

[whosay name=財前美彬]
「いらっしゃいますよ、案内します」[p]

[主人公憂い]
「ええ」

＃
財前様に案内され、
2階の奥のテラスに面した会場に着く。[p]
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

[藤枝驚き]
「あ、財前さん、貴方も！」[p]

[whosay name=財前美彬]
「今は誰も居ませんが、誰が聞いているかわからないので
滅多な事はいわないようにしてください
あくまでも私からの紹介ですので」[p]

[藤枝憂い]
「はい」

[whosay name=財前美彬]
「私は他の打ち合わせに行きます。
お二人とも、
時間は限られているのでしっかり練習お願いします」[p]

＃
そういって財前様はこの場を後にした。[p]

[藤枝口微笑み]
「さあ、音を合わせていきましょう」[p]

私たちは音合わせを始めた。互いの心を探るように音を重ねて行く。[p]

もうすこしで合う、というところでピアノの澄んだ音がすこしためらうように震えた。[p]

藤枝様はピアノに顔を向けたまま手を止めずに私だけに聞こえるようにささやいた。[p]

藤枝「あの……」[p]

私も箏を見つめ爪弾きながら、ささやきかえす。[p]

[主人公通常]
「なんですか？」[p]

[藤枝困り]
「財前さんの事をどう思いましたか？」[p]

[主人公驚き]
「え？」

[藤枝目閉じ]
「仕事も出来て、すごい方ですよね
外見も良いです
[藤枝憂い]
貴方は僕で良かったんですか？」

[主人公目閉じ]
「私は貴方がいいです」
（私は藤枝様が好き
今になって揺らぐことはないわ）

[藤枝微笑み]
「そうですか。
……良かったです」

[主人公憂い]
「藤枝様は
私の気持ちを疑っているのですか？」


[藤枝目閉じ]
「いえ、……僕は貴方と公然とお手紙を交わせる財前さんに
嫉妬していたのです
[藤枝憂い]
だから財前さんを見ると少し卑屈になってしまうのです」[p]

[主人公驚き]
（藤枝さまが嫉妬なんて）[p]

[藤枝目閉じ]
[藤枝頬染め]
「僕も貴方が好きです
言葉にできないぐらいに
……きっとずっと」[p]

[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
[主人公頬染め]
「藤枝様……」
（胸がじんわりと熱いわ）[p]

[藤枝退場]


[暗転]
＃
女中に見張られながらも
藤枝様は優しく要領よく指導して下さって
数日間のピアノと筝の合わせるお稽古は
とても満ち足りた幸せな気持ちだった。[p]


;【テキスト全画面】黒茶・和紙風背景に白文字
[テキスト全画面白文字]
数日後
チャリティバザー当日

;[ピアノと筝の入った背景]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公目閉じ]
（藤枝様のピアノと筝のつま弾く音が
溶け合って見事に調和した演奏になったわ）[p]

[藤枝ベース私服]
[藤枝微笑み]
「ご清聴ありがとうございました」[p]

;[SE拍手]
[playse storage=hakushu.ogg loop=false ]


[主人公ほほえみ]
「ありがとうございました」[p]

＃
演奏会は10時、12時半、14時からの3回で
1回目は観客の方はまばらだったけど
3回目には席に座れないほどの観客になった。[p]

＃
お客様が去っていく中、
一人の男性が藤枝様に声をかける。[p]


[whosay name=？？？]
「亡き母君も喜んでおられるだろう
今回の演奏は2年前以上に素晴らしかったよ
ピアノの腕が上達したね肇くん！」

[藤枝驚き]
「青山男爵！お久しぶりです」[p]

[whosay name=青山男爵]
「ああ、爵位を返上したと聞いたが
元気そうでなによりだ」[p]

[藤枝微笑み]
「はい！ありがとうございます。
貴方もお元気そうでなによりです」[p]

[whosay name=青山男爵]
「そちらの女性は？
君ととても息が合った演奏で
まさに心を合わせているような演奏だったが」[p]

[藤枝通常]
[藤枝汗]
「財前さんにご紹介して頂いた[名字][名前]さんです」[p]

[whosay name=青山男爵]
「そうか、それならば名家の御令嬢だろう。
折角の演奏の後にこんな事をいうのは何だが、
あまり親しくなりすぎない方がいい」[p]

[藤枝効果消し]
[藤枝憂い]
「……青山男爵」

[whosay name=青山男爵]
「身分違いの恋で不幸な最後を見たことがある
……演奏を聞いて少し気になったのでな」[p]

[主人公憂い]
（胸が痛い……いつかは一緒になれると信じているけど
もし、お父様が認めて下さらなかったら、
[主人公目閉じ]
そして藤枝様が独逸に留学した時私達はどうなるのかしら）[p]

[whosay name=青山男爵]
「ああ、お嬢さん、気を悪くしたかな失礼したね」[p]

[主人公口ほほえみ]
「いえ、お心遣い痛み入りますわ」[p]
(胸が痛いけど親切心で言って下さっているのだわ)[p]

[whosay name=青山男爵]
「では肇くん、父君と姉君によろしく伝えておいてくれ」[p]

[藤枝口ほほえみ]
「はい、伝えておきます」[p]

＃
人気がなくなった演奏会場で
気まずい雰囲気が私と藤枝様に流れる。[p]

[藤枝憂い]
「こんなにも近くにいるのに、
僕にとって貴方は随分と遠い人です」[p]

[主人公口開け]
「藤枝様！　財前様に
滅多な事を言わないようにと」[p]

[藤枝目閉じ]
「そうですね。また沢山お手紙をかきましょう
[藤枝真剣]
……音楽学校の編入試験の結果がでたら
貴方のお父様にもお手紙を書きます」[p]

[主人公驚き]
「お父様に！」[p]

[藤枝伏目照れ]
「はい、僕の今の気持ちを精一杯書きます。」[p]

[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
[主人公頬染め]
「ええ、お手紙を待っていますわ」[p]
（たとえ何年経っても私は藤枝様
だけをお慕いしている）[p]
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
