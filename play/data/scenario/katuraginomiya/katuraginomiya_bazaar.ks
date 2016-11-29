;=============================================
;◆チャリティーバザー◆２月3週から３月４週までお茶事が高い葛城宮ルート
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*sansaku storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】主人公邸 庭の見える部屋：春
[chara_mod name="bg" storage="bg/room_niwa_haru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

[主人公目パチ1回]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
拝啓　日差しが暖かく春の訪れを感じる頃、[r]
[名前]殿には穏やかにお過ごしのことと存じている。[r]
[r]
[sp]さて、君も今年もチャリティバザーが無事に[r]
開催されることを存じているだろうか。[r]
[r]
[sp]母宮が お茶を点てて和菓子を出し、[r]
野点のような場を設けようと張り切っていた。[r]
[sp] 私もその頃には時間に余裕ができそうなので[r]
少し立ち寄り、バザーの様子を見に行きたい。[r]
[r]
[sp]君も一緒にチャリティーバザーに参加しないだろうか 。[r]
[r]
[sp] それでは返事を待っている。[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[r]
[r]
追伸　色々ある中で沢山の手紙を感謝する。君にとても励まされた。[p]
[手紙葛城宮読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、[r]
[sp]私もチャリティーバザーに参加していいかしら？」[p]

;========================================================
;茶道分岐
[if exp="f.para_shujinkou_j_sadou >= 100"]
;========================================================
;茶道が高い
[whosay name=磯野]
「チャリティーバザーは、華族の夫人を中心に皇族の方も参加されています」[p]
「今後の為にもいいでしょうし、反対する理由はありません 」
＃
磯野は頷いて優しく微笑む。[p]
;========================================================
[else]
;茶道が高くない
;


;====================
[endif]
;=====================
*kyoutu|共通

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
「ええ、それにやっと殿下に会えますわ」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（……やっとお会いできる）[p]

;【テキスト全画面】黒茶・和紙風背景に白文字
[テキスト全画面白文字]
＃
チャリティバザー当日[p]

;野点傘と縁談の背景
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]

#
チャリティーバザー会場の館の
お庭には野点傘が立てられ、
十あまりの縁台に赤毛氈が敷かれている。
中央には梅の盆栽が置かれ梅の花の香りがする。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
（野点会場で待ち合わせしようと
提案してみたけれど、殿下はどこかしら？）[p]


[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮ベース私服]
[葛城宮微笑み]
「[名前]殿！こちらだ。」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
[主人公頬染め]
「……殿下」[p]

#
私は殿下の方へ歩いて言った。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉下げ下]
「ずっと……ずっとお会いしたく思っておりました」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮ため息]
「……本当に君にはずっと待たせてしまったな
どう詫びればいいのだろうか」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公頬染め]
「もうそのことはもういいです
……殿下が私の前にいる
それだけでも幸せです」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目伏せ照れ]
「君と会うのはあの薔薇園以来か。
自分のけじめとして君に手紙で励まされながらも
それでも落ち着くまで君に手紙を書かなかった」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公効果消し]
「ええ。ずっと殿下を信じていました。」[p]

[葛城宮目閉じ]
[葛城宮効果消し]
「ありがとう」

[whosay name=葛城宮妃]
「二人とも、仲が良い事は嬉しいけれど
感動の再会はまた今度ゆっくりするといいわ」[p]

[葛城宮眉通常]
[葛城宮横目]
[葛城宮口通常]
「母宮」

[whosay name=葛城宮妃]
「ねえ、[名前]さんは
お茶立ては得意かしら？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「いえ、お恥ずかしながらまだまだですわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（お茶道の先生は厳しく褒められた事は数えるほど）[p]

[whosay name=葛城宮妃]
「会場時間までまだ時間がある事ですし
私と息子にお茶を点てて頂けないかしら？
以前のお茶事で貴方の心得は十分にあると察していますわ
お茶事は心構えが一番大事なのですよ」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮通常]
「母宮、[名前]殿に無理強いはしないで頂きたい」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
「いえ、殿下恐れ多いことですけれどけれど
私も精一杯心を込めてお茶を点てて
殿下や妃殿下をもてなしたいですわ」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮驚き]
「[名前]殿！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏柔]
「私も美味しいお茶を点てて
和やかな雰囲気を作っていけるようになりたいです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（お点前を披露するのは初めて
……けれど大切な人に点ててみたい）[p]

[whosay name=葛城宮妃]
「ええ、[名前]さんは作法はできていますから
自信をもって茶を点てごらんなさい
野点なのでそんなに作法を気にしなくていいわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ」[p]

[葛城宮通常]
#
私は殿下と妃殿下の前で少し緊張しながら
私は、「お薄一服差し上げます」と一礼し、
湯を沸かし、いつもの手順で心をこめて丁寧に
お茶を点て茶碗にそそぐ。[p]

#
殿下と妃殿下が飲み終わり、
私は期待と不安交じりに問いかけた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「いかがでしたでしょうか？」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮笑顔大]
「お茶はとても美味しかった。
君はまだまだと言っていたが、
随分と流麗な動作にみえる」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ありがとうございます。」[p]

[whosay name=葛城宮妃]
「心こもった温かく美味しいお茶でしたわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉下げ下]
「褒めて頂き嬉しく思いますわ」[p]

[whosay name=葛城宮妃]
「そろそろ会場時間ですわ。
貴方は何時まで入れるのかしら？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[葛城宮通常]
「正午までです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「あまり居れないのですね」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み]
「ああでもまたゆっくり会う機会を
設けるつもりだ。
[名前]殿少しだがバザーを見回ろう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ」[p]

#
;[バザー背景] まだないので暗転
[暗転]
[葛城宮通常]
「何から見ていこうか」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「殿下は欲しいものはありませんか？」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み]
「いや、特に不自由はしていないから
欲しいものが思いつかないな君は？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「そうですわね……」[p]

[fadeoutbgm time=3000]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮驚き]
「あれは！」[p]

[whosay name=？？？]
「……お久しぶりですわね」[p]

#
美しく華やかな女性は気まずそうに殿下に挨拶をした。[r]
歳の頃は[ruby text=に]二[ruby text=じゅう]十前後ぐらいに見える[p]

;他シナリオ数字を漢数字で統一　はたちか迷いましたがそのままで。


[葛城宮怒り]
「自宅で謹慎しているはずが何故ここに？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】一閃（緊迫シーンに
[playbgm storage="kinpaku_issen.ogg" loop=true]
[eval exp="f.bgm_storage='kinpaku_issen.ogg'"]
[endif]

[whosay name=？？？]
「いくら皇后陛下でもいつまでも、私を謹慎は出来ないでしょう。
慈善活動に参加したいと申し出て謹慎を解いてもらったのですわ」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目伏]
「あの一件の事、反省しているんだろうな？
志津子女王！」[p]

[主人公驚き]
[主人公ポーズ片手]
（志津子女王様！？
まさか私の醜聞を作るように指示した方なの？）[p]

[whosay name=志津子女王]
「……やり方は汚かったと思いますわ
そちらの方が[名字]殿ね」[p]

#
ジロジロと値踏みするように
睨むように冷たい視線を向ける[p]

[主人公憂い]
[葛城宮怒り]
「不躾に……失礼だろう」[p]

#
殿下は私をかばうように私の前に出た。

[whosay name=志津子女王]
「[名字]殿はもっと美しい方だと思っていましたわ
晴仁親王殿下はこういう方がお好みなのね」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目閉じ]
「ああ、自分の考え方を押し付けようとする
傲慢な君とは違う」[p][p]

[whosay name=志津子女王]
「まあ。随分な言われよう
私、貴方のこと元はよいとは思っておりますのよ。
貴方は自身が尊い存在という事を自覚し、
政界で私の父宮と衝突するのもお止めになればよろしいのに」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目伏]
「叔父宮や君は親子してあざとく
私にしてみれば不快だ！」[p]

[whosay name=志津子女王]
「今日はやけにとはっきりいいますわね
その子を傷つけたことが
よっぽど許せないのかしら……」[p]

#
彼女は苦笑いをし、
そして私に視線を向けていった。[p]

[fadeoutbgm time=3000]

[whosay name=志津子女王]
「私は[名字]殿を認めませんわ
いきなり現れて晴仁親王をたぶらかした
下賤な方なんて！！」[p]

#
声を荒げて言う彼女はどこか痛々しくて
私は殿下が何か言いかける前に彼女の前に出て言った。[p]

[主人公憂い]
「貴方は殿下をお慕いしているのですね」[p]
（たしか志津子様は殿下の元婚約者候補だった）[p]

[whosay name=志津子女王]
「……どうかしらね
けれど私の夫になる方だと思っていましたわ」

#
志津子様は悲し気な顔をしていった。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
[主人公目閉じ]
（きっとお慕いしていたのだわ）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏せ]
[主人公口開け]
「私も心に決まった方がいて
いきなり別の方と婚約されたら悲しいですわ。
貴方には悪い事をしたと思います」[p]

[whosay name=志津子女王]
「ええ、そうですわね！
晴仁殿下がまだ独身だったら許せたわ。
けれど貴方なんかに奪われたなんて
悔しくて仕方ありませんの」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「志津子様……今すぐに私を許してもらおうとは思いません。
けれど私も殿下をお慕いしているのです。
いつか志津子様や皇族の方々にも認めてもらうように
努力するつもりですわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公口通常]
「私、殿下を誰よりも理解し、
殿下を助けられる賢く強い妃になるつもりです」[p]

[whosay name=志津子女王]
「そう……けれど現実は違いますわ。
反感を持っているのは私だけではありません。
他の方の風当たりは厳しく、貴方は傷ついて
きっと嫁いだことを後悔しますわよ。」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
「未来なんてわかりませんわ。
努力すれば報われることもあります」[p]

[whosay name=志津子女王]
「自信があるのね、まあ私は軽率に事を起こし、
皇后陛下にも叱責を受け、
私は貴方にもう何もする気もありませんわ
……黙って貴方が失望する時を待つことにします」[p]

#
そして志津子様は立ち去って行った。[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮ため息]
「君に嫌な思いをさせてしまったな」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「いえ、私は彼女を犠牲にしているのです
この事実を正面から受け止めるつもりですわ」[p]

（今はそれしか出来ないけれど……）[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮通常]
「私が至らなかったせいもあるとは思っている
苦手な女性だが、
傷つければいいというものでもなかった」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
「私も嫉妬や羨望と無縁ではありませんから
志津子様の気持ちも少しはわかるつもりです
心というのは難しいですわね」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮驚き]
「君が嫉妬を？」
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「似たような気持ちですわ。
殿下は女性にあんなきつい物言いをしませんもの
私の事であんな風に怒って下さった事が
嬉しいと思ってしまいましたの……醜いですわ」[p]


[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目閉じ]
「そうか。だが醜くてもいい
……君を誰よりも愛おしく思っているのだ」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公頬染め]
「……殿下」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（言葉にならないほどの嬉しく優しい気持ちが胸で一杯だわ
きっとこれが愛おしい気持ち）[p]

#
けれど正午の鐘の音鳴った。[p]
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮通常]
「……名残惜しいな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ、けれど
またゆっくりお会いしましょう」[p]

[主人公目閉じ]
#
ーまた今度。[r]
それはきっと近いうちに来る。[r]
春が、訪れる。[p]

@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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
