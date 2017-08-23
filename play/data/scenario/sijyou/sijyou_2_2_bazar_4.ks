*replay_sijyou_2_2
*start
*test
[iscript]
$(".1_fore").empty();
[endscript]
[stopbgm]
;暗転プリロードサブルーチン
[call target=*2_2 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[暗転]
;背景をセット予定↑
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;====================================================
*scene1
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「さあ、お手をどうぞ――」[p]
#
華織様が手を差し伸べ、私の手を置かれるのを待つ。[p]
#
;↓目：横の伏目 [主人公横伏目]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
目を合わせるのも怖くなるほど、夢のような出来事に震える手。[p]
;私の手は震えた？
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
「はい……」[p]
#
私は、愛する人の手にその手を重ねた。[p]
;------------------------------------
[whosay name=&sf.girl_namae color="#cf5a7f"]
（大丈夫。お稽古通りにステップを踏めばいいの)[p]

#
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
ワルツの円に加わり、リズムを取り始める。[p]
回るたびに振袖の[ruby text=たもと]袂が蝶のようにひらめき、[r]
自身が華麗な大人の世界の一員になったのかと思えた。[p]
;のかさえ思えた
;洋装バージョン 回るたびにドレスの裾が花のようにひらめき
[whosay name="華織" color="olivedrab"]
「上手ですね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとうございます。[sp]華織様もお上手です。[r]
[sp]こういった場所に来られたことがあるのでしょうか？」[p]
[whosay name="華織" color="olivedrab"]
「一度だけあります。[r]
[sp]ですが僕のような世辞が苦手な者が[r]
[sp]お邪魔したところで、誰かを楽しませることもできませんよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
「そんな、私は楽しいですわ。[r]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[sp]華織様といて楽しいと思えない方なんて、[r]
[sp]きっと、おりませんわ」[p]
[whosay name="華織" color="olivedrab"]
「ありがとうございます。[sp]ですが僕は、これでも芸術家なので、[r]
[sp]美しいものを美しいとしか言えないですし、[r]
[sp]自分に嘘を付くのが苦手なのです」[p]
[whosay name="華織" color="olivedrab"]
「だから今、[r]
[sp]僕は美しい花のような[名前]さんとワルツを踊れて、[r]
[sp]夢のような時間だと思います」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様……」[p]
;セリフ思いつかないので名前で
;感想
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
(今日という日を忘れないわ)[p]
#
*scene2
;-----------------------------------
;全画面表示
@layopt layer=fix visible=false
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
[暗転]
;背景は作成中
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;-----------------------------------
円舞曲が終わった後、しばしの休憩時間に入る。[r]
[r]
周囲は新たな出会いや旧交を温める為、[r]
社交界の慣わしに勤しんだ。[p]
;一方の私達は、？  熱気→ほてった身体を？
私達は、空いた柱に寄り、[r]
熱気を帯びた身体を冷ます為に休憩をとった。[p]
;------------------------------------------------
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
[freeimage layer=29]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
@layopt layer=fix visible=true
;-------------------------------------------------
*scene3
#
[whosay name=&sf.girl_namae color="#cf5a7f"]
（なんて楽しい時間なのかしら！ [r]
[sp]大人達がダンスに興じるのも少し分かったかもしれないわ)[p]
[whosay name="華織" color="olivedrab"]
;↓効果：無し(通常) [主人公効果消]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「[名前]さん、暑くなってきましたね。[sp]何か飲み物を頼みましょうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「ええ、そうですね」[p]
#
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
華織様と話をしていると[r]
華やかな雰囲気をもった妙齢の女性が話しかけてきた。[p]
[whosay name="？？？"]
「あら、四条様！」[p]
[whosay name="華織" color="olivedrab"]
「森永夫人。 お元気でしたか？」[p]
[whosay name="森永夫人"]
「ええ。[sp]お兄様から御内約されたとお聞きしておりましたが[r]
[sp]本当でしたのね！[r]
[sp]おめでとうございます。[sp]とても嬉しいことですわ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どなたかしら？)
[主人公目パチ1回]
[p]
#
私が森永夫人と呼ばれた女性について気になっていると、[r]
すかさず華織様が互いの紹介を始めた。[p]
;知人=四条兄の元手紙の相手。 婚約しようとしたしたが上手くいかず。華織より二歳年上
[whosay name="華織" color="olivedrab"]
「[名前]さん、こちらは兄の知人の森永様です。[r]
[sp]森永夫人、お聞きしていると思いますが、[r]
[sp]僕の婚約者の[名字]家の[名前]さんです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「[名前]と申します」[p]
[whosay name="森永夫人"]
「私は森永と申します。[r]
[sp]華織様のお兄様の知人といった所ですわ。[r]
[sp][名字]様は、お可愛い方だとこと。 華織様はお幸せね！」[p]
[whosay name="華織" color="olivedrab"]
「ありがとうございます」[p]
#
私も華織様に寄り添って、小さく会釈をした。[p]
;腰を折るという慣用的よりお辞儀：会釈の単語の方が良いでしょうか？
[whosay name="森永夫人"]
「前見た時もよりも華織様は、お兄様のような華やかさが[r]
[sp]増した気がいたしますわ。[r]
[主人公目パチ1回]
[sp]ところで、華織様。 今日はお兄様はいらっしゃらないの？」[p]
[whosay name="華織" color="olivedrab"]
「いえ、今日は兄は不在でして」[p]
[whosay name="森永夫人"]
[主人公目パチ1回]
「もう、あの方ってば海外に行ってからは……」[p]
#
森永夫人は、何やら華織様のお兄様とは、やや[ruby text=ひと]一[ruby text=もん]悶[ruby text=ちゃく]着あったかの様子で、[r]
昔話をし始めだす。[p]
;因縁があった様子で？
何かを感じ取った華織様は私を気遣い、小さな声で謝った。[p]
[whosay name="華織" color="olivedrab"]
「申し訳ございませんが[名前]さん。[r]
[sp]混み合った話になりそうなので、少しお待ち頂いても[r]
[sp]よろしいでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
「はい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
（少しお待ちしましょう。[r]
[sp]これも夫人となったらお勤めの一つになるでしょう)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓口：おちょぼ口 [主人公口ふぅ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
（それにしても踊った後だからか、喉が[ruby text=かわ]渇いてきたわ)[p]
#
私の様子に気付いたのか、[r]
[主人公通常]
気の良さそうな[ruby text=ボー]給[ruby text=イ]仕が飲料を乗せた[ruby text=トレイ]盆を手にして側に立った。[p]
;注文を尋ねに来た…？ 注文を取りに来た？ 近づいた？ 近くに寄った？
[whosay name="給仕"]
「奥様、お飲物はいかがでしょうか？」[p]
*scene4
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢 セーブできるように それほど重要ではない感を 親戚のことを話している場合のみ表示　
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
[if exp="f.bitter_rute != 1"]
@jump target=sweet_rute
[endif]
#
私は
;背景変更:和紙風 桜色
[bg name="bg1" storage="../fgimage/bg/plane_sakura.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit=''"]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=sweet_rute_0]頂く[endlink][r]
[r][r][r]
[link target=bitter_rute]遠慮しておいた[endlink][r]
[s]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*bitter_rute
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[暗転]
遠慮しておいた。[p]
@jump storage="sijyou_2_2_bazar_5a.ks"
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*sweet_rute_0
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[暗転]
頂くことにした。[p]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*sweet_rute
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
「頂きましょう」[p]
[whosay name="給仕"]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「どうぞ。 では失礼します」[p]
#
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;給仕が立ち去るのを横目で見ながら？
甘い[ruby text=フ]果[ruby text=ルー]物[ruby text=テ]のよ[ruby text=ィー]うな香りが漂う飲み物を手にし、喉を潤す。[p]
身体の熱気は、落ち着かなかったが、一気に不思議な爽快感が増してきた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（ふう。[sp]なんだか、とてもフワフワしてきたわ）[p]
#
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
間も無くして、音楽隊が演奏を再開しはじめる。[r]
落ち着かない高揚感が、[r]
もう一度ダンスで味わった華やぐ焦燥を求めてしまった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
（もう一度、華織様と踊りたい気分……。[r]
[wait time=1000]
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
[sp]でも、はしゃぎ過ぎると失敗しそうだわ）[p]

[whosay name="華織" color="olivedrab"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「[名前]さん、お待たせしました。[r]
[sp]？　 顔が少し赤いようですが……休憩室に行きましょうか？」[p]
#
私は
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢 セーブできるように それほど重要ではない感を
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 桜色
[bg name="bg1" storage="../fgimage/bg/plane_sakura.jpg" time=100]
[wait time=10]
[eval exp="f.haikei_credit=''"]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=sweet_1]もう一度、踊る[endlink][r]
[r][r][r]
[link target=seet_2]休憩室に行く[endlink][r]
[s]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*sweet_2
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[暗転]
休憩室に行くことにした。[p]
@jump storage="sijyou/sijyou_2_2_bazar_5.ks"
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*sweet_1
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[暗転]
もう一度、踊ることにした。[p]
;------------------------------------
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
「大丈夫ですわ。[sp]ねえ、華織様。[r]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[sp]宜しければ、もう一曲、お相手して下さりませんか？」[p]
[whosay name="華織" color="olivedrab"]
「僕は勿論、嬉しいのですが……。[r]
[sp][名前]さん、本当にお体の調子は、大丈夫なのでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「大丈夫ですわ。[sp]今は華織様と、もっと踊りたい気分です」[p]
[whosay name="華織" color="olivedrab"]
「そうですか？ [r]
[sp]……では、いきましょうか」[p]
#
私は、曲の合間をみて、華織様と共に[ruby text=ホー]広[ruby text=ル]場の円舞に滑り込んだ。[p]
;------------------------------------
*scene5
;キツイ内容でしょうか
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
「ダンスって、とても楽しいのですね」[p]
[whosay name="華織" color="olivedrab"]
「[名前]さん？」[p]
#
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
華織様の手を軽やかに取り、ターンステップを踏む。[p]
#
;↓目：横の伏目 [主人公横伏目]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
すると、[r]
目に飛び込んだ隣のロープデコルテを着た女性が、[r]
男性に抱かれて華やかに大胆にターンを繰り出していた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私も、もっと大胆にターンをしてみたいわ)[p]
[whosay name="華織" color="olivedrab"]
「！」[p]
;【SE】ザッ(衣擦れ)
[playse storage=za_kinuzure.ogg loop=false ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[quake count=3 time=250 hmax=10 vmax=10]
#
しかし、[r]
同じようにターンをしてしまったところ、[r]
後ろの男性客に着物の[ruby text=たもと]袂がぶつかってしまった。[p]
;洋装バージョン  [ruby text=ひるがえ]翻ったドレスの裾がぶっかってしまった。
[whosay name="男性"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：通常より大きめに開いた状態(驚き、好奇心、意思を見せる場面などに) [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「おっと……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
;↓効果：汗 [主人公汗]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
「ごめんなさい、きゃっ」[p]
[quake count=3 time=250 hmax=10 vmax=10]
[whosay name="女性"]
「きゃぁっ」[p]
#
一人の男性を主軸にして、[ruby text=ホー]広[ruby text=ル]場の円舞がパタパタと乱れ、[r]
静まり返っていく。[p]
#
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
観客は、その原因は誰かと視線が泳ぎ始めた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
（ど、どうしましょう！？)[p]

#
ふいに、何故だかお稽古の先生の声が脳裏に響く。[p]
 
[whosay name="お稽古の先生"]
――[名前]さん、振袖でのターンは小降りに。[sp]足の動きを計算しつくして。 [r]
そうでないの、違うわ。[p]

;洋装バージョン
;――[名前]さん、華麗にターンは回るのはいいけれど、周りもよく注意しなさい。
;そうでないの、そこは違うわ。

[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：通常より大きめに開いた状態(驚き、好奇心、意思を見せる場面などに) [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓口：小さく開けた状態。発言時などに… [主人公口開]
; 毎発言時だとうるさく見えそうなので、注目してほしい発言や変化をつけたい時などに使用しています
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「あ……」[p]
#
辺りの呆然とした雰囲気に[r]
今までの努力が水の泡に消えていくような気がした。[p]

[whosay name="華織" color="olivedrab"]
「[名前]さん、こちらに行きましょう」[p]
#
華織様が守るように私を庇おうとする。[r]
それが、とても居たたまれない。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;↓効果：涙にじむ(目閉用[主人公涙_目閉用]
[chara_mod name="girl_emo" storage="girl/S/emo_namida_toji.png" time=0]
[wait time=10]
「ごめんなさい！」[p]
#
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
私は、恥ずかしさと悔しさのあまり、[ruby text=ホール]広場を抜け出した。[p]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*scene6
[背景_チャリティ会場回廊] 
#
回廊の柱にもたれると、私は顔を[ruby text=おお]覆い隠した。[p]
[主人公ポーズ両手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(はしゃぎすぎてしまったわ……どうしてこんな事を？)[p]
#
恥ずかしさで涙を[ruby text=こぼ]零すと、[r]
隣の[ruby text=ホー]広[ruby text=ル]場から、楽しげな楽曲が流れ始める。[p]
#
自身の悲しみと周囲の楽しさの落差があまりにも違いすぎて、[r]
場違いな気持ちが、より一層、高まってしまった。[p]

[whosay name="華織" color="olivedrab"]
「[名前]さん、ここにいらしたのですね」[p]
#
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓効果：涙ポロリ[主人公涙流]
[chara_mod name="girl_emo" storage="girl/S/emo_namida_nagare.png" time=0]
[wait time=10]
涙を抑え、顔を見せる。[r]
[主人公ポーズ通常]
そこには華織様が、私を心配そうに見つめ立っていた。[p]
;[p]の後に華織アップ
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;↓効果：涙にじむ(目閉用[主人公涙_目閉用]
[chara_mod name="girl_emo" storage="girl/S/emo_namida_toji.png" time=0]
[wait time=10]
「ごめんなさい。 私、今日の日をとても楽しみしていたのに」[p]
[whosay name="華織" color="olivedrab"]
「お気になさられずとも、こういったことはよくある事です」[p]
[whosay name="華織" color="olivedrab"] 
「ですが僕も少し浮かれてました。[r]
[sp]もっと上手く[名前]さんをリードすべきでした」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
;目閉じ泣き 恥ずかし悔しい
[whosay name="華織" color="olivedrab"] 
 「今は、ここでゆっくり休んで下さい」[p]
#
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：通常より大きめに開いた状態 [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓効果：涙にじむ[主人公涙]
[chara_mod name="girl_emo" storage="girl/S/emo_namida.png" time=0]
[wait time=10]
華織様は、私の肩を抱くと優しく包み込んだ。[p]
;驚き泣き→柔和泣き
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「今度はもっと上手くできるでしょうか……？」[p]
[whosay name="華織" color="olivedrab"] 
「ええ、上手くできるでしょう。 [r]
[sp]実際、僕も驚きました。[r]
[sp]"ですが、当分は僕の前だけで踊ってほしいです"」
;↓目：通常より大きめに開いた状態 [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：大きく開けた状態 [主人公口大]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ooake.png" time=0]
[wait time=10]
「私が上手く踊れないからですか？」[p]
#
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
恥ずかしさに打ち震えていると、光とともに大きな音が鳴り響いた。[p]
;背景変更
#
;↓目：通常より大きめに開いた状態 [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
驚いて見上げれば、大輪の花火が陰った空を煌びやかに照らしていた。[p]
[whosay name="華織" color="olivedrab"] 
「違いますよ。[r]
[sp]今日の[名前]さんはとても美しくて、[r]
[sp]あの花火のように、他の方の視線を引いてしまったようなのです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「……」[p]
;驚き照れ
#
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
どうしてか騒がしいはずの花火の音が聞こえず、[r]
華織様の胸の鼓動だけが鳴り響く。[p]
;目閉じ照れ
[whosay name="華織" color="olivedrab"] 
「迎えにいった時の[名前]さんの表情も、[r]
[sp]頂いた贈り物も、花のように舞う貴女も[r]
[sp]僕は今日という日を忘れられないでしょう」[p]

[whosay name="華織" color="olivedrab"] 
「もし宜しければ、休まれた後に[r]
[sp]もう一度、ここで踊って頂けませんか？」[p]
#
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
華織様の少し緊張した声に包まれ、[r]
私は少し意地悪ながら安心してしまった。[p]
;クリアフラグ
[eval exp="sf.event_sijyou_2_2_bazar = 1"]
[イベントシーン終了]


[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
@jump storage="test_sijyou.ks"
[endif]
[s]

;------------------------------------------------
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
