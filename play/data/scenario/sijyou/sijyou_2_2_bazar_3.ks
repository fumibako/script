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
;====================================================
[cm]
[背景_チャリティ会場出店]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;====================================================
*seen_prezent
@layopt layer=fix visible=true
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
(華織様は何がお好みでしょうか？)[p]
;店員と分かるまで遅い
#
陳列棚の前で華織様への贈り物を探している私に[r]
突如、慈善バザーの売り子が名を尋ねてきた。
[主人公目パチ1回]
[p]
[whosay name=女性の売り子]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
「あの失礼ですが、もしかして、[名字]様でしょうか？」[p]
#
売り子は、どこかの令嬢のようなのか、佇まいが美しく、[r]
白磁のような肌と意志の強そうさな大きな黒い瞳が印象的な女性であった。
[主人公目パチ1回]
[p]
;どんな人が話しかけてきたのか書いてないと読み手側にストレス
#
私は不思議に思いながらも、その目に引き寄せられた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
(どなたかしら？)[p]
[whosay name=四条親戚]
「突然、話し掛けて申し訳ございません。[r]
[sp]私は四条家の親戚にあたる四条幸代という[ruby text=もの]者です」[p]
;------------------------------------------------
;華衣、エンカンの飴屋のイベントを見ていない場合sijyou_sansaku4.ks
[if exp="f.event_machi_sijyou[4] == 1"]
;華衣 エンカンの飴屋のイベントをみているとき
[whosay name=四条幸代]
「先日は、エンとカンを……子供達を見てくださってありがとうございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
(ええと……)[p]
#
私は、四条親戚の幸代と名乗る女性のお顔から記憶を呼び寄せる。[p]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：通常より大きめに開いた状態[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
ほんの少しの間を置いて、[r]
冬の日、華衣様が子供達の姉を探しに行った記憶が蘇ってきた。
[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
(そうだわ。 この方は、エンさんと、カンさんのお姉様だわ)[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;------------------------------------------------
[else]
[whosay name=四条幸代]
「以前、園遊会でお見掛けしました時、[r]
[sp]子供達が[名字]様に失礼をして……」[p]
;背景 四条家
#
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
園遊会での出来事は、私の中で記憶に新しい。[p]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[暗転]
[背景セピア化]
[背景_四条家庭椅子2]
特にあの、子供達が走り込んできて、[r]
その際に華織様に支えてもらった時――[p]
[暗転]
[背景セピア化_解除]
[背景_チャリティ会場出店]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
(あの時の華織は、私に対してあまり意識されてなかった気がするわ)[p]
[endif]
;------------------------------------------------
*seen_2
[autosave]
[whosay name=四条幸代]
[主人公通常]
「今日は華織様と御一緒に来られたのでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい。[sp]
[主人公目パチ1回]
何かご用件がございましたか？」[p]
[whosay name=四条幸代]
「いえ。[sp] [華衣]様が、お元気でいらっしゃるのか[r]
[sp]気になっていたので……」[p]
#
四条幸代様は、どうしてか潤んだ目をした後、俯かれた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
(どうしたのかしら？)[p]
#
私が訝しでいると、[r]
幸代様は先ほどと打って変わって満点の笑顔でハキハキと話された。[p]
[whosay name=四条幸代]
「失礼いたしました。[r]
[sp]実は、昔から[華衣]様には、私の弟達の相手をして下さっていて、[r]
[sp]きちんとお礼を伝えれたいと考えていたのです」[p]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
「そうでしたのね」[p]
[whosay name=四条幸代]
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
「ですが、[華衣]様は、いらっしゃられないようですので、[r]
[sp]また今度にいたします……」[p]
#
;↓目：通常より大きめに開いた状態[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
幸代様の快活な笑みが、花が綻ぶような慈愛の笑みに変わる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[主人公ポーズ指]
(もしかして、幸代様は[華衣]さんのことが気になっているのかしら？[r]
;少し間をおいて
[wait time=1000]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：横の伏目 [主人公横伏目]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
[sp]……考えすぎかしら？)[p]
*seen_3
#
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[主人公ポーズ通常]
私は、幸代様の表情の変化が気になりつつも、平静を装って返事をした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「もし宜しければ華織様にお伝えしましょうか？」[p]
[whosay name=四条幸代]
「いえ、[r]
[sp]たとえ上手く伝えられなくても、私から直接、[r]
[sp]お伝えしたいので……」[p]
「[名字]様、お気遣いありがとうございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「？　いえ……」[p]
*seen_4
#
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
深々とお辞儀をする幸代様。[p]
[autosave]
意志の強さを感じられる仕草に[r]
私はこれ以上、彼女の心情を尋ねれそうになかった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（でも、[r]
[sp]もし、幸代様が華衣さんを気に掛けて下さって[r]
[sp]いらっしゃるのでしたら……)[p]
#
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;敢えて言葉はしなかったが、
幸せが訪れる予感に私は胸をほんのりと温かくした。[p]
*seen_5
[whosay name=四条幸代]
;↓目：通常より大きめに開いた状態 [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「[名字]様、どういったものをお探しでしょうか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ片手]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
(！  そうでしたわ)[p]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[主人公ポーズ通常]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「華織様が好まれるような贈り物を探しているのです」[p]
[whosay name=四条幸代]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「こちらは、如何でしょうか？ 」[p]
*seen_6
#
勧められた陳列棚には、押し花が飾られた栞や便箋が[r]
数種類、並んでいた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
（華織様はお花を好まれますし、[r]
[sp]もし使って頂けたら…と考えると嬉しいですね)[p]
[autosave]
*seen_7
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
[link target=siori_prezent]栞を選んだ。[endlink][r]
[r][r][r]
[link target=binsen_prezent]便箋を選んだ。[endlink][r]
[s]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*siori_prezent
[eval exp="f.present_name = '栞'"]
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_チャリティ会場出店]
栞を選んだ。[p]
@jump target=cmon_prezent

*binsen_prezent
[eval exp="f.present_name = '便箋'"]
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[背景_チャリティ会場出店]
便箋を選んだ。[p]
@jump target=cmon_prezent
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*cmon_prezent
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
「[ruby text=い]良いですね。 こちらを頂きます」[p]
[whosay name=四条親戚]
「ありがとうございます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
(華織様は何を選ばれたのでしょうか？)[p]
#
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
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
;--------------------------------------------------
贈り物を選んだ私は、[r]
華織様と約束していた大食堂で合流し、[r]
お互いに選んだ品物をゆっくりと見せ合った。[p]
;------------------------------------------------
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
[current layer="message0"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[freeimage layer=29]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
;------------------------------------------------
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私が選んだものは、こちらです」[p]
[whosay name="華織" color="olivedrab"]
「[emb exp="f.present_name"]ですか？[r]
[sp]ありがとうございます。   とても嬉しいです」[p]
;------------------栞の場合------------
[if exp ="f.present_name == '栞'"]
「本を読む度に[名前]さんの事を思い浮かべそうです」[p]
#
華織様は穏やかな微笑みをして、私からの贈り物を受け取った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(喜んでもらったみたいで良かった)[p]
;----------------便箋の場合--------------
[else]
[whosay name="華織" color="olivedrab"]
「使わせて頂きますね。[r]
[sp]ああ、でも少し、勿体無い気がしてしまいますね」[p]
#
華織様は、嬉しいような困ったような表情をして、私からの贈り物を受け取った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「いえ！ 気にせず使って下さい。 その方が私も嬉しいです」[p]
[whosay name="華織" color="olivedrab"]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「そうですね、[名前]さんにお手紙を書く時に使わせて頂きます」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「はい」[p]
#
[whosay name=&sf.girl_namae color="#cf5a7f"]
(お返事が楽しみだわ。[sp]喜んでもらったみたいで良かった)[p]
[endif]
;--------------------------------------------------
[whosay name="華織" color="olivedrab"]
「僕が選んだものはこちらです」[p]
#
華織様が選んだのは、[r]
;------------------------------------
[if exp="f.present_name == '便箋'"]
肌触りの良い綿の生地にミルトリアの刺繍が施されているハンカチだった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ふわっとした手触りのハンカチに可愛らしい花の刺繍が素敵だわ)[p]
[whosay name="華織" color="olivedrab"]
「ミルトニアの花が、今日の優美な[名前]さんを思い浮かんで、[r]
[sp]思わず手に取ってしまいました。 如何でしょうか……」[p]
;------------------------------
[else]
;[if exp="f.present_name == '栞'"] 
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：通常より大きめに開いた状態(驚き、好奇心、意思を見せる場面などに) [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
小さな天然石を綴ってミルトリアの形に模した、華やかな簪だった。[r]
手に取って見ると花の細工がキラキラと揺れる。[p]
;宝石だと工芸品とは言わないので天然石くらい
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
（なんて綺麗な石かしら！[sp]それに細工も繊細で上品だわ）
[p]
[whosay name="華織" color="olivedrab"]
「ミルトニアの花の簪です。[sp]ミルトニアの優美な佇まいに、[r]
[sp][名前]さんを思い浮かべて手に取ってしまいました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「ありがとうございます。  大事にいたします」[p]
[endif]
;------------------------------------
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そういえば……四条幸代様に出会ったのでしたわ。[r]
[主人公ポーズ指]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[sp]でも、デェトを楽しみたいし、幸代様ご自身で話されると[r]
[sp]仰ってましたから迂闊に話さない方が良いのかしら？)[p]
#
私は幸代様と会ったことを
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
[link target=bitter_rute]話す。[endlink][r]
[r][r][r]
[link target=seet_rute]話さない。[endlink][r]
[s]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*bitter_rute
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[暗転]
;背景は作成中
[主人公ポーズ通常]
話すことにした。[p]
[eval exp="f.bitter_rute=1"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ご親族とお会いしたのに、華織様に隠すのも失礼にあたるかしら？)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：通常 [主人公目通常]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「先ほど、華織様の親戚の幸代様にお会いしましたわ」[p]
[whosay name="華織" color="olivedrab"]
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
「ああ、やはり慈善バザーにいらっしゃってましたか。[r] 
[sp]叔母様は慈善活動に熱心でいらっしゃるので、娘にあたる幸代様も[r]
[sp]来られると思っていましたよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
「幸代様は、華織様の叔母様の御息女なのですね」[p]
[whosay name="華織" color="olivedrab"]
「そうですね。[sp]行事があると[ruby text=ウチ]家に来ては、[r]
[sp]小さな弟さん達と一緒に華衣と話をしてくれますし良い方だと思います」[p]
[whosay name="華織" color="olivedrab"]
「華衣について、何か言っていましたか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：横の伏目 [主人公横伏目]
[chara_mod name="girl_me" storage="girl/S/me_yokofusi1.png" time=0]
[wait time=10]
「い、いえ！ 挨拶をしただけですわ。[r]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[sp]仲が良いことは良いことですね！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：「えー」と閉口した感じの表情に [主人公口えー]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ee.png" time=0]
[wait time=10]
;↓効果：汗 [主人公汗]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]
(詳細は存じあげませんが、[r]
[sp]幸代様はご自身で華衣様に伝えると仰ってましたし、[r]
[sp]今は黙っておきましょう)[p]
;↓効果：無し(通常) [主人公効果消]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
#
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
ふと、顔をあげると華織様は、何やら小さく呟きながら、[r]
一人ウンウンと唸っていた。[p]
[whosay name="華織" color="olivedrab"]
「ただ、四条家(ウチ)の仕来りでは、……近い血縁の親族は[r]
[sp]なかなか手紙の相手に選ばないので……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
(？ 華織様なりに華衣様のことをお考えなのかしら？ )[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
「華織様？」[p]
;目大
[whosay name="華織" color="olivedrab"]
「！失礼しました。 また余計なことを考えてしまいました……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ご家族のことを熱心に考えられるのも良いですが、[r]
[sp]今日は大事なひとときですわ」[p]
;四条あせり
[whosay name="華織" color="olivedrab"]
「そうでしたね。[r]
[sp]せっかく洋食が味わえる食堂に来たのですから何か頂きましょうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
「はい」[p]
;ふふと笑って暗転
[暗転]
@jump target=comon_
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*seet_rute
[er]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[暗転]
;------------------------------------
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[主人公ポーズ通常]
話さないことにした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（やめておきましょう。 [r]
[sp]もし何か違った形で[華衣]さんに伝わってしまったら[r]
[sp]幸代様にも悪いわ。[sp]今はデェトを楽しみましょう)[p]
;共通
[whosay name="華織" color="olivedrab"]
;↓目：通常 [主人公目通常]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
「気に入って頂けて嬉しいです」[p]
[whosay name="華織" color="olivedrab"]
「さあ、せっかく洋食が味わえる食堂に来たのですから何か頂きましょうか」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
「はい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：控え目な笑顔 [主人公口笑顔小]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau_s.png" time=0]
[wait time=10]
「まあ！[sp]話に聞いてましたが色々とメニュウがありますのね」[p]
#
*comon_rute
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
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
しばらくの間、昼食を頂きながら、話し合った。[p]
;その後も慈善バザー会場の隣室で行われた書画展覧会で華織様と私は書画を楽しみ、日本の美術について話を重ねた。
;------------------------------------------------
夕方に近づく頃――。[r]
華族会館の周りでは、ダンスパーティーの知らせを[r]
聞いてか、[r]
紳士淑女を乗せた馬車や車の音が賑やかになってくる。[p]
私達も、貴賓室で身だしなみを整えた後、[r]
二階のダンスホールへと向かった。[p]
;------------------------------------------------
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
@layopt layer=message0 visible=true
;------------------------------------------------

[if exp="f.okeiko_gamen == true"]


[else]
[イベントシーン終了]
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
