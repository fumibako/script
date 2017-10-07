*start
;===============================テスト用イテスト用イベントシーン構築==============================
;使用背景メモ　ここはテスト用です必要時に開放
;[preload storage="data/fgimage/bg/bg_ryoutei.jpg"]
;[preload storage="data/fgimage/bg/bg_prologue_dark.jpg"]
;[preload storage="data/fgimage/bg/ B4nFWraU42/bg_sijyou_genkan_hole.jpg"]
;///////////////////////////////////////////////////////////
[stopbgm]
;↓テスト画面からも背景マクロを参照できるように追記します。参照ラベルが違っていたらご調整ください◆jsYiJcqRkk
[call target=*end_sub storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;==============================================================================================
[freeimage layer = 1]
[wait time=10]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
;===============================テスト用イベントシーン構築ここまで===============================
テストページからはじめます[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
*first
[背景_料亭風の屋内（昼)]
;[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[layopt layer=13 visible=true]
[image name="jyunbi" x=0 y=0 layer=13 storage="bg/bg_ryoutei.jpg" time=100]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
[四条ベース羽織]
[四条憂い]
;=============================
[freeimage layer=13 time=800]
[wait time=800]
[layopt layer=13 visible=true]
;=============================
[主人公通常]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「[華衣]は、四人きょうだいの末っ子でね。[r]
[sp]乳母日傘で育てられてじゃじゃ馬に育ってしまったんだ」[p]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「とはいっても、いいところも多いんだよ。[r]
[sp]僕は彼が困ったら、何か力になれないかとそう思って一緒に暮らして[r]
[sp]きたんだ」[p]
;感情 後悔、過去を振り返る
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「[華衣]の方はそう感じていなかったみたいだけれどね……」[p]
[fadeoutbgm time=3000]
;///////////////////徐々に回想シーンへ/////////////////////
[暗転２]
[四条退場]
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
;背景暗転
;男モノローグメッセージウィンドウ 
;セリフのみでは華衣の善を納得できない方の為にト書き説明
;回想シーン 効果セピア
[背景セピア化]
[wait time=100]
;背景四条家
[イベントシーン構築ボタン無し版枠茶色]
[暗転２終了]
[メッセージウィンドウ上ボタン表示]
;=================================================================================_
*seen1
[autosave]
#
[ruby text="し"]四[ruby text="じょう"]条家は、長男 [ruby text="いち"]一[ruby text="か"]華 、次男の[ruby text="か"]華[ruby text="おり"]織、
三男の[華衣]、四女 [ruby text="み"]美[ruby text="か"]華の四兄弟。[p]
;名前を出す必要は・・・ディティール？
[if exp="sf.BGM=='ON'"]
;【BGM】哀しげな曲（攻略対象側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]
財政に優れた[ruby text="いち"]一[ruby text="か"]華、華道の才を見出された[ruby text="か"]華[ruby text="おり"]織。[ruby text="まっ"]末[ruby text="てい"]弟、[華衣]は、[r]
比べてしまえばであるが、特に抜きん出た才能も開花しなかった。[p]
;なぜ？開花しなかったの？
;甘やかされたからもあるが努力もしなかった自然的なもの、過保護に何もできないと言われていたから　兄達の存在が大きく末子は期待されていなかった。[p]
#
それは、兄達の存在も大きかった故に周囲が[華衣]に対して期待せず、過保護に接してしまっていたからであった。[p]
;=================================================================================_
[背景_四条玄関 time=5000]
;[chara_mod name="bg" storage="bg/ B4nFWraU42/bg_sijyou_genkan_hole.jpg" time=5000 wait=false]
;[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;=================================================================================_
;背景 四条家玄関ホール(表示タイミングは変更する waitしないでゆっくりとtime？)
;華織自身も周囲に（兄には）多少コンプレックスはある
[whosay name="女中・その壱" color=%mp.color]
「あら！[ruby text="いち"]一[ruby text="か"]華様のことが新聞に載ってるわ。[r]
[sp]四条鉱山の経営も上手くいってるようだし、これで私たちのお給金も [r]
[sp]上がるといいわね」[p]
[whosay name="女中・その弐" color=%mp.color]
「もう、そんなこと言って！　それよりも来週からは、[ruby text="いち"]一[ruby text="か"]華様が、本格的に[r]
[sp]外交官として活躍されて有名になってしまったらお見掛けすることも[r]
[sp]できなくなってしまうわ」[p]
[whosay name="女中・その壱" color=%mp.color]
「あら！　あなた[ruby text="いち"]一[ruby text="か"]華様と、[ruby text="か"]華[ruby text="おり"]織様のこと、どちらも気にしてたの？」[p]
[whosay name="女中・その弐" color=%mp.color]
「それはソレ。これはコレ。[r]
[sp]はぁ、来週からは奥様と[華衣]様が留学から帰ってくるらしいから大変[r]
[sp]だわ」[p]
[whosay name="女中・その壱" color=%mp.color]
「奥様は、本当に[華衣]様に ご執心ですものね。 留学先では、結局、[r]
[sp]別荘にこもって遊んでいたらしいわ」[p]
[whosay name="女中・その弐" color=%mp.color]
「！！ ちょっと！」[p]
;[whosay name="女中・その壱" color=%mp.color]
;「？」[p]
[whosay name="四条祖父" color="#888898"]
「……」[p]
[whosay name="女中・その壱・弐" color=%mp.color]
「「！　し、失礼しました！！」」[p]
;散開するメイド達
;セリフにすると回想シーンの切り替えにならない為、ト書きへ
;=================================================================================_
*seen2
;[whosay name="華織" color="olivedrab"]
#
――四条家の責務や才を発揮しない[華衣]の将来を憂いた祖父は、[r]
早いところ落ち着いてほしいと考え、若干早めの見合い話を持ってきた。[p]
[autosave]
;華族は国に貢献すること。富や国交以外では、文化などで貢献する
[whosay name="四条祖父" color="#888898"]
「ふん……急遽、見合い話を収集したせいで、良縁と呼べないが、[r]
[sp]過去それなりの高位を得た家柄の子女だな」[p]
[whosay name="四条 華衣" color=%mp.color]
「この中から、選べっていうの？」[p]
[whosay name="華織" color="olivedrab"]
「こら、そんなこと言わない。[r]
[sp][華衣]のことを想ってくれる人がいるのだから」[p]
[whosay name="四条 華衣" color=%mp.color]
「ふーん……」[p]
;なくても？↓
[whosay name="華織" color="olivedrab"]
（僕も時が来たら、[名前]ちゃんに手紙を出せるようになればいいな……。[r]
[sp]ふぅ、今更、選ばれる見込みはなさそうですが……）[p]
[whosay name="四条祖父" color="#888898"]
「さっそく[華衣]、手紙を書きなさい 」[p]
[whosay name="四条 華衣" color=%mp.color]
「面白そうだし、やってみるよ」[p]
;まだ、お節介のときの華織
[whosay name="華織" color="olivedrab"]
「[華衣]、心を込めて書くんだよ」[p]
[if exp="f.event_replay != 'sijyou'"]
[eval exp="f.event_sijyou_kai_jijyou = 1"]
[endif]
;シーン徐々に現時間へ
;=================================================================================_
*seen3
#
;背景 ネリネの花やイメージ画像
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
[背景セピア化_解除]
[wait time=100]
;=================================================================================_
;背景ネリネ
[背景_ネリネ]
;=================================================================================_
[whosay name="華織" color="olivedrab"]
――そして、その中から[華衣]が気に入ったのが、遠縁の公家の子女だった。[p]
;、[sp]それが[華衣]の婚約者となった。[p]
[autosave]
[whosay name="華織" color="olivedrab"]
「彼女は、病弱だったけれど、とても落ち着いていて、[華衣]の悪い[r]
[sp]ところも良いところも受け止めていた」[p]
;相思相愛のイメージ画像が(あれば…)
[whosay name="華織" color="olivedrab"]
「[華衣]も、彼女の深い優しさに引かれ、相思相愛の仲になっていたよ」[p]
;////////////////////////シーン完全に現時間に戻る////////////////////
[暗転２]
[イベントシーン構築ボタン無し版]
;【背景】料亭
[背景_料亭風の屋内（昼)]
;背景 料亭 主人公表示
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[四条ベース羽織]
[四条憂い]
[wait time=10]
[暗転２終了]
;==========================================================
[メッセージウィンドウ上ボタン表示]
*seen4
;感情 悲しい悔やむ
[whosay name="華織" color="olivedrab"]
「[華衣]は、彼女と出会ってからは、少し落ち着いてきた……けれど……」[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
#
華織様は、そこまで話すと俯いたまま黙ってしまわれた。[p]
[主人公憂い]
;プレイヤー感情 どうしたの？
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様？ 」[p]
;後から語られるシーンの為に伏せておく
[whosay name="華織" color="olivedrab"]
「ごめん。今は詳しくは話せないけれど、
[四条憂い]
僕のせいで、彼女と[華衣]は[r]
[sp]別れてしまったんだ」[p]
;プレイヤー感情 驚く 華織に疑いをもつ　主人公：急なことに表情等が固まる　
[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓口： [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
「！」[p]
;華織、躊躇うが話す
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「……ふたりは、二度と会うこともできない」[p]
[主人公憂い]
;プレイヤーのことを語る 華織の正義側
*kaisou_kai
[whosay name="華織" color="olivedrab"]
「[華衣]は、そのことで、ずっと僕を恨んでいる。[r]
[sp]君からの手紙を捨ててしまうほどに……」[p]
;↓急すぎるので地の文をつけましたが適当に変更してください
#
;華織様は、目を伏せると、手紙のやり取りが出来なくなった経緯を語った。[p]
華織様は、目を伏せると、先日の華衣様とのやり取りについて語った。
[cm]
;==============◆◆◆どんな風に恨んでいるの？？　今までどう行動してたの？◆◆◆◆====================
[layopt layer=message0 visible=false]
[暗転２]
[主人公退場]
[背景_四条家玄関_外]
[イベントシーン構築ボタン無し版枠茶色]
[暗転２終了]
[layopt layer=message0 visible=true]
[メッセージウィンドウ上ボタン表示]
;========================================================
[whosay name="華織" color="olivedrab"]
「待ってくれ[華衣]、[r]
[sp]信じてほしい、彼女が残したものが、ここにはあるんだ」[p]
[whosay name="四条 華衣" color=%mp.color]
「そんなの嘘だ！[sp]どうせ兄さんの趣味か、家業の延長だろ？」[p]
[whosay name="四条 華衣" color=%mp.color]
「何もできないからって馬鹿にして！[sp]こんな手紙、[r]
;びりびり～♪
[sp]全部ぜんぶ捨ててやる！」[p]
;【SE】紙を破く（ビリビリたくさん破き捨てる）
[playse storage=paper_biribiri.ogg loop=false]
[wait time=200]
[四条目大]
[whosay name="華織" color="olivedrab"]
「！[sp][華衣]……」[p]
[stopse]
;SEの位置は適当
;【SE】走り去る(屋外)
[playse storage=run_soto.ogg loop=false ]
#
破られた手紙を拾いながら、僕は考える。[p]
[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
（あの雪の日のように[r]
[sp]また僕は、[名前]のことも諦めないといけないのか）[p]
[whosay name="華織" color="olivedrab"]
（それで、[華衣]は、納得してくれるのだろうか）[p]
[whosay name="華織" color="olivedrab"]
（でも、それでは、ただの甘えだ。　あの人と約束したから）[p]
[whosay name="華織" color="olivedrab"]
（あの人の想いを伝えないと。　僕と[華衣]のためにも）[p]
;==============◆◆◆どんな風に恨んでいるの？？　今までどう行動してたの？おわり◆◆◆◆====================
[cm]
;=========================================================================================
[暗転２]
[wait time=10]
;【背景】料亭
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
[背景_料亭風の屋内（昼)]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;プレイヤー、華織に対して疑いはもつが、読むことによって多少の消化
[暗転２終了]
[メッセージウィンドウ上ボタン表示]
;=========================================================================================
[四条憂い]
[whosay name="華織" color="olivedrab"]
「本当は[華衣]の事を思うなら、ずっと会いたかった君との[r]
[sp]見合いも断るべきだった」[p]
[whosay name="華織" color="olivedrab"]
「でも、[名前]、君と再会して、[r]
[sp]何度も会う中で、分かってしまったんだ」[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「勝手だと言われても、[名前]と離れることは嫌なんだ」[p]
;さんづけは確定してからだったっけ→事件解決後
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;胸に手を当てるポーズのイメージ
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;[主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様……）[p]
;=================================================================================_
*seen5
;話の繋がりを説明
[主人公目閉]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
#
あの雪の日に華織様と離れ、手紙が来なくなった時を思い出した。[p]
[autosave]
――[華衣]様の心情に比べたら、小さなこと。[r]
_　それでも、離れること、失うことはとても辛かった。[p]
;(プレイヤー同様に)反芻する華織
[whosay name="華織" color="olivedrab"]
「今だからこそ、わかる」[p]
;目的を語る
[whosay name="華織" color="olivedrab"]
「だからこそ、出て行った華衣に対して……僕は懺悔をしないと[r]
[sp]いけないし、向き合って話をしたいんだ」[p]
;目的について尋ねる 遠慮がちに
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……[華衣]様は[r]
[sp]まだ帰って来られてないのですね」[p]
;答える1 悩みながら答える
[四条憂い]
[whosay name="華織" color="olivedrab"]
「ここずっと、家族総出で[華衣]の捜索にあたってるけれど見つから[r]
[sp]ない……」[p]
;プレイヤー感情 残念 希望がみえない
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのですか……」[p]
;問題と解決策を、より一層明確に
;話セリフにすると烏滸がましさが出たので内面で。
;主人公、案を考える
[whosay name=&sf.girl_namae color="#cf5a7f"]
（こういった時は、[華衣]様の御心が落ち着ける場所が分かれば、見つかる[r]
[sp]気がしますが……）[p]
;２＿１同様・御心に統一することに
;華織をせつく、ストーリーの進行
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様は、[華衣]様が行かれるような場所に心あたりはありませんか？ 」[p]
;場所にのお心　お、いる？
#
華織様はゆっくりと首を横に振って返事をした。[p]
[whosay name="華織" color="olivedrab"]
「いいや。一人にさせたことは、[華衣]の婚約者の件でしかなかったから」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしたか……」[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
;=================================================================================_
*seen6
[autosave]
#
;華織、頭をかかえ、目を瞑る　苦悶の表情
[whosay name="華織" color="olivedrab"]
「もし見つけても僕の言葉を受け入れてくれるか……」[p]
[四条目伏]
[whosay name="華織" color="olivedrab"]
「ごめん、年下の君にこんなことを話して……。[r]
[四条口微笑み]
[sp]やっぱり、こんな事は、自分で解決しないといけないね……」[p]
;華織、出て行こうとする。膝立てるくらい
;主人公、華織を引き止める。歳は関係ないと言う。お互いに歳の差や立ち位置を気にしていた事を知る
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様。[r]
;[四条通常]
[sp]もう、その様なことで気にならさいでください。[r]
[sp]……一緒に考えましょう」[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
;何を気にしているか説明
[whosay name="華織" color="olivedrab"]
;「そうだね。歳の差や立ち位置を気にするのはやめるよ」[p]
「……そうだね。[r]
[sp]歳の差や立ち位置を気にするのはやめるよ。[r]
[sp]ありがとう。[名前]」[p]
[fadeoutbgm time=3000]
;主人公、お見合い時とデート時の決意をしんみりと、明確に実行する
;後の手紙が来なかった件についての心情伏線
;=================================================================================_
*seen7
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（何か[華衣]様の御心に届く方法があればいいのですが……手紙など[r]
[sp]ないのでしょうか？）[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
;目的2を明確にする
@jump storage="sijyou/sijyou_11_1.ks" target=*common

;=================================================================================_
共通へ　使われてないメッセージ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「[華衣]さまのご婚約さまは、何か残していらっしゃらないでしょうか？」[p]
@jump storage="sijyou/sijyou_11_1.ks" target=*common
;=================================================================================_


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

[メッセージウィンドウ上ボタン表示]

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
