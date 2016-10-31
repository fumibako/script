*test
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]
;【華道習いイベント】
; 華道一定値で。 ある程度は淑女度必要そうなイメージ　100あたりは必要かも
;子女で少女 乙女子
;士女で淑女
;登場人物
;[whosay name= 華道の先生  color=%mp.color]
;[whosay name=乙女子　その壱 color=%mp.color](丸美屋)
;[whosay name=乙女子　その弐 color=%mp.color]
;[whosay name=湖池屋男爵令嬢 color=%mp.color]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;[whosay name="華織" color="olivedrab"]
;あらすじ
;華道の熟練があがり新しいことを始める主人公。そこで嬉しい人物「華織」と出逢う。
;外に出て家族以外の人物と華織との交流や、花に対する真摯な華織をみて
;主人公は、懐かしい感情と新しい感情を抱く。
;キーワード１　自然な姿のままで　そのままで　個性　いびつ　昔とは違う恋人という関係
;キーワード２　誰かを喜ばせたい　初心に帰って
;主人公　お稽古中の部屋

*start

;〜〜〜〜〜〜〜〜シーン イベントのはじまり〜〜〜〜〜〜〜〜〜
[whosay name=華道の先生 color=%mp.color]
「[名前]さん。 自由花の造形表現も充分に習得なされたようですね」[p]
;堂に入ったようですね？
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとうございます」[p]
;(照れる主人公)謙遜すると失礼になるかな
;これも先生のおかげです。と言いたいが先生の呼び方が…有名な華道漫画でも読んでサラッと調べてみる
[whosay name=華道の先生 color=%mp.color]
「華道とは、心を磨くもの。[r]
[sp][名前]さんが、上達したのも、きっと、どなたかに捧げたい思いがあるので[r]
[sp]しょう」[p]
;盛り上げ役。
;(照れる主人公) セリフはなくていいかな
[whosay name=華道の先生 color=%mp.color]
「[名前]さんは、聡明で、乾いた土が水を吸うように覚えが早く、私が教える[r]こと
[sp]が少なくなってきたように感じます」[p]
;華道の先生なんで詩的かな
[whosay name=華道の先生 color=%mp.color]
「そこで、[名前]さんに新しい学習の場として、私と共に実地演習に出てみま[r]
[sp]せんか？」[p]
;(主人公、やや驚く)
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！」[p]
;(主人公、身構えて尋ねる)
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……どのようなことをなさるのですか？」[p]
;【３】に決定します。ありがとうございます
[whosay name=華道の先生 color=%mp.color]
「難しいことではありません。[r]
[sp]私と共に近所の華道教室で指導役を務めてほしいのです」[p]
[whosay name=華道の先生 color=%mp.color]
「淑女を目指す小さな子女が集まる教室ですので、[名前]さんも親しみやすい[r]
[sp]かと思います。 如何でしょうか？」[p]
;(主人公、了承する)
[whosay name=&sf.girl_namae color="#cf5a7f"]
「わかりました。 お父様に了承を得た上でお手伝いしようかと思います」[p]
;他に良い言い回しは？
;〜〜シーン イベントのはじまりおわり〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜

;暗転

;夜、主人公部屋　考える
;〜〜〜シーン 急降下心情 楽しみの前の降下〜〜〜〜〜〜〜〜〜〜〜〜〜
#
雲をすり抜ける、月影さやけき夜。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(お父様からも了承を得られましたし、はりきって先生にも連絡してしまいまし[r]
[sp]たが……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(当日は著名な先生も来られます と、おっしゃってましたわ。[r]
[sp]そんな方と私がご一緒に教えることなんて出来るのでしょうか？)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(こういう時は……やはり、華織様に相談しようかしら？)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(でも、届くまで時間がかかりますわよね)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(誰かにお願いして、直接渡してもらいましょうか？)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ダメですわ。急な手紙で、驚かせてしまうかもしれないわ)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……華織様にお会いしたい)[p]
;夢みるシーンで
#
私の心に華織様の笑顔が浮かんだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(もし、私が助けてほしいと言ったら……あの方は……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ダメですわ、しっかりしなくては)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(こういう時こそ、華織様の為に淑女として尽力しなければ)[p]

;暗点

;背景　和室　床の間のみ
;〜〜〜〜〜〜〜〜シーン急上昇する心情〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜
[テキスト全画面白文字]
―― 後日。
淑女を目指す[ruby text=おと]乙[ruby text=め]女[ruby text=ご]子達が、母親や家令達に連れられ華道教室にやってきた。[r]
[r]
そんな中、私は先生とともに淑女を目指す乙女達の指導を勤めることとなった。[p]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築]
;横目恥じらい
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ですが……)[p]
;主人公横目 頬染め
[whosay name=華道の先生 color=%mp.color]
「はい、皆さん。今日は、素敵な先生と私の信愛なる教え子を紹介します」[p]
;子供がやがやSE
[whosay name=&sf.girl_namae color="#cf5a7f"]
(どうしましょう！ どうしてこうなったのかしら！？)[p]
;目を閉じて恥ずかしく耐える？
#
私は、自身が大勢の人の前で挨拶をすることよりも、もっと驚くべき事に出逢ってしまった。[p]
[whosay name="華織" color="olivedrab"]
「四条華織と申します。今日は一緒に楽しく学びましょう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「[名字]……[名前]と申します。よろしくお願いします！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どういったことでしょうか……）[p]
#

お会いする約束もしていないのに私は、華織様の隣に並んでいた。[p]
;主人公混乱
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そういえば、先生は、近所の……とおっしゃってましたし、[r]
[sp]そう考えますと、そうなるのも……？？)[p]
;理由を考える主人公。伏線回収
[whosay name="華織" color="olivedrab"]
「[名前]さん、頑張りましょうね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様と一緒に……嬉しいわ……でも、緊張もしてしまいます)[p]
[whosay name=乙女子達 color=%mp.color]
「あら……先生方、見つめ合って、もしかして、お手紙のお相手同士かしら？」[p]
[whosay name=乙女子達 color=%mp.color]
「ふふ、なんてお似合いなのでしょう！」[p]
;褒めておく
[whosay name=華道の先生 color=%mp.color]
「…… 皆さん、静粛に」[p]
;咳払い
;(主人公我に返る)
[whosay name=華道の先生 color=%mp.color]
「皆様、華道とは心を磨くものです。[r]
[sp]花の前でこそ、淑女として謹厳(きんげん)な態度でのぞみましょう」[p]
[whosay name=華道の先生 color=%mp.color]
「さて、今日は華道を始めるにあたって……」[p]
;背景　和室　床の間のみ　つづき
;〜〜シーン 先生の退場と主人公とキャラの立ち位置説明〜〜〜〜〜〜
;女中？
[whosay name=教室のお手伝い color=%mp.color]
「先生！ 大変です！！」[p]
;姉さん事件です お約束です
[whosay name=華道の先生 color=%mp.color]
「なんですか、今はお稽古の時間ですよ」[p]
[whosay name=教室のお手伝い color=%mp.color]
「それが、その丸美屋の男爵様から……」[p]
;ごにょごにょ
;適当な地の文追加
[whosay name=華道の先生 color=%mp.color]
「……なんですって？ 丸美屋男爵様が？」[p]
;先生用事ができて出ていく。我儘な男爵(の子女)に呼ばれ
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうしたのかしら……？）[p]
[whosay name=教室のお手伝い color=%mp.color]
「申し訳ございません。[r]
[sp]今日の丸美屋お嬢様のお稽古の担当は別の方でとお願いしたのですが……」[p]
[whosay name=華道の先生 color=%mp.color]
「わかりました。[r]
[sp]やはり、あの家の方々は、予定を聞き受けてくれないのですね……」[p]
;今日は一緒に来ていただける方を頼んでおいてよかったわ」[p]
;なくてもいい？
[whosay name="華織" color="olivedrab"]
「どうかされましたか？」[p]
[whosay name=華道の先生 color=%mp.color]
「四条様、申し訳ございません。私、急な呼び出しで、出ないといけなくなりまして」[p]
[whosay name="華織" color="olivedrab"]
「お気になさらないで下さい。[r]
;【１】そのような事は、よくある事です」
;【２】急な呼び出しがあるなど、僕も存じております。
;【３】
そのような事がよくあるなど、僕も存じております」[p]
;【４】その他
;華織も苦労してるよっていうさり気ないシーン
;敬語難

;状況説明
[whosay name=華道の先生 color=%mp.color]
「私がお呼び立てしたのに、よろしいのでしょうか」[p]
[whosay name="華織" color="olivedrab"]
「祖母には劣りますが、ご不在の間、誠心誠意、役目を務めてみせましょう」[p]
;言い回し硬いな
[whosay name="華織" color="olivedrab"]
「それに、有能な[名字]様もいらっしゃいますから大丈夫ですよ」[p]
;主人公にウィンク的なものを投げている？
;(主人公照れ)
[whosay name=華道の先生 color=%mp.color]
「四条様、優しいお言葉痛み入ります。[r]
[sp]……では、お言葉に甘えさせていただきます」[p]
;さすがに察した先生は、注意しておくか
;細かい理由は知らない先生
[whosay name=華道の先生 color=%mp.color]
「名前さん。今日は四条様とご一緒にできる淑女として、[r]
[sp]いくつかの士女を提案したところ、ご家族揃って貴方をご指名されました」[p]
;主人公への特別感 お約束

;(主人公驚 表情のみ)
[whosay name=華道の先生 color=%mp.color]
「ですので、私が不在の間、きっちり指導役をなさって下さいね」[p]
;嫌な先生かもかも
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(どうしましょう。　緊張してきたわ……)[p]
;緊張する主人公
;フォローする華織
[whosay name="華織" color="olivedrab"]
「[名前]さん……ごめんね、緊張させたくて、指名したわけではないんだ」[p]
;お願いしたわけではないんだ
[whosay name="華織" color="olivedrab"]
「ただ……」[p]
;(なんだろう？と思う主人公)
;なんとかCDを研究した結果がコレです
[whosay name="華織" color="olivedrab"]
「結納前に名前さん以外の女性(ヒト)と一緒に何かをするなんて、不誠実な気がして……」[p]
;[暗転]
#
[chara_mod name="bg" storage="toumei.gif"]
;///////////////////////////////////////////////////////
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
;背景変更:和紙風 桜色
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[link target=*正規ルート]華織様の言葉に嬉しくなってしまった。[endlink][r][r][r][r]
[link target*嬉しい]華織様の言葉に慌ててしまった。[endlink][s]
;///////////////////////////////////////////////////////

*正規ルート
[cm]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
#
私は華織様の言葉に慌ててしまった。[p]
;主人公驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そんなことないです！ 気になさらないで下さい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私、華織様のお仕事のお邪魔にはなりたくないですわ……ですけど……)[p]
#
ーーいくつかの士女を提案したところ……[p]
#
先生の言葉が脳裏を掠めた[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ですけど……私が断った場合を考えてしまうと……)[p]
;主人公ふぅ閉
#
ほぼ手紙でしか会えない分、華織様の隣で笑っている同い年の淑女を想像した途端、胸に嫌な気持ちが過ぎてしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(人を好きになるって、自身の気持ちさえも、思い通りにいかなくて大変……)[p]
;ちょっと前半聞いてなかった主人公↓
[whosay name="華織" color="olivedrab"]
「……せっかくの機会だったから、名前さんと一緒に生け花をしてみたかったのです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「え……？」[p]
;照れ困り微笑み
[whosay name="華織" color="olivedrab"]
「いえ。『今日だけの特別』と言っただけです」[p]
;華織、ちゃんと仕事やってくれるわけ？のお言葉対策
@jump target=共通1

*嬉しい
[cm]
;[暗転]
[chara_mod name="bg" storage="toumei.gif"]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
#
私は、華織様の言葉に嬉しくなってしまった。[p]
[whosay name="華織" color="olivedrab"]
「さすがに考えすぎですよね。
けど、せっかくの機会だったから、名前さんと一緒に生け花をしてみたかったのです」[p]
;(喜び照れる主人公)
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様……)[p]
;どちらの気持ちにも対応？
;〜〜シーン 先生の退場と主人公の立ち位置説明おわり〜〜〜

*共通1
;〜〜シーン キャラと造作1 (軽度)後に繋ぐもの(テンション↓)〜〜〜
#
気持ちも落ち着いた華ところで、私は、織様と共に初級者向けの授業を始めた。[p]
[whosay name="華織" color="olivedrab"]
「いけばな とは『師の背中を見て学ぶ』と言われてきました」[p]
[whosay name="華織" color="olivedrab"]
「先生のいける花から、形、とり合わせなどを学ぶことは大切です」[p]
[whosay name="華織" color="olivedrab"]
「しかしながら、貴方が選んだ花をどんな風に、自身の個性を活かすにはどの様に いけたいのか心の中で、目標を持つことも大事です」[p]
[whosay name="華織" color="olivedrab"]
「たくさんの花の中から何故、その花を選び、
その花をどんな場所にいけたいでしょうか？」[p]
;セリフは適当 好きな言葉で↓思いつかない　勉強になるなんて華道のステ的にはないはず
[whosay name=&sf.girl_namae color="#cf5a7f"]
( 華織様、本当に先生みたいだわ)[p]
[whosay name="華織" color="olivedrab"]
「その花に感じた、どの様な感動を生けたいのでしょうか？ ……心の中で描く花を見極めて下さい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(心の中で描く花……)[p]
[whosay name="華織" color="olivedrab"]
「その為にも、ご自身の想いを表現できるよう、今日はしっかりと基礎を学びましょう」[p]
;〜〜シーン キャラの造作1 軽度〜〜〜

;[暗転]
[chara_mod name="bg" storage="toumei.gif"]

;〜〜シーン キャラの造作2 中度〜〜〜
[whosay name=子女 その壱 color=%mp.color]
「ダメですわ！ この枝では、うまくできないですわ！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「諦めずに繰り返し、生けることが大事ですわ」[p]
;華織 にこ
[whosay name=子女 その壱 color=%mp.color]
「そう言われましても、頂いた図案よりも、枝自体の流れが少し違うのですもの……
撓(た)めても、ここの部分なんて少し曲がってますわ」[p]
;撓 ためる 草木の性質を見極めて曲げること…ため には種類がある
;押し撓 ため　切り撓め　ねじり撓め　など　枝
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね、ひとつひとつ違った個性の花々は教本通りの姿にはなってませんね」[p]
[whosay name=子女 その壱 color=%mp.color]
「なら、どうしたらいいのでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私も、 お花のせいにして面白くないって逃げたくなってしまったこと がありました……」[p]
; 昔、思い通りにならなくて投げ出したくなってしまう事がありました……」[p]
;【～～せいにして投げ出す　逃げる】華織、華道展への意気込みフラグへ
[whosay name="華織" color="olivedrab"]
(……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ですが、粘り強く、花への愛情や興味を持って眺めて下さい……[r]
[sp]四条様が仰ったように自身の心の中で見極めるのです」[p]
;華織
[whosay name=乙女子 その壱 color=%mp.color]
「粘り強く、花への愛情や興味を……？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。根気が大切なのです」[p]
[whosay name=乙女子 その壱 color=%mp.color]
「うぅ〜ん……見えてきそうな気がしますが……これでは……」[p]
;同じ流れなので変える
[whosay name=&sf.girl_namae color="#cf5a7f"]
(もっと、他に華道の楽しみを伝えれるようなお言葉があれば……)[p]
[whosay name="華織" color="olivedrab"]
「丸美屋様。『上手くなりましたね』と褒められたときを想像なさって下さい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様！)[p]
[whosay name=乙女子 その壱 color=%mp.color]
「褒められたとき……」[p]
;子女、想像する
[whosay name="華織" color="olivedrab"]
「ふふ。今、 丸美屋 様は、どなたに褒められましたか？」[p]
[whosay name=乙女子 その壱 color=%mp.color]
「お父様……でしょうか？」[p]
;子女、もじもじ
;他に言い回し
[whosay name="華織" color="olivedrab"]
「 丸美屋 様。帰って生けたら、お父様がお喜びになられるのでしょうね」[p]
[whosay name=乙女子 その壱 color=%mp.color]
「ありがとうございます。[r]
[sp]私、出来そうな気がしてきましたわ」[p]
[whosay name="華織" color="olivedrab"]
「もし、どうしても気になるようでしたら、こちらの枝は、この向きで挿してみてはいかがでしょうか？」[p]
[whosay name=乙女子 その壱 color=%mp.color]
「そうですわね……それなら思った通りになりそうですわ！」[p]
;ほっ 目閉じ ため息 または 喜び
[whosay name=&sf.girl_namae color="#cf5a7f"]
(よかった……)[p]
;主人公微笑み 指 か 主人公横目 口微笑み 指
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そういえば、私も昔は、お兄様や華織様に褒められて嬉しかったですわね)[p]

[whosay name="華織" color="olivedrab"]
「……すみません、[名前]さん、急に出てあんな事を言ってしまって……」[p]
;一応、謝っておこうか
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ！  私も、励ましのお言葉に困っていたので助かりましたわ」[p]
;会話によって華織の行動が明確に
;ここからＢ会話に持っていきたいだけの間
[whosay name="華織" color="olivedrab"]
「僕は、[名前]さんのおかげで励まされましたよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？ そうでしょうか」[p]
;Ｂ会話
[whosay name="華織" color="olivedrab"]
「[名前]さんのおかげ、僕も改めて昔の想いを思い出しました。[r]
 何かのせいにしていては弱いままですよね」[p]
;華道展のフラグ回収
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様？」[p]
[whosay name="華織" color="olivedrab"]
「いえ！何でもないです！……あの子達を見ていたら、昔の[名前]さんを思い出して、
いてもたってもいられなくなったと言いますか……懐かしいですよね！」[p]
;C会話へ
[whosay name=&sf.girl_namae color="#cf5a7f"]
(昔の私……)[p]

;背景　主人公部屋セピア
;回想 困ったら回想シーン C会話
;初めて作った生け花を兄と四条に見せたこと

[whosay name=幼い頃の私 color=%mp.color]
「華織お兄さま！ せっかくの華道のはじめてが、こんな葉っぱでは面白くないですわ」[p]
[whosay name="華織" color="olivedrab"]
「[名前ちゃん、このハランの葉をよく見てごらん。[r][sp]なびきや形が美しいと思わないかい？」[p]
; ハランとは、スズラン亜科ハラン属の常緑多年草で、巨大な葉を地表に立てる植物である。
[whosay name="華織" color="olivedrab"]
「青々して、今を精一杯生きようとして、彼なりの個性もあるよ」[p]
[whosay name=幼い頃の私 color=%mp.color]
「個性？  ふふ、華織お兄様、面白いこと言うのね！」[p]
;小さい頃の主人公の性格が、あまりわからない
[whosay name="華織" color="olivedrab"]
「そ、そうかな？  」
;(文矢にも、よく言われるけれど……[名前]ちゃんにも言われしまうとは)なくてもいいか
[whosay name=幼い頃の私 color=%mp.color]
「でも、華織お兄様に言われてみたら、
この葉っぱも可愛くみえてきたわ！
それに緑の移り変わりが綺麗！」[p]
[whosay name="華織" color="olivedrab"]
「ありがとう。  うまく出来たら、文矢に見せに行こうね」[p]

;思い出し→恥ずかしい 反省
[whosay name=&sf.girl_namae color="#cf5a7f"]
(あの頃は……)[p]
;(華織様に対して、少しばかり、無邪気でしたわ)[p]

;〜〜シーン キャラの造作2 中度〜〜〜
;シーン急上昇まで流れ。楽しい時間を得る
;主人公、考え中に完成 それに気づくイメージ
;完成に喜ぶ児童達。
[whosay name=乙女子 その弐 color=%mp.color]
「できましたわ！」[p]
[主人公驚]
[whosay name=乙女子 その壱 color=%mp.color]
「……私も出来ましたわ！」[p]
#
少女達は、完成した作品を見合って喜び合う。[p]
[whosay name="華織" color="olivedrab"]
「皆様、よく頑張りました。帰ったら家の人にも見せてあげて下さいね」[p]
;ウチの人？ 言い回しがわからない
;ワイワイSE
#
小さな少女達を笑顔で見守る華織様。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(お付き合いして華織様と呼ぶようになりましたが……)[p]
#
それは、まるであの日みた"華織お兄様"が現れたかのようであった。[p]
;顕現 現出 内在・・・
;今さっき、変ったこともあるけど、志的には根は変ってないってこと
； 四条は考え事をしている主人公に気づく。
[whosay name="華織" color="olivedrab"]
「[名前]さん？ どうかされましたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様が……」[p]
#
私は、そこで口を噤(つぐ)んだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様のことを、いまさら昔の華織お兄様のようなんて言ったら、なんて思われるのでしょう……)[p]
#
想い人を 今更、"華織お兄様"と呼ぶには、些か躊躇う年頃と立ち位置になってしまっていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「その、私も昔のことを思い出したのです」[p]
;その代わりに別の気持ちを打ち明ける
;主人公の話をきく四条。

[whosay name="華織" color="olivedrab"]
「そうなんですね。 懐かしいですよね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(嘘ではないわ)[p]
;お互いにいろいろ考えている
;四条は主人公に 生け花をしようと誘う。
[whosay name="華織" color="olivedrab"]
「そうだ。[名前]さん」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？ 」[p]
[whosay name="華織" color="olivedrab"]
「教室が終わりましたら、また一緒にいけてみませんか？」[p]
;終わったら一緒にいけることを約束する
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい！」[p]

;背景　和室広め　赤っぽく
;〜〜〜 〜〜〜 シーン急上昇(期待値高め)〜〜〜 〜〜〜
;～～～～シーン片付ける～～～～～
;楽しく片付ける2人 主人公が絶好調になる
生徒たちが笑顔で帰ったあと、私たちは、教室の後片付けを始めた。[p]
; 生徒たちが笑顔で帰ったあと、私たちは、約束の前に教室の後片付けを始めた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「結構、さばいた後のお花がでましたね」[p]
;さばく。花・葉・枝がつきすぎていて見た目がすっきりしない場合に、全体を見ながら適当に省略し、いけたい草木を強調し、美しい姿にします。
;さばくの説明↓に適当な情景を加える
#
花の姿を整える際に鋏で切り落とされた花を集めてみると、手一杯になりそうな量であった。[p]
;貧乏くさいと思う人もいそうなので回避
[whosay name="華織" color="olivedrab"]
「そうですね。　片付けが終わりましたら、この花達に新しい居場所を作りましょうか」[p]
;さばいた花は他のところに場所をあたえて生かしてみましょう　教本より

[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

;[暗転] 暗転かつづくでもいい

#

茜色をさす教室の中、華織様のうつろいゆく影を目で追う。[r]
;言いたいだけや
花を丁寧に扱う、その様は、憧れの人の印象のままであった。[p]
; 花を丁寧に扱う、その様は、憧れの人の印象、そのままであった。[p]
; 華織 を見つめる主人公
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様は、花のどういったところが、お好きなのでしょうか？）[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん、大変だったらそっちも手伝おうか？[r]
僕は片付けも終わりましたから」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！　い、いえ、こちらも、終わりそうですから大丈夫ですわ」[p]
;ようやくいけることに
[whosay name="華織" color="olivedrab"]
「そうですか。
[四条微笑み]
では、こちらの花と僕が見本で持ってきた牡丹籠で、いけてみましょうか」[p]

;華織に質問される主人公
[whosay name="華織" color="olivedrab"]
「[名前]さんは、どんな人のために花をいけていますか?」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それは……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様の為になんて……言えないわ）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様は、誰かの為にいけているのですか？」[p]
#
私は、少し期待しながらも、華織様に尋ねた。[p]
[whosay name="華織" color="olivedrab"]
「そうですね。 やはり僕は、見に来て頂いた皆さんに喜んでもらうようにいけてます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのですね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(さすが華織様だわ。 少し期待してしまった私が恥ずかしい)[p]
#
;私は、四条家の由緒ある伝統を背負った華織様のお言葉に私は、身を縮こませてしまった。[p]
[whosay name="華織" color="olivedrab"]
「でも、なかなか皆さんを喜ばすことは難しいですね……[r]
[sp]感動を与えるというものは、心に余裕をもって伝えなければ、見に来る人には、
簡単に見透かされしまいます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様……)[p]
[whosay name="華織" color="olivedrab"]
「でも、さっきの[名前]さんの言葉で、決意も改めることもできましたし、[r]
[sp]もう一度、頑張ってみようと思います」[p]
;[名前]さんのおかげ、僕も改めて昔の想いを思い出しました。 何かのせいにしていては弱いままですよね
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？　そうですか？」[p]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;(私、なにか言いましたかしら？）なくていいかも
[whosay name="華織" color="olivedrab"]
「きちんと 、自分の目標が達成されたら、[r]
[sp]一人前の華道家として[名前]さんの為に花をいけますね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私のためにいけてほしい。 なんて考えてしまいますが）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様の花に対する思いは、[r]
[sp]並大抵のものではない想いを持tていらっしゃるのですね)[p]
;キャラ説明

；なかなか磯野とお父様の会話をしてくれない二人
;@jump storage=sijyou/sijyou_2_1b.ks
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
