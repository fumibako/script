;=========================================================================
;イベント１５回目【指切りエンド】3月4週、goodED時エピローグ
;=======================お芝居の準備中です==================================
*replay_hujieda_hujieda_3_4_goodED
*replay_hujieda_hujieda_3_4_goodED_scene
[if exp="f.flag_replay == true"]
;[bg wait=true storage="toumei.gif" time=1]
[endif]
[iscript]
$('rp_bt').remove();
$('.list').remove();
[endscript]
[freeimage layer = 1]
[wait time=10]
*start
[stopbgm]
[if exp="tf.test_hujieda == true"]
[eval exp="f.okeiko_gamen = true"]
[eval exp="f.hujieda_au = 1"]
[endif]
[call target=*start storage="macro_tati_hujieda.ks"]
;↓normalから続けて再生時のjump先ラベルです
*seen_1
[call target=*3_4_goodED storage="hujieda/preload_hujieda.ks"]

[if exp="f.flag_replay == true"]
;@layopt layer=1 visible=true
;[chara_show name="bg"]
[endif]

;【背景】青空に桜
[bg wait=true storage="../fgimage/bg/bg_sakura.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_sakura.jpg"]
;[chara_mod name="bg" storage="bg/bg_EDsakura.jpg"]
[eval exp="f.haikei_credit=''"]
[プリロード画面消去]
;機能ボタン消去　ジャンプ後に表示　オン
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]

;文字色　font_color
[eval exp="tf.fc='0x663300'"]
;=========================================================================
[mtext name=cc text="これが新しい私たちの始まり。" layer=29 size=29 x=250 y=250 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=true]
[mtext name=cc text="私たちは会えない分沢山お手紙を書いた。" layer=29 size=29 x=250 y=250 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=true]
[freeimage layer=29]
[layopt layer=29 visible=true]
[mtext name=cc text="尽きない思いがあふれ" layer=29 size=29 x=300 y=250 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=true]
[freeimage layer=29]
[layopt layer=29 visible=true]
[mtext name=cc text="お手紙が途絶えることはなかった。" layer=29 size=29 x=250 y=250 color=&tf.fc in_effect="fadeIn" out_effect="fadeOut" wait=true]
[freeimage layer=29]
[layopt layer=29 visible=true]

[fadeoutbgm time=3000]
;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】;bg/bg_EDsakura.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[layopt layer=29 visible=true]
[eval exp="sf.FButton='OFF'"]
;【背景】青空に桜
[image layer=29 x=0 y=0 storage="bg/bg_EDsakura.jpg" time=1000 visible=true]
[bg wait=true storage="../fgimage/bg/bg_EDsakura.jpg" time=50]
[wait time=1000]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position left=300 width=300 height=300 top=200 page=fore margint="50"]
[wait time=10]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
――四年後、某月。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
  ;==========================スクリプト・全画面表示からの復帰準備========================================
[cm]
@layopt layer=message0 visible=false
[call target=*start storage="macro_tati_hujieda.ks"]
;メッセージをもどします
[resetfont]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=50]
[wait time=10]
[イベントシーン構築ボタン無し版]
[主人公通常]
[主人公ポーズ通常]
[eval exp="f.kaogura!='on'"]　
@layopt layer=message0 visible=true
[freeimage layer=29 time=1000]
[wait time=1000]
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
「お嬢様、お茶をどうぞ。　少しは落ち着かれませんと」[p]

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
「そうですね……長い時が経ちました」[p]

「月日もさることながら、お嬢様もとてもお綺麗になりましたね」[p]

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
[主人公驚]
私は、藤枝様の名を聞いた途端、[r]
期待に震えるような思いで女中に返事をしていた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
「お通しして下さい！」[p]

#
肇様の顔が脳裏に浮かぶ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（肇様？　でもこんなに早くつくはずが……）[p]

[主人公口通常]
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

[主人公目閉]
[主人公口通常]
[主人公涙_目閉用]
#
声は確かに肇様のもので、[r]
愛しさと嬉しさが胸に込み上げて涙がこぼれた。[p]


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

肇様は四年前と変わらない、柔らかな微笑みを浮かべる。[r]
その微笑みが懐かしくて、また涙がこぼれた。[p]

[whosay name="藤枝 肇" color=%mp.color]
「僕も嬉しいです」[p]

#
[主人公目伏]
[主人公涙]
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


[whosay name=&sf.girl_namae color="#cf5a7f"]
;エモが多いので直書き
;【立ち絵】主人公：目伏せ照れ
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
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


[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公通常]
[主人公口開]
「それでも、お父様には認めて頂けるはずです！」[p]
[主人公通常]

[whosay name="藤枝 肇" color=%mp.color]
「失礼しました」[p]

[whosay name="藤枝 肇" color=%mp.color]
「今日は[名字]様に大切なお話をさせていただきたく、参りました。[r]
[sp]どうぞお取次ぎをよろしくお願いします」[p]

#
肇様は謝ると、磯野に真摯な眼差しを向けた。[r]
その誠実さを感じる瞳の輝きは、昔と変わらなかった。[p]
;られる（ら抜き言葉ではないですが知らない人が多い為シンプルに)とれる　

[whosay name=磯野 color="dimgray"]
「貴方は、想像していた以上に……いえ、やめておきます」[p]

「私は、お嬢様が幸せでいらっしゃれば、よろしいのです」[p]

#
磯野の瞳は和やかな笑みをたたえていた。[p]

その後、チラリと襖に目をやってから、藤枝様へ向き直った。[p]
[whosay name=磯野 color="dimgray"]
「では旦那様に、ご来訪をお知らせしに参ります」[p]


;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]

#
磯野を見送った後、私達はもう一度向き合った。[p]

;向き合ったら会話を挟む

[whosay name="藤枝 肇" color=%mp.color]
「今日は[名前]さんのお父様に認めてもらうよう、誠意をもって[r]
[sp]婚約を申し込みします」[p]
#
肇様は、再び私に柔らかく微笑む。[p]

;大事なことは分ける
[whosay name="藤枝 肇" color=%mp.color]
「……やっと[名前]さんに辿り着きました」[p]

#
ふと肇様は辛そうな顔をする。[p]

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
「私も不安な気持ちになることもありましたわ。[r]
[sp]そんな時はお箏を弾いて自分の気持ちを確かめていましたの。[r]
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

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

[whosay name=&sf.father_name color="DarkSlateBlue"]
[主人公照れ目普通]
「[名前]、藤枝君、いいかね？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ハッとする
[主人公驚]
「ええ、お父様！」[p]
[主人公ほほえみ]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「邪魔をしただろうか？」[p]

[whosay name="藤枝 肇" color=%mp.color]
「いえ、お待ちしておりました。[r]
[sp]お久しぶりでございます、浩文様」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「四年振りか。 ……立派になったね、藤枝君」[p]

[whosay name="藤枝 肇" color=%mp.color]
「ありがとうございます。 これからも精進します。[r]
[sp][名字]様もご健勝のようで何よりです」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「謙虚な所は、変わってないようで、安心した」[p]

[whosay name="藤枝 肇" color=%mp.color]
「あれからの多くの事を学び、経験しました。[r]
[sp][名前]様のおかげで希望を持ち続けられ、この国に[r]
[sp]貢献できるように帰ってこれました」[p]

「あの頃よりは、一人前の大人になっていますでしょうか？」[p]
#
お父様は頷き、あたたかな眼差しで肇様を見ている。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（きっと肇様の努力と成功を認めてくれている）[p]

[whosay name="藤枝 肇" color=%mp.color]
「[名字]様、[名前]さんとの婚約を正式に認めて頂く為に訪問しました。[r]
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
「はい、ご贔屓頂いてる皆様のお陰で、工房を大きくする予定です」[p]

#
巷では楽器の評判はとても良く、発注に追い付かないほどだとの噂だ。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（きっと十年後二十年後には、もっと大きくなるわ。 [r]
[sp]肇様も、音楽をこの国に広め、盛んにしようと考えておられる）[p]
;ｽﾏﾎ最大行数で仮改行_script2

[whosay name=&sf.father_name color="DarkSlateBlue"]
「ピアニスト、作曲家として名をあげている事も[r]
[sp]音楽学校の助教授が内定したとも磯野から聞いている」[p]

[whosay name="藤枝 肇" color=%mp.color]
「僕にはなすべきことが多くあり、これからも努力します！」[p]
#
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
私と肇様は、微笑み合った。 幸福な気持ちがいっぱいで胸が詰まる。[p]

[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私も肇様のように沢山努力しよう）[p]

（私達が幸せになる為に）[p]
#

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
;【背景】ﾌﾟﾛﾛーｸﾞ どちらか選んでください
[image name=end  layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[bg wait=true storage="../fgimage/bg/bg_prologue.jpg" time=50]
[wait time=1000]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position left=300 width=330 height=300 top=200 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
――そして肇様と[p]
新しい明日を紡いでいく。[p]
;==================================================================================
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position name="kan" left=350 width=300 height=300 top=200 page=fore margint="50"]
;テキスト全画面　0x663300
[font color=white size=35]
[iscript]
$("kan").css('margin','auto');
[endscript]
;===============================================================
;画面中央に「完」の文字
[sp]　  完
[p]
;================スクリプト・全画面表示からの復帰準備 初期化　ｽｸﾘﾌﾟﾄ担当さまにお任せします。================
;メッセージをもどします
[resetfont]
;メッセージの表示を消します　
[layopt layer=message0 visible=false]
[freeimage layer=29 time=1000]
[wait time=1000]
;メッセージレイヤを会話窓用に設定変更
;[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
;[layopt layer=fix visible=true]
;[eval exp="sf.FButton='ON'"]
;[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

[if exp="f.flag_replay == true"]
[イベントシーン終了]
;@layopt layer=29 visible=true
[iscript]
$('.1_fore').remove();
[endscript]
@layopt layer=1 visible=true
[endif]

;回想シーン戻る処理
[endreplay]

[if exp="f.flag_replay == true"]
;web版はendreplayの下にするexe版はendreplayで戻る
[イベントシーン終了]
@jump storage="replay2.ks"
[endif]

[if exp="f.okeiko_gamen == true"]
[イベントシーン終了・ＢＧＭ有]
[call storage="sijyou/test_ed_credit.ks" target=*test_haikei]

[藤枝ルート終了 end="good"]
;藤枝ルート判定
[eval exp="tf.ED_hujieda = 1"]
[skipstop]
[wait time=10]

;スキップ停止　キースキップ安定化のため、スキップフラグ処理追加
[iscript]
TG.kag.ftag.startTag("cancelskip");
f.skip=false;
[endscript]

;tweet表示
[call storage="sijyou/01_tweet.ks"]
[endif]


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
