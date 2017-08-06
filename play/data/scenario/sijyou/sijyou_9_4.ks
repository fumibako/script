;¥¥¥¥¥¥¥イベント4¥¥¥¥¥¥¥¥
;/////☆デート2 ターニングポイント○歌舞伎座で音頭恋寝刃を鑑賞、伏線とキャラ紹介/////
*replay_sijyou_9_4
*start
[stopbgm]
;暗転プリロードサブルーチン
[call target=*9_3 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;=================================================================================_
*seen0
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[freeimage layer = 1]
[wait time=10]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
;全画面テキストから開始時に文字が表示されない場合があるため、↓追記します(◆jsYiJcqRkk
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
[プリロード画面消去]
;スクリプト担：↓お稽古パートから歌舞伎見物シーンへ自然につながるような地の文を入れたいのですが、こんな感じで大丈夫でしょうか？
;okです
[sp][r]
;「に」が続くので調整しました(◆jsYiJcqRkk
――華織様からお芝居見物に誘われ[r]
[r]
歌舞伎『大正座』を訪れることになった。[p]
;背景変更
[背景_四条_歌舞伎座中]
;[chara_mod name="bg" storage="bg/bg_kabuki_in.jpg"]
;[eval exp="f.haikei_credit='photo　by　明治村画像庫2 早川　http://d.hatena.ne.jp/meiji_photo/'"]
[call target=*start storage="macro_tati_sijyou.ks"]
[resetfont]
[wait time=10]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[freeimage layer=29 time=0]
;==========================================================================
[メッセージウィンドウ上ボタン表示]
[whosay name="華織" color="olivedrab"]
「本日の演目は『音頭恋寝刃』……」[p]
[autosave]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;スクリプト担：BGM、SEの間隔をすこし長めに取りたかったので指定箇所から移動しています。違和感のある場合は再移動をお願いします
;【BGM】みちくさ
[playbgm storage="michikusa.ogg" loop=true]
[eval exp="f.bgm_storage='michikusa.ogg'"]
[endif]
[主人公目パチ1回]
#
桟敷き席に座っていた私は、隣に座る華織様の様子を[ruby text=うかが]窺った。[p]

[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]

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
移動します。[p]
[cm]
@jump target=*seen_end
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]

[whosay name="華織" color="olivedrab"]
「わからないことがあったら聞いて」[p]

[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「親戚の婚約者の邸宅で行われた『天覧芝居』を観にいったときから、[r]
[sp]芝居は好きなんだ」[p]

[主人公目パチ1回]
[whosay name="華織" color="olivedrab"]
「名役者 菊次郎 がでているみたいだ」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「ここに出てくる『波ヶ浦』は実際にある地名なんだよ、[r]
[sp]富士がみえる美しい海岸で……」[p]

[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様、お元気そう）[p]
;[太鼓SE]ドンドンドン…
[playse storage=taiko.ogg loop=false ]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="役者 その壱" color=black]
「これが名高い『波ヶ浦』でございまするぅ～」[p]
#
舞台のあらすじは、主家より名刀といわれる刀を求めて献上するようにとの[r]
命を受けていた男が、若いゆえの過ちを犯し、
せっかく見つけた刀を、うっかり無くしてしまう。[p]
それでも、珍道中に巻き込まれながらも、縁あって刀を取り戻す……といった一御家騒動、人情のお話であった。[p]
;スクリプト担：↑「命を受けていたが」→「命を受けていた男が」に変更してみました。「家老の倅が」と悩みましたが、刀を無くした人物と取り戻した人物が別ですし、ぼかした方が読みやすいでしょうか
;[SE拍手]
[playse storage=hakushu.ogg loop=false ]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]
[wait time=1000]
#
;演目の内容は、貢という男性が操られ大勢の人を殺してしまったと悔やみ、自害をしようとする。
;それを喜助という者が押し留め、貢の持っている刀こそ、貢が探していた「青江下坂」なのだという。
;お家の重宝「青江下坂」とその他の両方を取り戻すことができ、大喜びする貢であった……という人物交差もの。
;スクリプト担：↑シナリオ相談時の説明用かと思いつつ、もしかして地の文候補でしょうか？ひとまずコメントアウトのままにしています。後への伏線としては地の文としてある程度表示してもいいのかも？コメントアウトのままでもスッキリと違和感は無いし…など考え中です
;【筆者】地の文の候補でもありました。具体的すぎると本場？の歌舞伎ファンの方に怒られたり突っ込まれるので、
;どうしたものかと悩んだため没になってしまいました(苦）
;=================================================================================_
*seen1
[autosave]
;○開演後のホールでは、奥様方の熱狂的な交流が行われている。 (ホールのシーンは意味がないのでカット～)
;外にでる2人
[背景_四条_歌舞伎座前 time=2000]
;[chara_mod name="bg" storage="bg/bg_kabuki_out.jpg" time=2000]
[layopt layer=13 visible=true]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/bg_kabuki_out.jpg" time=100]
[eval exp="f.haikei_credit='photo　by　明治村画像庫2 早川　http://d.hatena.ne.jp/meiji_photo/'"]
[wait time=10]
;【登場】四条
;[四条ベース着物]
[四条ベース羽織]
[四条微笑み]
[wait time=1]
;四条登場
[freeimage layer=13 time=1000]
[wait time=1000]
[layopt layer=13 visible=true]
;四条登場

[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「堪能いたしました」[p]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】古都に咲く花（プロローグ等）スマホでのフリーズ対策試験的に[p]or[l]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
[四条口開]
[主人公閉目パチ1回]
[whosay name="華織" color="olivedrab"]
「それは、よかった」[p]
[四条憂い]
[whosay name="華織" color="olivedrab"]
「あんな風に両方を取り戻せたらいいよね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様？」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=500]
[四条微笑み]
#
;私が華織様の表情を伺ったときだった――
;○親切な華織さんの表現と伏線
[whosay name="おじさん" color=black]
「キミ！ そこの！」[p]
#
[主人公ポーズ指]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？」[p]
[四条目パチ1回]
[主人公ポーズ片手]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
#
[whosay name="おじさん" color=black]
「今日の『音頭恋寝刃』は終わっちまったかい？[r]
[sp]おじさんはじめてだから困っちまって！」[p]
#
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公驚]
[主人公目パチ1回]
[四条笑顔]
[whosay name="華織" color="olivedrab"]
「もう一周あるみたいですよ」[p]
[主人公ポーズ通常]
[whosay name="華織" color="olivedrab"]
「良ければ、この冊子をどうぞ。演目時間と説明が書かれてます」[p]

[whosay name="おじさん" color=black]
「いいのかい？ 色男で親切なんて！ いなせだねぇ！」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name="おじさん" color=black]
「そいじゃ、おじさんも[ruby text="ランデ"]逢[ruby text="ヴー"]引があるんで！」[p]
;このときの今時な言葉は、ランデヴーっていうらしいです。やっぱりデートは気になる
#
[四条微笑み]
[主人公目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大事なものではないのですか？」[p]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[四条口開]
[whosay name="華織" color="olivedrab"]
「内容は覚えているからいいよ」[p]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[四条笑顔]
[whosay name="華織" color="olivedrab"]
「それよりも、[名前]と長く一緒にいられる時間が大事だよ」[p]
[主人公目パチ1回]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「[名前]、このままデパートに行ってみないかい？」[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

#
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/bg_kabuki_out.jpg" time=100]
;【退場】四条
[四条退場]
[freeimage layer=13 time=100]
[wait time=100]
[layopt layer=13 visible=true]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;=================================================================================_
*seen2
[autosave]
;場面転換 四条と主人公のデート
;【背景】銀座
[背景_四条_銀座 time=1000]
;[bg storage="../fgimage/bg/B4nFWraU42/ginza3.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/B4nFWraU42/ginza3.jpg" time=100]
#
目の前に広がる、都会的な街並みに思わず息を呑む。[p]
;【登場】四条
;[四条ベース着物]
[四条ベース羽織]
[四条微笑み]
;四条登場
[freeimage layer=13 time=1000]
[wait time=1000]
[layopt layer=13 visible=true]
;四条登場
[四条目パチ1回]
[whosay name="華織" color="olivedrab"]
「はじめてで緊張する？」[p]
;[主人公照れ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、少し」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[四条目パチ1回]
#
淑女ひとりで出かけることはないデパート。[r]
行き交う人たちは、周りをはばからず親しげに寄り添っている。[p]
[主人公目パチ1回]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（周りの方達は、"お付き合い"をされてる方達なのでしょうか？ ）[p]
[四条目パチ1回]
[whosay name="華織" color="olivedrab"]
「手を繋いでいるね」 [p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね」[p]
[主人公目パチ1回]
[四条目パチ1回]
[四条口開]
[whosay name="華織" color="olivedrab"]
「僕達も手を繋ごうか？」[p]
[四条目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
（……）[p]
[四条笑顔]
[if exp="f.para_sijyou_koukando >= 50"]
[whosay name="華織" color="olivedrab"]
「[名前]の手は小さいね」[p]
[else]
[whosay name="華織" color="olivedrab"]
「[名前]が、もう少し大人になってからしようか」[p]
[wait time=1000]
[endif]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[四条微笑み]
[wait time=10]
[主人公目閉じ]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
#
;私は、憧れの人と、並んでいることに 緊張してしまって、言葉も、ままならなかった。[p]
私は、憧れの人の傍らで並んでいることに 緊張してしまい、[r]言葉も、ままならなかった。[p]
;憧れですよっと伝わって切り替えが唐突でなれば何でもいいです
;冬のシーンでは普通に並んで歩いているので対照的になるかも？
;【退場】四条
[四条退場]
;=================================================================================_
*seen3
[autosave]
#
;【背景】商店店内
[背景_四条_商店]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/bg_shop_wazakka.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
;【登場】四条
;[四条ベース着物]　外なので羽織？
[四条ベース羽織]
[四条微笑み]
[freeimage layer=13 time=100]
[wait time=100]
[layopt layer=13 visible=true]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「[名前]、前を向いて」[p]
[主人公目パチ1回]
[whosay name="華織" color="olivedrab"]
「[名前]が好きな帯留めはある？」[p]
#
ガラスの向こうに様々な種類の帯留めが並んでいる。[r]
漆塗り、ハイカラなカメオ式、草木をモチーフとしたアールデコ調。[r]
家ではこんなに細かくは選べない。[p]
[主人公ポーズ片手]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「たくさん、ありますね」[p]
;[主人公デフォルト]か[主人公微笑み]
[主人公ポーズ通常]
[主人公ほほえみ]
#
;○主人公の笑顔をみて笑顔になる四条
[四条笑顔]
;[主人公照れ]か何か反応する
[whosay name="華織" color="olivedrab"]
「結納の記念として、[名前]に贈りたいな」[p]
;なだと子供っぽいな
[主人公照れ目普通]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様は、色々とお気遣いされて、余裕があって……）[p]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私も華織様に喜んでほしい）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（いつか華織様のお役に立てるようになりたいです）[p]
[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/bg_shop_wazakka.jpg" time=1000]
;【退場】四条
[四条退場]
[freeimage layer=13 time=100]
[wait time=100]
[layopt layer=13 visible=true]
;////////☆事件の予感 迫り来る悪い奴ら//////
;=================================================================================_
*seen4
[autosave]
;場面転換
#
[背景_主人公邸_玄関]
;[chara_mod name="bg" storage="bg/bg_genkan.jpg" time=1500]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/bg_genkan.jpg" time=100]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公通常]
#
;【登場】四条
;[四条ベース着物]
[四条ベース羽織]
[四条微笑み]
[freeimage layer=13 time=100]
[wait time=100]
[layopt layer=13 visible=true]
;○デートの終わりに事件が起きる
;○妹(弟)が登場する
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今日は楽しく過ごせました。 ありがとうございます」[p]
;【SE】ガサガサッ
[playse storage=shigemi_gasagasa_short.ogg loop=false ]
[whosay name="華織" color="olivedrab"]
「こちらこそ。また会いたいですね」[p]
[if exp="sf.BGM=='ON'"]
[stopbgm]
#
[主人公目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="？？？" color=%mp.color]
「華織！」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]
#
場を切り裂くような少年の声がこだます。[p]
;暖かな？
;強気の驚き
[四条真剣]
[四条口驚き]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[主人公ポーズ片手]
;今見たら驚いてない感じだったのでこちらに
;「？！」[p]
[whosay name="華織" color="olivedrab"]
「……！」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;[四条眉困り]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi1.png" time=0]
[wait time=10]
;[四条口ムッ]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_mu.png" time=0]
[wait time=10]
[whosay name="？？？" color=%mp.color]
「よくもまあ、ぬけぬけと笑っていられるな」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公伏目パチ1回]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;×修正点
[whosay name="？？？" color=%mp.color]
「アンタは人の大事な人を奪ったくせに！」[p]
;「アンタは大事な人を奪ったくせに！」[p]"人の"を除いてもスッキリとわかりやすい文になる気もします。が、大切なセリフなのでさわらずにこのままにします(◆jsYiJcqRkk案

[if exp="sf.BGM=='ON'"]
[fadeoutbgm time=3000]
[endif]
[主人公ポーズ通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[whosay name="？？？" color=%mp.color]
「アンタだけ幸せになろうなんて、ズルい」[p]
;【SE】走り去る(屋外)
[playse storage=run_soto.ogg loop=false ]
[if exp="sf.BGM=='ON'"]
[stopbgm]
;【BGM】哀しげな曲（攻略対象側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukisugara.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukisugara.ogg'"]
[endif]
;希望に満ちているような？
;走って退場
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
#
;謎の
少年は、不穏な言葉を残すと去っていった。[p]
;強気の驚き
[四条真剣]
[四条口驚き]
[四条汗]
[whosay name="華織" color="olivedrab"]
「[華衣]！」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今の方は……」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[主人公目パチ1回]
[四条効果消]
[四条憂い]
[whosay name="華織" color="olivedrab"]
「弟なんだ」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「嫌われてるんだよね」[p]
[主人公目パチ1回]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「嫌な思いさせてごめん」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、」[p]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/bg_genkan.jpg" time=1000]
;【退場】四条
[四条退場]
[freeimage layer=13 time=100]
[wait time=100]
[layopt layer=13 visible=true]
;=================================================================================_
*seen5
[autosave]
#
私は、少し不安な気持ちを抱えつつも
;華織様と別れた。
部屋へと戻ることにした。[p]
[主人公退場]
;長いので好感度で表示するかスルーでいい
*seen_end
@jump storage="sijyou/sijyou_9_4b.ks" target=*start

;¥¥¥¥¥¥¥¥イベント4おわり¥¥¥¥¥¥¥¥
[イベントシーン終了]


@jump storage="test_sijyou.ks"
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
[メッセージウィンドウ上ボタン表示]fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
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
