*start
;テスト用イベントシーン構築
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;テスト用イベントシーン構築ここまで
*first
;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
;散策の話
[四条ベース羽織]
[四条憂い]
[whosay name="華織" color="olivedrab"]
「華衣は4人きょうだいの末っ子でね。[r]
[sp]乳母日傘で育てられてじゃじゃ馬に育ってしまったんだ」[p]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「とはいっても、いいところも多いんだよ。[r]
[sp]僕は彼が困ったら、何か力になれないかとそう思って一緒に暮らしてきたんだ」[p]
;感情 後悔、過去を振り返る
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「華衣の方はそう感じていなかったみたいだけれどね……」[p]
[四条退場]
#
;///////////////////徐々に回想シーンへ/////////////////////
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;背景暗転
;男モノローグメッセージウィンドウ 
;セリフのみでは華衣の善を納得できない方の為にト書き説明

;背景四条家
[イベントシーン構築枠茶色]
#
[ruby text=""]四条家は、長男 [ruby text="いち"]一[ruby text="か"]華 、次男の[ruby text="か"]華[ruby text="おり"]織、
三男の[華衣]、四女 [ruby text="み"]美[ruby text="か"]華の四兄弟。[p]
;名前を出す必要は・・・ディティール？
財政に優れた一華、華道の才を見出された華織。[ruby text="まっ"]末[ruby text="てい"]弟、[華衣]は、[r]
比べてしまえばであるが、特に抜きん出た才能も開花しなかった。[p]
[chara_mod name="bg" storage="bg/ B4nFWraU42/bg_sijyou_genkan_hole.jpg" time=3000 wait=false]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;背景 四条家玄関ホール(表示タイミングは変更する waitしないでゆっくりとtime？)
;セリフにすると回想シーンの切り替えにならない為、ト書きへ
[whosay name="華織" color="olivedrab"]
――　四条家の責務や才を発揮しない華衣の将来を憂いた祖父は、[r]
早いところ落ち着いてほしいと考え、若干早めの見合い話を持ってきた。[p]
;華族は国に貢献すること。富や国交以外では、文化などで貢献する
;背景 四条家玄関ホール
;回想シーン 効果セピア
[whosay name="四条祖父" color="#888898"]
「ふん……急遽、見合い話を収集したせいで、良縁と呼べないが、過去それなりの高位を得た家柄の子女だな」[p]
[whosay name="四条 華衣" color=%mp.color]
「この中から、選べっていうの？」[p]
[whosay name="華織" color="olivedrab"]
「こら、そんなこと言わない。[r]
[sp]華衣のことを想ってくれる人がいるのだから」[p]
[whosay name="四条 華衣" color=%mp.color]
「ふーん……」[p]
;なくても？↓
[whosay name="華織" color="olivedrab"]
(僕も時が来たら、[名前]ちゃんに手紙を出せるようになればいいな……[r]
[sp]ふぅ、今更、選ばれる見込みはなさそうですが……)[p]
[whosay name="四条祖父" color="#888898"]
「さっそく華衣、手紙を書きなさい 」[p]
[whosay name="四条 華衣" color=%mp.color]
「面白そうだし、やってみるよ」[p]
;まだ、お節介のときの華織
[whosay name="華織" color="olivedrab"]
「華衣、心を込めて書くんだよ」[p]
;シーン徐々に現時間へ
;背景 ネリネの花やイメージ画像
[whosay name="華織" color="olivedrab"]
――そして、その中から華衣が気に入ったのが、遠縁の公家の子女、それが華衣の婚約者となった。[p]
[whosay name="華織" color="olivedrab"]
「彼女は、病弱だったけれど、その分、とても落ち着いていて、華衣の悪いところも良いところも受け止めていた」[p]
;相思相愛のイメージ画像が(あれば…)
[whosay name="華織" color="olivedrab"]
「華衣も彼女の深い優しさに引かれ、すっかり相思相愛の仲になっていたよ」[p]
#
;////////////////////////シーン完全に現時間に戻る////////////////////
;メッセージ通常
[イベントシーン構築]
;背景 料亭 主人公表示
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;[料亭]
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
[四条ベース羽織]
[四条憂い]
;感情 悲しい悔やむ
[whosay name="華織" color="olivedrab"]
「華衣は、彼女と出会ってからは、少し落ち着いてきた……けれど……」[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
#
華織様は、そこまで話すと俯いたまま黙ってしまった。[p]
[主人公憂い]
;プレイヤー感情 どうしたの？
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様？ 」[p]
;後から語られるシーンの為に伏せておく
[whosay name="華織" color="olivedrab"]
「ごめん。今は詳しくは話せないけれど、
[四条憂い]
僕のせいで、彼女と華衣は別れてしまったんだ」[p]
;プレイヤー感情 驚く 華織に疑いをもつ　主人公：急なことに表情等が固まる　
;[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓口： [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！ 」[p]
;華織、躊躇うが話す
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「……ふたりは、二度と会うこともできない」[p]
[主人公憂い]
;プレイヤーのことを語る 華織の正義側
[whosay name="華織" color="olivedrab"]
「華衣は、そのことで、ずっと僕を恨んでいる。[r]
[sp]君からの手紙を捨ててしまうほどに……」[p]
;プレイヤー、華織に対して疑いはもつが、読むことによって多少の消化
;主人公　話を聞くのが辛いが耐えている
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[四条憂い]
[whosay name="華織" color="olivedrab"]
「本当は華衣の事を思うなら、大人らしく、ずっと会いたかった[r]
[sp]君との見合いも断るべきだった」[p]
[whosay name="華織" color="olivedrab"]
「でも、[名前]、君と再会して、逢瀬を重ねて分かってしまったんだ」[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「勝手だと言われても、[名前]と離れることは嫌なんだ」[p]
;プレイヤーの気持ちなのでセリフは曖昧に
;胸に手を当てるポーズのイメージ
;[主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様……)[p]
;話の繋がりを説明
#
あの雪の日に華織様と離れ、手紙が来なくなった時を思い出した。[p]
――[華衣]様の心情に比べたら、小さなこと。[r]
それでも、離れること、失うことはとても辛かった。[p]
;(プレイヤー同様に)反芻する華織
[whosay name="華織" color="olivedrab"]
「今だからこそ、わかる」[p]
;目的を語る
[whosay name="華織" color="olivedrab"]
「だからこそ、出て行った華衣に対して……僕は懺悔をしないといけないし、[r]
[sp]向き合って話をしたいんだ」[p]
;目的について尋ねる 遠慮がちに
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……[華衣]様は[r]
[sp]まだ帰って来られてないのですね」[p]
;答える1 悩みながら答える
[四条憂い]
[whosay name="華織" color="olivedrab"]
「ここずっと、家族総出で華衣の捜索にあたってるけれど見つからない……」[p]
;プレイヤー感情 残念 希望がみえない
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのですか……」[p]
;問題と解決策を、より一層明確に
;話セリフにすると烏滸がましさが出たので内面で。
;主人公、案を考える
[whosay name=&sf.girl_namae color="#cf5a7f"]
(こういった時は、[華衣]様のお心が落ち着ける場所が分かれば、見つかる気がしますが)[p]
;華織をせつく、ストーリーの進行
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様は、[華衣]様が行かれるような場所にお心あたりはありませんか？ 」[p]
#
華織様はゆっくりと首を横に振って返事をした。[p]
[whosay name="華織" color="olivedrab"]
「いいや。一人にさせたことは、[華衣]の婚約者の件でしかなかったから」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしたか……」[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
#
;華織、頭をかかえ、目を瞑る　苦悶の表情
[whosay name="華織" color="olivedrab"]
「もし見つけても僕の言葉を受け入れてくれるか……」[p]
[四条目伏]
[whosay name="華織" color="olivedrab"]
「ごめん、年下の君にこんなことを話して……[r]
[四条口微笑み]
[sp]やっぱり、こんな事は、自分で解決しないといけないね……」[p]
;華織、出て行こうとする。膝立てるくらい
;主人公、華織を引き止める。歳は関係ないと言う。お互いに歳の差や立ち位置を気にしていた事を知る
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様。[r]
;[四条通常]
[sp]もう、その様なことで気にならさいでください。……一緒に考えましょう」[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
;何を気にしているか説明
[whosay name="華織" color="olivedrab"]
;「そうだね。歳の差や立ち位置を気にするのはやめるよ」[p]
「そうだね。お互いに歳の差や立ち位置を気にするのはやめるようか」[p]
;主人公、お見合い時とデート時の決意をしんみりと、明確に実行する
;後の手紙が来なかった件についての心情伏線
[whosay name=&sf.girl_namae color="#cf5a7f"]
(何か[華衣]様のお心に届く方法があればいいのですが……手紙など[r]
[sp]ないのでしょうか？)[p]
;目的2を明確にする
@jump storage="sijyou_11_1.ks" target=*common
共通へ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「[華衣]さまのご婚約さまは、何か残していらっしゃらないでしょうか？」[p]
