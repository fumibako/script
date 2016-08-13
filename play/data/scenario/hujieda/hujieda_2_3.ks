;=============================================
;イベント１４回目【藤枝の留学辞退】2月3週、
;=============================================
[背景音楽学校ピアノ練習室]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

;背景音楽練習室

;【立ち絵】藤枝：ため息
「この短期間でこの難曲を弾きこなすのは難しいな。[r]
[sp]あと数日後だというのに……」[p]

;【立ち絵】藤枝：落ち込み
（課題曲はパガニーニ超絶技巧練習曲集[r]
[sp]第三番「ラ・カンパネッラ」、学校の練習室を[r]
[sp]早朝に数時間借りて練習し譜面通り弾ける様になったけど[r]
[sp]……自分の思う音色にはほど遠い）[p]


;【SE】紙の音（カサッ）

[手紙主人公]
藤枝 肇 様へ[l][r]
[r]
[sp]拝啓　春の浅けきみぎり藤枝様においては[r]
お忙しく毎日をお過ごしのことと拝察いたしております。[r]
[sp]私は日々藤枝様の事を案じております。[r]
[r]
[sp]ときに私は友人より藤枝様の留学について３人枠が１人枠となり[r]
２月の演奏会によりその留学者が決まると知らせて頂きました。[r]
[r]
[sp]毎日練習時間が取れない中藤枝様は[r]
プレッシャーや色々なものとたたかい練習を頑張っていられるのでしょう。[r]
[r]
[sp]私は以前お手紙でいつか私も藤枝様に何かを返せるといいと書きました[r]
今がそのときかも知れません。[r]
[r]
[sp]私も藤枝様の背中を押します。[r]
[r]
[sp]覚えておられるでしょうか？[r]
私がお琴の練習でくじけそうになったとき、藤枝様は、[r]
[r]
[sp]焦らずとも貴方様は無意識で丁寧にお琴を[r]
慈しみ優しく弾けていました。[r]
[sp]必ず上達できる方だと思います。[r]
[sp]初心を忘れずゆっくり上達していきましょう。[r]
と書いてくださいました。[r]
[r]
[sp]私もその言葉をお返ししましょう[r]
藤枝様は音楽とピアノを慈しんでおられます。[r]
今の藤枝様に時間はありませんがきっと
素晴らしいピアノの演奏をされるでしょう。[r]
[r]
[sp]私がもう藤枝様に会うことも藤枝様のピアノを聴くこともなくても[r]
ずっと私は藤枝様の事を応援し続けます。[r]
[r]
[sp]私は今はただ藤枝様の夢が叶うことを願っているのです。[r]
[sp]だだ心から貴方をお慕いし、綺麗な感情だけが残っています。[r]
[sp]この感情をきっと愛と呼ぶのでしょうか。[r]
[r]
[sp]心から貴方の今後が幸多い事をお祈りしています。[r]
[sp]藤枝様、どうかお元気で。[r]
[r]
[r]敬具
[sp][sp][sp][sp][sp][sp][sp][sp][sp][sp][sp][名字]　[名前] [p]
[手紙読了]
[resetfont]
;【SE】紙に触れる（パラリ）

#
この手紙を読み返し励まされながら[r]
わずか一か月のわずかな練習時間でこの難曲を[r]
諦めずに取り組みここまで弾けるようになった。[p]

;【立ち絵】藤枝：目閉じ
（僕も最後まで自分の演奏を諦めない……）[p]


#数日後
[背景_庭]
[主人公ポーズ通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
「今日は時子さんが来られるの、[r]
[sp]一緒に外出していいかしら？」[p]

[whosay name=磯野 color="dimgray"]
「まあ息が詰まるのも分りますが、[r]
[sp]女中を一人控えさせていただきます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ため息
[主人公憂い]
「もう藤枝様と[r]
お別れの挨拶をしてから３か月も経ちました[r]
[sp]もう時子さんとも約束しているのです」[p]

[whosay name=磯野 color="dimgray"]
「どこに行かれるのですか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公通常]
「さあ、時子さんのお兄様が[r]
[sp]とある舞台に連れて行って下さるとか」[r]
[sp]（きっと気晴らしになる場所なのだわ）[p]

[whosay name=磯野 color="dimgray"]
「最近お稽古も熱心に取り組んで[r]
[sp]おられますし仕方ないですね」[p]

#
磯野に藤枝様の話はあれからしていない[r]
話をするだけで磯野は悲しそうな顔をするから[p]

#女中
「三宮家の時子様がいらっしゃいました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
「出かけて参ります」[p]

[whosay name=磯野 color="dimgray"]
「わかりました。お嬢様、お気をつけて」[p]

;背景玄関
[whosay name="三宮　時子" color="#c25232"]
「さ、[名前]さんお車にお乗りになって！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公照れ目普通]
「ええ、お邪魔しますわ。[r]
[sp]ところでどこに行くのですか？」[p]

[whosay name="三宮　時子" color="#c25232"]
「それは秘密ですわ」[p]

[背景レトロな建物]
#
大きな建物の前に車が止まり[r]
私達は車を降りた[r]
丁度ホールに人が集まる所のようだった[p]

[whosay name="三宮　時子" color="#c25232"]
「藤枝様達の演奏会は一般公開されると聞いて[r]
[sp]お父様のコネを使いました[r]
[sp]私達も入れる様に口をきいてもらっています」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
「！」[p]

[whosay name="三宮　時子" color="#c25232"]
「さあ行きましょう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公笑顔]
「ありがとうございます。時子さん」[p]

[whosay name="三宮　時子" color="#c25232"]
「演奏者は３人、候補を外れた女性の方も演奏されて[r]
[sp]３人は課題の「ラ・カンパネッラ」[r]
[sp]それから自自由曲の２曲を弾くのですって[r]
[sp]藤枝さまの演奏は最後だそうよ」[p]

#
２人の演奏が終わり[r]
舞台の裾から藤枝様が姿を現し、[r]
その姿を見ただけで私は泣きそうになった。[r]
彼は客席に一礼しながら私と視線が合い驚いた顔になる[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公照れ目普通]
（一目会えただけでこんなにも嬉しい）[p]

;【立ち絵】藤枝：微笑み
（……見守って下さるのですね）[p]

#
私たちは視線で会話するように見つめあい、[r]
私はうなずき藤枝様はピアノの椅子に座る。[p]

;【立ち絵】藤枝：目閉じ
（貴方が来てくれた、[r]
それなら僕は何も恐れることはない）[p]

#
藤枝様の音はミルクホールでも聞いたけれど[r]
今日は一段と凄い、遠く哀愁のメロデイが響き渡り[r]
その力強い迫力とその繊細に紡ぎだす透明な音に[r]
胸が打たれる、こんなにも心に響く音を聴くのは初めてだわ[p]

#
藤枝様の音色にこれほどの力強さは[r]
ミルクホールではなかった[r]
留学への決意の強さなのかしら[r]
曲が終わっても余韻がすごい[p]

#
まだ一曲目の課題曲だというのに[r]
皆は立ち上がり[r]
盛大な拍手が沸き上り藤枝様は一礼する[p]

;【立ち絵】藤枝：通常
「演奏を聴いて下さりありがとうございました。[r]
[sp]この場にいられることも僕は誇りに思います[r]
[sp]ですが僕は独逸留学を辞退します」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
（え！）

#
ざわざわと周囲が話し始める。[p]

#音楽留学関係者
「静粛に！藤枝君それはどうしてかね？　」[p]

;【立ち絵】藤枝：真剣
「僕は今大切にしたい人がいます」[p]

;【立ち絵】藤枝：目閉じ
「留学は次の機会にします[r]
[sp]僕は今留学したら逆に叶わなくなる事があると[r]
[sp]気付きました。だから今、留学できません」[p]

#原
「まて！　藤枝お前は全てを棒に振る気か？　」[p]

;【立ち絵】藤枝：目伏せ
「原……僕はね、ずっと色々なものを諦めてきた。[r]
[sp]家の為だとか周囲に押し流されてきた[r]
[sp]努力はしてもいつも諦めてきたんだ」[p]

;【立ち絵】藤枝：真剣
「でも今、音楽も彼女も諦めつつもりもなくなった[r]
[sp]僕はもう自分の気持ちを殺そうとは思わない[r]
[sp]もう一度音楽学校に戻って一からやり直し[r]
[sp]留学の機会も自分で切り開くつもりだ」[p]

#音楽留学関係者
「君はそれで後悔しないのかね？　」[p]

;【立ち絵】藤枝：微笑み
「はい！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
（藤枝様！）[p]

#音楽留学関係者
「惜しいがそれでは何も言うまい、[r]
[sp]折角の機会なので最後に[r]
[sp]自由曲も弾いていくといい」[p]

;【立ち絵】藤枝：微笑み
「ありがとうございます。[r]
[sp]僕の自由曲はショパンの別れの曲でしたが、[r]
[sp]別の曲に変えていいですか？」[p]

#音楽留学関係者
「構わない。どの曲かね？」[p]

;【立ち絵】藤枝：通常
「リストの愛の夢三番おお、愛しうる限り愛せを」[p]

#原
「お前甘い曲は苦手じゃなかったか？　」[p]

;【立ち絵】藤枝：微笑み
「そうだったけど今、すごく弾きたいから」[p]

#音楽留学関係者
「弾くといい、皆持ち場に戻りなさい」[p]

#
再び藤枝様はピアノに向かい音を紡いだ[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公口ほほえみ]
[主人公頬染め]
（ピアノの優しくて甘い旋律がこの場の雰囲気を[r]
[sp]支配している……本当になんて綺麗な音なのかしら）[p]

#
曲が終わると藤枝様は皆に礼をした[r]
そして私の方を向いた[p]

;【立ち絵】藤枝：真剣
（……貴方が好きだ、もう諦めない）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：照れ目普通
[主人公照れ目普通]
（藤枝様は覚悟をみせてくれた[r]
[sp]今度は私がお父様を説得する番ね[r]
[sp]私も藤枝様を諦めないわ）[p]

;背景玄関
[whosay name="三宮　時子" color="#c25232"]
「[名前]さん説得頑張ってくださいね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「時子さん、今日は本当にありがとうございました！」[p]

[whosay name="三宮　時子" color="#c25232"]
「ええ、恋が叶うといいですね」[p]

[背景_庭]
[主人公ポーズ通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
「ただいま帰りました」[p]

[whosay name=磯野 color="dimgray"]
「お帰りなさいませお嬢様」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公口通常]
「お父様にお話があります[r]
[sp]また時間を空けて欲しいと[r]
お伝えしてください」[p]

;数刻後

[背景_庭]
;【立ち絵】主人公：目閉じ

[whosay name=&sf.girl_namae color="#cf5a7f"]
（正直に私の気持ちをお話ししよう）[p]
[主人公目閉じ]
[主人公口ほほえみ]

;【SE】襖を開ける（ゆっくり）

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、話があると聞いたが[r]
[sp]何のことだろうか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公目通常]
[主人公口開]
「藤枝様の事です[r]
[sp]……お手紙を交わすお許しを頂けませんか？」[p]
[主人公通常]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「最近は再び熱心にお稽古を励んでいると聴いたが[r]
[sp]まだその事を引きずっていたのか」[p]

;【立ち絵】主人公：困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「藤枝様は人格的にも素晴らしいです[r]
[sp]将来も有望な方ですどうかお願いします！」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「留学する彼の邪魔になると考えられないのか？[r]
[sp]私や家の体面もある、[r]
[sp]どうして諦められないのかね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公目通常]
[主人公口開]
「藤枝さまは今回の留学を見送られました[r]
[sp]今はお手紙を交わすだけでもいいのです[r]
[sp]お父様が許されるまで[r]
[sp]何年でも待ちますからどうかお許し下さい。」[p]


[whosay name=&sf.father_name color="DarkSlateBlue"]
「留学を見送った！？ ?お前の為にか？[r] 
[sp]いつの間にそんなに思い合うようになったんだ[r]
[sp]だが恋なんて一時的なものいい加減にしなさい[r]
[sp]留学も見送ったなら将来性もあまりないだろう 」[p]
[主人公口通常]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：憂い
[主人公憂い]
「藤枝様はまた留学をされます。・・・・一時的、[r]
[sp]お父様もお母様の事をそう思っていらっしゃいますか？[r]
[sp]お手紙で心を通わせかけがえのない[r]
[sp]伴侶となったのではありませんか？」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公目通常]
（お母様の方が実家のほ方か家格は上、[r]
[sp]美人で淑女と評判で降るようにお手紙が来て[r]
[sp]家格が下のお父様との結婚は反対されたという[r]
[sp]お母様は必死に両親を説得しお父様は家を大きくした）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公口開]
「私は藤枝様が好きです！[r]
[sp]私は藤枝様の為ならどんな努力も惜しみません！」[r]
（せめて私の気持ちは伝わって欲しい）[p]

#
お父様はしばらく沈黙し[r]
思案しているようだった[r]
私は願うように祈るような気持ちで頭を下げた[r]
そしてお父様は私に向かって言った[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「……手紙だけだ、会うことは許さない[r]
[sp]彼の将来性を考えてそれだけ許そう[r]
[sp]藤枝君が挫折した時は手紙も許さない、今はそれだけだ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
「！」

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「ありがとうございます、お父様！」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「家の体面以前にも[r]
[sp]私たちは第一にお前の幸せを願っている[r]
[sp]その事は覚えて置きなさい」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：照れ目普通
[主人公照れ目普通]
「ええ、感謝しております」[p]

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
