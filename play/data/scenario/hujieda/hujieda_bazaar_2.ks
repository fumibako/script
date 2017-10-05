;=============================================
;◆チャリティーバザー◆3月1週から３月3週まで琴パラが高い藤枝ルート
;=======================お芝居の準備中です==================================
*first_1
[stopbgm]
[call target=*hujieda_bazaar_2 storage="hujieda/preload_hujieda.ks]
[call target=*start storage="macro_tati_hujieda.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】ﾁｬﾘﾃｨｰ会場門前
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity6.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[プリロード画面消去]
;最大全角３１文字×４行
;==========================スクリプト・全画面表示の間に設定===============================
*seen00
;【テキスト全画面】  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:華族会館全画面
[image layer=29 x=0 y=0 storage="bg/B4nFWraU42/bg_cyarity6_1.jpg" time=50 visible=true]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore]
;【背景】ﾁｬﾘﾃｨｰ会場門前
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity6.jpg" time=50]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

――華族会館。[r]
長屋門の奥に絢爛な洋館がそびえ立っている。[p]

かつて、政府の重鎮達が、[r]
西欧諸国に我が国の発展を知らしめる為に造られた[r]
迎賓館であり、諸外国を模倣し、舞踏会が[r]
開かれる場であった。[p]

今は国賓をもてなし、[r]
華族としての責務を果たす場として[r]
『華族会館』と呼ばれている。[p]

衆人の模範たる華族として、『慈善活動』は、[r]
最も崇高な社交の場であり、[r]
女性の社会活動の第一歩でもあった。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_hujieda.ks"]
[イベントシーン構築ボタン無し版]
;裏で表情リセット
[主人公ポーズ通常]
[主人公通常]
[freeimage layer = 29 time=1000]
[wait time=1000]
[メッセージウィンドウ上ボタン表示]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
;==========================スクリプトここまで=========================================================
*seen0
#
私は、ここで五日間、藤枝様の仕事前に数時間の合奏練習をすることに[r]なった。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;==============================================================================
;【背景】;野点傘と縁談の背景
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/katuraginomiya_yaten.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;==============================================================================
*seen1
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ここで、いいのかしら）[p]
#
人づてに聞き、待ち合わせの野点の会場にたどり着く。[p]
[if exp="tf.test_gamen == true"]
テストページから開始しています。シナリオ終点にjumpしますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]
[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*seen_end1
[s]
*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（女中が控えていて、無言の圧力を感じるわ）[p]
[主人公眉下げ下]
[主人公口ほほえみ]
（藤枝様にお会いできる）[p]

[whosay name="財前美彬"]
「貴方が[名字][名前]さんですね。 私が、財前です」[p]

#
長身で彫の深い顔立ちの青年が私に声を掛けた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目閉じ]
[主人公口ほほえみ]
「ええ、財前様、この度は機会を与えて下さってありがとうございます」[p]

[whosay name="財前美彬"]
「いえ、今年は経済的にも色々あって[r]
[sp]出店を取りやめた方もいて、場所に空きがありましたからね。[r]
[sp]有効活用出来ますのでこちらこそ礼をいいます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
（過去のお手紙から冷淡な印象を受けたけど悪い方ではないわ）[p]

（藤枝様とは、どの様なご関係かしら？）[p]

[whosay name="財前美彬"]
「早速ですが、お伝えした通り[r]
[sp]本日から[名字]様には、五日間、藤枝君と会場の練習室を[r]
[sp]借りて練習をして頂きます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公口通常]
「練習室はどちらになりますか？[r]
[sp]……もう藤枝様はいらっしゃるのですよね」[p]

[whosay name="財前美彬"]
「いらっしゃいますよ、案内します」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「ええ」[p]
#
;==============================================================================
;【背景】演奏会場１うらぐち
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity51.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;==============================================================================
*seen2
#
財前様について裏口から華族会館へと入る。[p]
#
;==============================================================================
;【背景】準備中の廊下
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity8.jpg" time=1100]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;==============================================================================
*seen3
#
会場の中では、既に貴婦人の方々がチャリティーバザーの準備をしていた。[p]
貴婦人たちは相談しながら指示を出し、[r]
女中たちは飾り付けをし、下男達は陳列台を作っている。[p]

[whosay name="某貴婦人１"]
「こちらにいける菊の花を」[p]

[whosay name="某貴婦人２"]
「[ruby text=じゅう]什[ruby text=き]器はこちらへ」[p]

[whosay name="某貴婦人３"]
「花でウェルカムの文字を入れようかしら」[p]
#
;==============================================================================
;【背景】二階への階段
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity7.jpg" time=1100]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;==============================================================================
*seen4
[主人公驚]
「皆様、熱心にチャリティバザーの準備をされているのですね！」[p]

#
ご婦人方々の慌ただしく、熱意ある様子に私は驚きを隠せなかった。[r]
そんな私に財前様は、ため息をついて説明し始めた。[p]

[whosay name="財前美彬"]
「慈善バザーは我が国にとって重要な活動です。[r]
[sp]貧しい方々の奨学支援や、病気を患った方々の環境を[r]
[sp]整える為にこういった資金を集める事が必要なのですよ」[p]

[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]
[主人公眉下げ下]
[主人公目閉じ]
（私は世間知らずだわ。 藤枝様のお母様も熱心に慈善活動されてたとか[r]
[sp]そんな重要な事なら、なおさら頑張りましょう！）[p]

[whosay name="財前美彬"]
「……行きましょうか」[p]

#
;==============================================================================
;【背景】演奏会場2_近景
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_hujieda_ensou2.jpg" time=1200]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;==============================================================================
*seen5
;財前様に案内され、ニ階の奥のテラスに面した会場に着く。[p]

財前様に案内され、二階の奥のテラスに面した練習室に着くと、[r]
藤枝様は心の琴線に触れるような演奏をしていた。[p]
#
;【背景】ｲﾒｰｼﾞ背景ｵﾙｶﾞﾝ
[image layer=13 x=0 y=0 storage="bg/bg_hujieda_orugan.jpg" time=1300 visible=true]
[wait time=10]
[eval exp="f.haikei_credit=''"]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目閉]
[主人公口ほほえみ]
（藤枝様がオルガンを弾く音は初めて聴いたけれど[r]
[sp]心に響く綺麗な優しい音色なのは変わらないわ）[p]

;==============================================================================
#
;【背景】演奏会場1_遠景
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_hujieda_ensou1.jpg" time=1200]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[藤枝ベース私服_楽譜無し]
[藤枝微笑み]
[主人公目伏]
[freeimage layer=13 time=600]
[wait time=600]
;==============================================================================
*seen6
[whosay name="財前美彬"]
「藤枝君」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝驚き]
「あ、財前さん、貴方も！」[p]

[whosay name="財前美彬"]
「今は誰も居ませんが、誰が聞いているかわからないので[r]
[sp]あくまでも私からの紹介ですので」[r]
[sp]滅多な事はいわないようにしてください。[p]

;あくまでも私からの紹介ですので滅多な事はいわないようにしてください。
[whosay name="財前美彬"]
「君達は若く恋する年頃なのでしょうが[r]
[sp][名字]様と手紙を交わしていることは、他の方に悟られれないように。[r]
[sp]迂闊な言動は、はしたないと思われる事になりかねませんからね」[p]

[whosay name="藤枝 肇" color=%mp.color]
[主人公目伏]
[藤枝憂い]
「はい。[sp]お手紙を交わしている素振りはみせません」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（本来、華族は家長が決めた相手と結婚し、身分の違う相手との[r]
[sp]恋は許されない）[p]

[whosay name="財前美彬"]
「私は他の打ち合わせに行きます。[r]
[sp]お[ruby text=ふた]二[ruby text=り]人とも、時間は限られているので、しっかり練習を[r]
[sp]お願いします」[p]
;お願いまで入りますが折り返します

#
そういって財前様はこの場を後にし、[r]
藤枝様は財前様の重く言葉を受け止めつつ、雰囲気を変えるように[r]言った。[p]
;ながら→つつ　変えるように→思いつかないのでこのまま

[whosay name="藤枝 肇" color=%mp.color]
[藤枝口微笑み]
「さあ、音を合わせていきましょう」[p]

#
;【背景】ｲﾒｰｼﾞ背景　箏
[image layer=13 x=0 y=0 storage="bg/bg_hujieda_koto.jpg" time=1300 visible=true]
[wait time=300]
[eval exp="f.haikei_credit=''"]

;【背景】ｲﾒｰｼﾞ背景ｵﾙｶﾞﾝ　
[image layer=13 x=0 y=0 storage="bg/bg_hujieda_orugan.jpg" time=2000 visible=true]
[wait time=10]
[eval exp="f.haikei_credit=''"]
#
私たちは音合わせを始めた。 互いの心を探るように音を重ねていく。[p]

[主人公目閉じ]
もう少しで合う、というところでオルガンの澄んだ音が少し[ruby text=ため]躊[ruby text=ら]躇うように[r]震えた。[p]

;イメージ背景削除
[freeimage layer=13 time=600]
[wait time=600]

[主人公眉下げ下]
[主人公目伏]
藤枝様はオルガンに顔を向けたまま手を止めずに私だけに聞こえるように[r]
[ruby text=ささ]囁いやいた。[p]

[whosay name="藤枝 肇" color=%mp.color]
「あの……」[p]
#
私も箏を見つめ爪弾きながら、[ruby text=ささ]囁やきかえす。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目にこ]
「なんですか？」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝困り]
「財前さんの事をどう思いましたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「え？[sp]冷静で合理的な方かしら、[r]
[sp]知的で尊敬できる方だと思いますわ」[p]

[主人公ほほえみ]
（バザーの為に尽力しているし良い方かもしれないわ）[p]
[whosay name="藤枝 肇" color=%mp.color]
[藤枝目閉じ]
「仕事も出来て、すごい方ですよね。 外見も良いです。[r]
[藤枝憂い]
[sp]貴方は、僕で良かったんですか？」[p]

;ずっとほほえみ回避
#
[主人公目パチ1回]
声が切なげな響きを震わす。[p]
;藤枝様の
[whosay name=&sf.girl_namae color="#cf5a7f"] 
[主人公驚]
「……何をおっしゃっているのですか？」[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝困り]
「いえ、少し ……で」[p]

#
;口から閉じる
[主人公口通常]
[主人公憂い]
一瞬、藤枝様のオルガンの和音が少し乱れる。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（藤枝様は私と財前様がお手紙を交わしていた事をご存じなのだわ）[p]
[主人公口ほほえみ]
[主人公目閉じ]
「私は貴方がいいです」[p]
[主人公頬染め]
（私は藤枝様が好き。　今になって揺らぐことはないわ）[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝笑顔大]
「そうですか。　……良かったです」[p]
[藤枝通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「藤枝様は、私の気持ちを疑っているのですか？」[p]
[whosay name="藤枝 肇" color=%mp.color]
[藤枝目閉じ]
「いえ、……僕は貴方と公然と手紙を交わせる財前さんに[r]
[sp]嫉妬していたのです。[r]
[藤枝憂い]
[sp]だから財前さんを見ると少し卑屈になってしまうのです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
（藤枝様が嫉妬なんて）[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝目閉じ]
[藤枝頬染め]
「僕も貴方が好きです。[r]
[主人公口通常]
[sp]言葉にできないぐらいに……きっとずっと」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
[主人公眉下げ下]
[主人公目伏]
「藤枝様……」
[主人公頬染め]
[p]
（胸が、じんわりと熱いわ）[p]

[藤枝笑顔大]
[whosay name="藤枝 肇" color=%mp.color]
「聴いて下さる方々の為にも、一緒に頑張りましょう！」[p]

[主人公目にこ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]

（きっと藤枝様とならよい演奏が出来るわ）[p]
;================================================================================
#
;【背景】ｲﾒｰｼﾞ背景ｵﾙｶﾞﾝ　
[image layer=13 x=0 y=0 storage="bg/bg_hujieda_orugan.jpg" time=2000 visible=true]
[wait time=10]
[eval exp="f.haikei_credit=''"]
;================================================================================
*seen7
[主人公目閉じ]
#
オルガンの切ない伴奏はお箏の主旋律に寄り添い、次第に暖かなものへと[r]変わる。[p]

;================================================================================
;【背景】ｲﾒｰｼﾞ背景　箏
[image layer=13 x=0 y=0 storage="bg/bg_hujieda_koto.jpg" time=1300 visible=true]
[wait time=500]
[eval exp="f.haikei_credit=''"]
;================================================================================
*seen8
#
――そして[ruby text=ふた]二つの音は溶け合いっていく。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（音を合わせるのは楽しいのね）[p]
[主人公目伏]
#
私は藤枝様の包み込むような優しい音に合わせて、どこまでも[r]
高らかに弾いた。[p]

[藤枝退場]
[fadeoutbgm time=3000]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景に白文字  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=10]
;イメージ背景削除
[freeimage layer=13 time=600]
[wait time=600]
[イベントシーン構築ボタン無し版]
;裏で表情リセット
[主人公ポーズ通常]
[主人公通常]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】演奏会場１ 
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_hujieda_ensou3.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
*seen9

私達は女中に見張られながらも、[r]
チャリティーバザーのお客様の為に[r]
お稽古を重ねた。[p]
藤枝様は優しく要領よく指導して下さって、[r]
束の間の[ruby text=いつ]五[ruby text=か]日間は、[r]
とても満ち足りた幸せな気持ちだった。[p]


;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=10]

[ruby text=いつ]五[ruby text=か]日後、[r]
チャリティバザー当日。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
[wait time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_hujieda.ks"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================
*seen10
#
司会者が会場に立つと、藤枝様の紹介を始めた。[p]

;【背景】金屏風
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[表示準備 storage="bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg"]

[whosay name="司会者" color=%mp.color]
「本日、来ていただいたのは、ピアノの天才少年、藤枝肇君です。[r]
[sp]伝説の再来となるでしょうか！[sp]さあ、藤枝君挨拶を！」[p]
;ここはピアノでいいかと

;【SE】拍手（コンサートホール）
[playse storage=hakushu_concert.ogg loop=false ]
;[playse storage=hakushu.ogg loop=false ]
#
司会者は財前様の知り合という事で、場慣れしているようだった。[p]
;================
[藤枝ベース私服]
[藤枝微笑み]
[表示開始 time=300]
;================
[whosay name="藤枝 肇" color=%mp.color] 
「皆様、お久しぶりです、とご挨拶してもよろしいでしょうか？[r]
[sp]僕も色々ありましたが、[r]
[sp]お陰様でまたこの舞台に立てて嬉しく思います……」[p]

[主人公憂い]
#
胸の鼓動が早鐘を打ち、不安な気持ちが広がる。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
（お稽古は十分したけれど人前で弾くのは緊張するわ）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]

#
藤枝様が挨拶を終え、優しく微笑み私にだけ聞こえる声で言った。[p]
[藤枝目閉じ]
[whosay name="藤枝 肇" color=%mp.color] 
「大丈夫です。 僕に合わせて下さい」[p]

[主人公眉下げ下]
[主人公目伏]
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「ええ」[p]
;=========================================================================
#
;【背景】ｲﾒｰｼﾞ背景ｵﾙｶﾞﾝ　
[image layer=13 x=0 y=0 storage="bg/bg_hujieda_orugan.jpg" time=2000 visible=true]
[wait time=10]
[eval exp="f.haikei_credit=''"]
;=========================================================================
*seen11
#
藤枝様の前奏が始まる。[p]
いつもの繊細で美しい音色が、今日は一段と甘く、[r]
心がこもっているようだった。[p]
一曲目は"亜麻色の髪の乙女"[p]

;【背景】ｲﾒｰｼﾞ背景　箏
[image layer=13 x=0 y=0 storage="bg/bg_hujieda_koto.jpg" time=1300 visible=true]
[wait time=300]
[eval exp="f.haikei_credit=''"]

[主人公頬染め]
[主人公目閉じ]
[主人公口ほほえみ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（まるで告白されているような気分……くすぐったいわ）[p]

#
私はその音につられるようにして自然とお箏をつま弾いていた。[p]
;================================================================
[暗転２]
;イメージ背景削除
[freeimage layer=13 time=100]
[wait time=100]
;【背景】金屏風
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[暗転２終了]
;================================================================
*seen12
#
[主人公驚]
最後の音を弾き終えてハッとする。[p] 
;【SE】拍手（コンサートホール）
[playse storage=hakushu_concert.ogg loop=false ]
[playse storage=hakushu.ogg loop=false ]

目を向けると、観客席から皆が立ち上がり、拍手の嵐が巻き起こっていた。[p]

[whosay name="藤枝 肇" color=%mp.color] 
[藤枝ベース私服]
[藤枝笑顔大]
「ありがとうございました」[p]

#
藤枝様を振り返ると、とても嬉しそうな顔をしていた。[p] 

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
（いつの間にか演奏に熱中していたのね）[p] 
（藤枝様が音で緊張をほぐして下さって、良い演奏ができたのだわ) [p]

#
[主人公目閉じ]
拍手の残響を聞きながら達成感で胸が詰まる。[p]

#
;[主人公目閉]変化がないのでコメ
[主人公口ほほえみ]
そして司会の方が来て感想と挨拶を終え、大盛況の内に[ruby text=ひと]一幕を終えた。[p]


;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;====================================================================================
*seen13
――[ruby text=さん]三時半。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
;【背景】金屏風
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_sijyou_kinbyoubu.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[主人公ほほえみ]
[freeimage layer = 29 time=1000]
[wait time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
;==========================スクリプト・全画面表示からの復帰準備========================================
今日の最後の演奏が終わり、[r]
藤枝は笑顔で満足そうにお客様を見送る。[p]
[whosay name="藤枝 肇" color=%mp.color] 
「ご清聴ありがとうございました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"] 
「ありがとうございました」[p]
[藤枝微笑み]
[主人公目閉じ]
（合奏できて良かった。[r]
[sp]藤枝様となら、きっと何でも乗り越えられるわ）[p]

;【SE】人々のざわめき（ザワザワ…コンサート等ホール会場）
[playse storage=zawa_hall.ogg loop=false ]

[whosay name="観客１" color=%mp.color]
;主人公が動いてないので表情変化
[主人公目伏]
「とても素晴らしい演奏だったわ。 これが噂の二年前の演奏なのね」[p]

[whosay name="観客２" color=%mp.color]
「感動したよ。 十代の演奏者とは思えない表現力と音色だった」[p]

#
聞こえてくる言葉はどれも好評なものだった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（合奏できて良かった。　今日の事は忘れないわ）[p]

[whosay name="司会者" color=%mp.color]
「お二人とも、素晴らしい演奏をありがとうございます！……」[p]

#
司会の方が来て感想と挨拶を終え、大盛況の内に一幕を終えた。 [p]

;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;====================================================================================
*seen14
演奏会は、[ruby text=じゅう]十時、[ruby text=じゅうに]十二時半、[ruby text=に]二時からの[r]
三回で、[ruby text=いっ]一[ruby text=かい]回目は、観客の方は、まばらだったが、[r]
[ruby text=さん]三回目には、席に座れないほどの観客になった。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
;【背景】演奏会場１ 
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_hujieda_ensou3_1.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[藤枝ベース私服]
[藤枝微笑み]
[主人公通常]
[freeimage layer = 29 time=1000]
[wait time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
;==========================スクリプト・全画面表示からの復帰準備========================================
*seen15
#
お客様が去っていく中、[ruby text=ひと]一[ruby text=り]人の男性が藤枝様に声をかける。[p]

;ここもオルガンですが意味違うので　なしに　演奏っていってるのでわかるかと
[whosay name=？？？]
「腕が上達したね肇君！[r]
[sp]今回の演奏は二年前以上に素晴らしかったよ。[r]
[sp]亡き母君も喜んでおられるだろう」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝驚き]
「青山男爵！お久しぶりです」[p]

[whosay name=青山男爵]
;主人公動いてないので何かしら表情を
[主人公目パチ1回]
「ああ、爵位を返上したと聞いたが、元気そうでなによりだ」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝微笑み]
「はい！ ありがとうございます。 貴方もお元気そうで、何よりです」[p]

[whosay name=青山男爵]
;主人公動いてないので何かしら表情を
「そちらの女性は？[r]
[主人公目パチ1回]
[sp]君とまるで心を合わせているような演奏だったが」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝通常]
[藤枝汗]
「財前さんにご紹介して頂いた、[名字][名前]さんです」[p]

[whosay name=青山男爵]
「そうか、それならば名家の御令嬢だろう」[p]

「……折角の演奏の後にこんな事をいうのは何だが、[r]
[藤枝効果消]
[藤枝憂い]
[sp]あまり、親しくなりすぎない方がいい」[p]

[whosay name="藤枝 肇" color=%mp.color]
[主人公効果消]
[主人公憂い]
「……青山男爵」[p]

[whosay name="青山男爵"]
「身分違いの恋で不幸な最後を見たことがある」[p]

[whosay name="青山男爵" color=%mp.color]
「その昔、曄子と次郎という若い男女がいて、 [r]
[sp]親の反対を押し切って駆け落ちしたが、生活が苦しくなり、[r]
[sp]曄子は心の病になり、実家に帰り、次郎は行方不明になった」[p]
;なり、がつづくので→なって　実家に帰りはなくても。次郎は何して行方不明になった

[whosay name="藤枝 肇" color=%mp.color]
[藤枝目閉じ]
「……僕も身分違いの恋愛にまつわる不幸な噂は、[r]
[sp]いくつか聞いています」[p]

[whosay name="青山男爵"]
[藤枝困り]
「ないとは思うが藤枝君はそうならないでほしい。[r]
[sp]……演奏を聞いて少し気になったのでな」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（胸が痛い……いつかは一緒になれると信じているけど[r]
[sp]もし、お父様が認めて下さらなかったら……）[p]
;それに
（これから先、藤枝様が独逸に留学した時、私達はどうなるのかしら）[p]

[whosay name="青山男爵"]
;主人公動いてないので何かしら表情を
[主人公目伏]
「ああ、お嬢さん、気を悪くしたかな失礼したね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
[主人公口ほほえみ]
「いえ、お心遣い痛み入りますわ」[p]

（心が痛いけど親切心で言って下さっているのだわ）[p]

[whosay name="青山男爵"]
「もし曄子が貧しさに耐える"強い心"があれば、[r]
[sp]もしくは[r]
[sp]次郎に行く当てがあれば、結末は違っていたかもしれないがね」
[藤枝眉下げ]
[藤枝口開]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（強い心……）[p]

[whosay name="青山男爵"]
[藤枝口通常]
「肇君、君が国に文化的な貢献をしていることを期待しているよ。[r]
[sp]まだ大変な中だとは思うが、希望を持ち続けて頑張るなら[r]
[sp]夢は叶うだろう」[p]


[whosay name="藤枝 肇" color=%mp.color]
[藤枝困り微笑み]
「ありがとうございます」[p]

[whosay name="青山男爵"]
[主人公目伏]
「では肇君、父君と姉君によろしく伝えておいてくれ」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝口微笑み]
「はい、伝えておきます」[p]
[主人公憂い]

#
;シーン変更なので何かしら藤枝に表情変更を
[藤枝通常]
人気がなくなった演奏会場で、私は憂いを隠し切れなかった。[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝目パチ1回]
[藤枝困り]
「どうかされましたか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「こんなにも近くにいるのに、[r]
[sp]私、藤枝様とずっと一緒にいられるのか不安になって……」[p]
(強い心を持たなくてはいけないのに)[p]
[藤枝目閉じ]
[whosay name="藤枝 肇" color=%mp.color] 
「青山男爵の話を気になさっているのですね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ……」[p]
[藤枝困り微笑み]
[whosay name="藤枝 肇" color=%mp.color] 
「あの方は、僕の幼い頃からの実の息子のように気にして[r]
[sp]くださっています。[r]
[sp]ですから、言いにくい事を口にして頂いたのだと思います……」[p]

[whosay name="藤枝 肇" color=%mp.color]
[藤枝真剣]
「ですが、それを踏まえても[r]
[sp]練習室の時に貴方が仰ってくれたので、気持ちは変わらないです」
[藤枝目閉じ]
[p]
[whosay name="藤枝 肇" color=%mp.color]
[藤枝笑顔]
「それに彼らのようになりません」[p]
[藤枝笑顔大]
「僕は[ruby text=いち]一人前になって貴方を迎えにいきます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
「本当ですか？ 私は……」[p]

[主人公口通常]
（忠告されただけなのに不安に駆られているわ）[p]

#
[cm]
;メッセージの表示を消します　
[layopt layer=message0 visible=false]
;サイズアップ・全画面等スクリプト変更するときはテスト（または報告）して下さい。間違ったままアップしてしまいます。
[暗転２ storage="bg/B4nFWraU42/bg_hujieda_ensou3_1.jpg"]
[藤枝サイズ顔アップ]
[藤枝ベース私服_楽譜無し]
[藤枝目伏せ照れ]
[暗転２終了]
;メッセージの表示を戻します
[layopt layer=message0 visible=true]
[wait time=10]

#
藤枝様は私の手を握り、勇気づけるように囁いた。[p]
[whosay name="藤枝 肇" color=%mp.color] 
「大丈夫……大丈夫です！」[p]
;主人公が動いてないので何かしら表情を
[主人公目伏]
「音楽学校の編入試験の結果がでたら、貴方のお父様にも手紙を[r]
[sp]書きます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「お父様に！」[p]
[whosay name="藤枝 肇" color=%mp.color]
[藤枝微笑み照れ]
「はい、僕の今の気持ちを精一杯書きます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「ええ、お手紙を待っていますわ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目閉]
[主人公頬染め]
（たとえ何年経っても、私は藤枝様だけをお慕いしている）[p]

*seen16
#
私は夢を諦めない藤枝様の強さを感じた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（きっと、また一緒に弾ける日がくるわ）[p]
*seen_end1
#
;次のイベントにでてしまう名前残りを消去
[eval exp="sf.event_hujieda_bazaar = 1"]
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
