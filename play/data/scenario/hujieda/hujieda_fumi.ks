;=============================================
;手紙編
;=============================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[eval exp="sf.FButton='OFF'"]
[iscript]
$(".1_fore").empty();
[endscript]

;=============================================
;◆イベント中に届く手紙◆ イベント後に「文箱」から読めるようにするために、このファイルにまとめます(◆jsYiJcqRkk
;=============================================
;『鳩の届けた手紙 一』←仮タイトルです。
;=============================================
*hujieda_fumi01
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『鳩の届けた手紙 一』[p]
[endif]
[手紙藤枝 fumi_number=]

*hujieda_fumi01_1
[cm]
箏の奏者様へ[l][r]
[r]
[sp]桜の花が咲きまた散る季節[r]
[r]
[sp]たまたま貴方様の家の近くを通り、[r]
[ruby text=こと]箏の音を聴き、[r]
その音色に拙いながら才能の鱗片を感じました。[r]
[r]
[sp][ruby text=こと]箏の音が心に響き[r]
僕はこうして手紙を書き綴りたくなり、筆を取りました。
[glink target=*hujieda_fumi01_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi01_2
[cm]
[sp]貴方様の筝が上達し益々成長することを[r]
願っています。[r]
[r]
[sp]ちなみに毎日、[ruby text=に]二～[ruby text=さん]三時間ほど練習すると効果的です。[r]
[r]
[sp]僕は名乗るほどの者ではありませんので[r]
この手紙の事、僕の事はお構いなく。
[glink target=*hujieda_fumi01_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi01_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi01_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆イベント中に読むため未読→既読処理はコメントアウトします
	;[eval exp="f.midoku_list_hairetsu[4][1] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;『鳩の届けた手紙 二』←仮タイトルです。
;=============================================
*hujieda_fumi02
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『鳩の届けた手紙 二』[p]
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi02_1
[cm]
[ruby text=こと]箏の奏者様へ[l][r]
[r]
[sp]緑照り映える時節。
[r]
[sp]この手紙は貴方様に届いていますでしょうか？　[r]
[r]
[sp]また貴方様の[ruby text=こと]箏の音を聞きました。[r]
少し上達されましたね。心から嬉しく想います。[r]
[r]
[sp]母が[ruby text=こと]箏がとても上手で僕は母の[ruby text=こと]箏の音色が好きでした。[r]
[sp]貴方様の音は母と違った魅力があります。[r]
[sp]母は華やかで優美な調べでした。
[glink target=*hujieda_fumi02_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
;アイコンにかかっているので分割します
*hujieda_fumi02_2
[cm]
[r][sp]
[sp]貴方の音は初々しく楚々とした調べです。[r]
[sp]つま弾く音は、どの音も、とても丁寧な響きを持っていて[r]
今後基礎を覚えたらどんな風に曲を奏でるのか楽しみです。
[sp][r]
[sp]極めることは貴方様の為にもなると思います。[r]
[sp]続けることは嫌な事もありますが、喜びも多くあります。[r]
[r]
[sp]また貴方様の[ruby text=こと]箏の音を聴けることを願っています。
[glink target=*hujieda_fumi02_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi02_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi02_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆イベント中に読むため未読→既読処理はコメントアウトします
	;[eval exp="f.midoku_list_hairetsu[4][2] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;『鳩の届けた手紙 三』←仮タイトルです。
;=============================================
*hujieda_fumi03
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『鳩の届けた手紙 三』[p]
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi03_1
[cm]
[ruby text=こと]箏の奏者様へ[l][r]
[r]
[sp]雨に萌ゆる緑が風情を漂わせる季節。[r]
[r]
[sp]貴方様におかれましては何かあられたのでしょうか？[r]
[sp][ruby text=こと]箏の音色がとても痛々しく、いつも丁寧につま弾く響きも[r]
ブレが感じられます。[r]
[r]
[sp]いえ、一生懸命に取り組まれているのは伝わって来るのです。[r]
[r]
[sp]まさか指の感覚が麻痺するほどに練習していらっしゃるのですか？[r]
[sp]早く上達したい時もあります。[r]
[sp]僕も睡眠を削り楽器を弾くこともありました。
[glink target=*hujieda_fumi03_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi03_2
;アイコン
[sp]ですがあまり熱心に練習しても調子を崩す時もあります。[r]
[sp]自分を追い詰めていくことは必ずしも[r]
いい結果をうむとは限りません。 ノイローゼになる人も居ると聞きます。[r]
[r]
[sp]自然に触れたりして一度視点を変えて余裕を持ってください。[r]
[r]
[sp]焦らずとも貴方様は丁寧にお箏を慈しみ優しく弾けていました。[r]
[sp]必ず上達できる方だと思います。[r]
[r]
[sp]初心を忘れずゆっくり上達していきましょう。
[glink target=*hujieda_fumi03_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi03_close" size=5 x=880 y=24 width=50 height=50]
[s]

*hujieda_fumi03_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆イベント中に読むため未読→既読処理はコメントアウトします
	;[eval exp="f.midoku_list_hairetsu[4][3] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]

;=============================================
;『鳩の届けた手紙 四』←仮タイトルです。
;=============================================
*hujieda_fumi04
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『鳩の届けた手紙 四』[p]
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi04_1
[cm]
[sp][ruby text=こと]箏の奏者様へ[l][r]
[r]
[sp]盛夏のみぎり、[r]
[r]
[sp]また貴方様の演奏を聴きました [r]
音色がとても暖かく優しい響きを持っていました。[r]
[r]
[sp]以前聴いた痛々しさはどこにもなく[r]
澄んだ音をかき鳴らされています。[r]
[r]
貴方様は心映えの素晴らしい方 なのかもしれませんね。[r]
[sp]偶然でいいので一目会いたいなどと思っていました。
[glink target=*hujieda_fumi04_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi04_2
[sp][r][r]
[sp]……申し訳ありません。　こんなことを書いて。[r]
ですが紙は貴重なので、このまま綴ります。[r]
[sp]僕は心から貴方様の成長を喜ばしく思っています。[r]
[sp]これほど短期間に上達されると思っていませんでした。[r]
[r]
[sp]きっと貴方様はこれからも成長するでしょう。[r]
僕も貴方様の成長が楽しみです。
[glink target=*hujieda_fumi04_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*hujieda_fumi04_3 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi04_3
[sp][r][r]
追伸
[sp]僕の伝書鳩が、最近頻繁に貴方様のところへ[r]
行っていませんでしょうか？[r]
[r]
[sp]この伝書鳩は[ruby text=こと]箏の音色が気に入っているのか[r]
よく母のお[ruby text=こと]箏の練習を聴いていました。[r]
[sp]貴方様の邪魔になっていないといいのですが。
[glink target=*hujieda_fumi04_2 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi04_close" size=5 x=880 y=24 width=50 height=50]
[s]

*hujieda_fumi04_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆イベント中に読むため未読→既読処理はコメントアウトします
	;[eval exp="f.midoku_list_hairetsu[4][4] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]

;=============================================
;『鳩の届けた手紙 五』←仮タイトルです。
;=============================================
*hujieda_fumi05
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『鳩の届けた手紙  五』[p]
[endif]
[手紙藤枝 fumi_number=]

*hujieda_fumi05_1
[cm]
[名字]　[名前]様へ [l][r]
[r]
[sp]降るような蝉しぐれ。[r]
[r]
[sp]僕の事は、お構いなくと最初の手紙に書きながら[r]
僕は、いつのまにか貴方様に深入りをしてしまったようです。[r]
[r]
[sp]このひと月ずっと、どうお返事しようかと悩んでました。[r]
[sp]僕も少なからず貴方様に好意を持ってしまったようです。[r]
[r]
[sp]正直に伝えましょう。[r]
[sp]僕はただの郵便配達員です。[r]
[sp]貴方様が気にされるような身分のものでもありません。
[glink target=*hujieda_fumi05_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi05_2
[sp]僕がただの郵便配達員と知って貴方様が[r]
どんな反応されるのか怖いです。[r]
[sp][r]
[sp]また、このまま、ずるずると僕と手紙を[r]
交わすのは、貴方様の為にはならないでしょう。[r]
[r]
[sp]これで僕が書くのは最後の手紙とします。[r]
お箏を聞かせていただいてありがとうございました。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　藤枝　肇
[glink target=*hujieda_fumi05_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*hujieda_fumi05_3 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi05_3

[sp]追伸[sp]貴方が大切な文通の最中だという事に気づいてました。[r]
[r]
[sp]貴方の文通相手に名乗り出るような行為だったのかもしれません。[r]
[sp]誤解させて申し訳ありませんでした。[r]
[sp]今、文通されている方と親しくなってください。[r]
[sp]僕は貴方の幸せを願っているのです。

[glink target=*hujieda_fumi05_2 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi05_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi05_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆イベント中に読むため未読→既読処理はコメントアウトします
	;[eval exp="f.midoku_list_hairetsu[4][5] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]

;=============================================
;『鳩の届けた手紙 六』←仮タイトルです。
;=============================================
*hujieda_fumi06
[clearfix]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『鳩の届けた手紙 六』[p]
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi06_1
[clearstack]
[cm]
[名字][名前] 様へ[l][r]
[r]
[sp]秋色次第に濃く、貴方様におかれましてはお変わりない[r]
でしょうか？[r]
[r]
[sp]毎日の貴方様の[ruby text=こと]箏の音を聴き胸が締め付けられるような[r]
気持です。[r]
[r]
[sp]僕はそうして気持ちを抑えきれず再び筆を取り、[r]
貴方様に手紙を書いています。[r]
[r]
[sp]貴方様は僕の身分に失望を覚えなかったのですね、[r]
[sp]心から喜んでいる僕がいます。[r]
[sp]まだお会いしたこともないのになぜでしょうか？　
[glink target=*hujieda_fumi06_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi06_2
;アイコン回避
[sp][r][r]
[sp]少しの間だけでいいです、僕とお手紙を交わして頂けませんか？[r]
[ruby text=あつ]厚かましいお願いだという事は重々承知です。[r]
[r]
[sp]僕は郵便配達と郵便の仕分け、事務処理、郵便局が休みの日には[r]
ミルクホールでのピアノの演奏をしています。[r]
[r]
[sp]目まぐるしく忙しい毎日ですが、[r]
貴方のお[ruby text=こと]箏の音が、僕に貴方の事を考えさせるのでしょうか？
[glink target=*hujieda_fumi06_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*hujieda_fumi06_3 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi06_3
[sp][r]
[sp]高貴な身分のものは手紙を交わし結婚相手を選びます。[r]
[sp]つい最近、家が没落するまでは僕も華族の一人でした、[r]
手紙の書き方も教わり、いつか僕もお手紙で結婚相手を決めるのかと[r]
幼いころは思ったものです。[r]
[sp][r][r]
[sp]少しの間だけでいいです……我ながら女々しいと思うのですが[r]
貴方様からのお返事を待っています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　藤枝　肇 
[glink target=*hujieda_fumi06_2 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi06_close" size=5 x=880 y=24 width=50 height=50]
[s]

*hujieda_fumi06_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
	;◆イベント中に読むため未読→既読処理はコメントアウトします
	;[eval exp="f.midoku_list_hairetsu[4][6] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]

;=============================================
;◆話題への返事◆
;=============================================
;『趣味について』
;=============================================
*hujieda_fumi07
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『趣味について』[p]
[endif]
;最大12行くらい？
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi07_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました　貴方様におかれましてますますの[r]
ご清祥の由と拝察いたします。[r]
[sp]毎日の郵便配達の時に聞こえる貴方様の[r]
箏の音を聴きいつも僕の心は心があらわれるよな気分になります。[r]
[r]
趣味は音楽鑑賞と楽器を弾くことです。[r]
[r]
[sp]楽器を弾くと嫌な事が忘れられます。[r]
好きな曲を弾くときは夢中になって曲から色々な情景が[r]
思い浮かび時間を忘れるほどです。
[glink target=*hujieda_fumi07_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi07_2
[sp]それから作曲することでしょうか。[r]
自然の情景から旋律を思い浮かべたりすることもありますが[r]
特に僕は詩を作り、メロディを考え、一句一句に合う[r]
メロディを考えることは得にワクワクします。[r]
[r]
[sp][名字]様はお箏を弾かれるときはどんな想いで[r]
弾かれているのでしょうか？　[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　[r]
[sp]　　　　　　　　　　　　　　　　　　　　藤枝　肇
[glink target=*hujieda_fumi07_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi07_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi07_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][7] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]

;=============================================
;◆話題への返事◆
;=============================================
;『仕事について』
;=============================================
*hujieda_fumi08
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『仕事について』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi08_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました　貴方様におかれましてますますの[r]
ご清祥の由と拝察いたします。[r]
[sp]今日も僕は貴方の箏を聴きました。[r]
どんどん上達されるのが我が事のように嬉しいです。[r]
[r]
[sp]御存じの通り郵便配達員をしています。[r]
[r]
[sp]仕事の時は軍手で指を保護してますが[r]
やはり墨汁や紙の汚れで指先が少し汚れたりするので[r]
最初は嫌でした。
[glink target=*hujieda_fumi08_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi08_2
[sp]今は一軒一軒手紙を届けることは[r]
人の想いを伝える大切なことだと思っています。[r]
[r]
[sp]そして郵便配達のない休日は、ミルクホールで[r]
ピアノを弾いています。[r]
[r]
[sp]一年前に家の都合で退学しましたが、僕は音楽学校に[r]
通っていました。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　[r]
[sp]　　　　　　　　　　　　　　　　　　　　藤枝　肇
[glink target=*hujieda_fumi08_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi08_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi08_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][8] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]

;=============================================
;◆話題への返事◆
;=============================================
;『友人について 』
;=============================================
*hujieda_fumi09
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『友人について』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi09_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました　貴方様におかれましてますますの[r]
ご清祥の由と拝察いたします。[r]
[r]
[sp]毎日郵便配達する時間にお箏を弾いて頂いてありがとう[r]
ございます[r]
心が温かくなるような思いです。[r]
[r]
[sp]幼馴染や音楽学校で友人がいます。[r]
[r]
[sp]家が没落して親戚とは、縁が切れたようなものですが、[r]
友人は今でも僕によくしてくれます。
[glink target=*hujieda_fumi09_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi09_2
[sp]彼らは本当に僕には勿体ないぐらいの友人達で[r]
いつもありがたく思っています。[r]
[r]
[sp][名字]様 のご友人についても知りたいと思っています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　[r]
[sp]　　　　　　　　　　　　　　　　　　　　藤枝　肇
[glink target=*hujieda_fumi09_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi09_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi09_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][9] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 家族について 』
;=============================================
*hujieda_fumi10
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 家族について 』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi10_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました　貴方様におかれましてますますの[r]
ご清祥の由と拝察いたします。[r]
[sp]僕は貴方のお箏の音が好きです。[r]
郵便配達ではゆっくり聞けないのが残念です[r]
[r]
[sp]父と姉がいます。[r]
[r]
[sp]正直に話していいものか、[r]
家が没落た頃母は風邪を引き肺炎になり、そのまま他界[r]
しました。
[glink target=*hujieda_fumi10_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi10_2
[r]
[sp]父も郵便関係の職につき、姉は慣れないながら家事を[r]
切り盛りしてくれています。[r]
[sp]僕も母の事は後悔していますが、[r]
それでも以前の体面を保つことが第一な生活より気が楽になり、[r]
穏やかに過ごせています。[r]
[r]
[sp][名字]様のご家族についても知りたいと思っています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　[r]
[sp]　　　　　　　　　　　　　　　　　　　　藤枝　肇
[glink target=*hujieda_fumi10_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi10_close" size=5 x=880 y=24 width=50 height=50]
[s]

*hujieda_fumi10_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][10] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 将来について 』
;=============================================
*hujieda_fumi11
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 将来について 』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi11_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました　貴方様におかれましてますますの[r]
ご清祥の由と拝察いたします。[r]
[sp]今日も貴方の弾かれる音に心励まされました。[r]
[r]
[sp]……いつか音楽家になりたいと思っています。[r]
[r]
[sp]今は借金を返すのと生活を切り盛りするのに、[r]
精一杯ですがなんとか見通しは立ちつつあります。[r]
[r]
[sp]独逸に留学するために、独学ですが独逸語を[r]
大体覚えました。
[glink target=*hujieda_fumi11_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi11_2
[sp]国から海外へ留学する人数は限られていますが、[r]
友人や先生は今でもよくしてくれて、僕も期待に応えようと[r]
思っています。[r]
[r]
[r]
[sp]多くを学び、人に喜ばれる音楽を後世に伝えていきたいと[r]
思います。[r]
[r]
[sp][名字]様はどんな未来を考えているのでしょうか？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　[r]
[sp]　　　　　　　　　　　　　　　　　　　　　藤枝　肇
[glink target=*hujieda_fumi11_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi11_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi11_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][11] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 読書について 』
;=============================================
*hujieda_fumi12
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 読書について 』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi12_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。[r]
[sp]今日も貴方様の弾かれる音で心が和みまされました。[r]
[r]
[sp]一円の本というのをご存じでしょうか？[r]
[sp]最近では庶民でも本が手が届くものになりましたね。[r]
[sp]僕といえば、曲のイメージを膨らませる為に、[r]  
よく学校の図書室で本を読んだり、画集を見ました。[r]
[r]
[sp]自分の知らない世界を知るのは楽しいものです。[r]
[sp] [名字]様はどんな本が好きですか？[r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][12] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 スポーツについて 』
;=============================================
*hujieda_fumi13
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 スポーツについて 』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi13_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。[r]
[sp]いつも僕が配達時に[r]
貴方様がお箏を弾いている事を嬉しく思っています。[r]
[r]
[sp]スポーツというと運動会を思い出します。[r]
[sp]貴方様はどんな競技が好きなのでしょうか？[r]
[r]
[sp]運動をすると体の調子が良くなりますし、[r]
体力がつけば病気になりにくいといわれてます。
[glink target=*hujieda_fumi13_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi13_2
[sp]僕は学校にいたときはピアノを専攻してましたが、[r]  
楽器によっては肺活量が必須な楽器もあり、[r]
同期の学生とよく体力づくりにも励みました。[r]
[r]
[sp]そのおかげで配達も難なくこなせています。 [r]
[r]
[sp]貴方様はスポーツする機会はあるのでしょうか？[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇
[glink target=*hujieda_fumi13_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi13_close" size=5 x=880 y=24 width=50 height=50]
[s]

*hujieda_fumi13_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][13] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 食事について 』
;=============================================
*hujieda_fumi14
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 食事について 』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi14_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました　[r]
[sp]いつも僕が配達時に[r]
貴方様がお箏を弾いている事が僕の励みになっています。[r]
[r]
[sp]食事は姉が作ってくれています。[r]
[sp]食材は大体いつも同じですが、[r]
姉なりに焼いたり、煮漬けたり色々工夫をしてくれています。[r]
[r]
[sp]姉の心のこもった料理は少々焦げていたり、[r]
味が薄くても美味しいものです。[r]
[sp] いつもすべて平らげてしまいます。
[glink target=*hujieda_fumi14_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi14_2
[r]
[sp]大衆食堂なら安く、美味しいものがたべれそうですね。[r]  
[r]
[sp][名字] 様はどんなお料理が好きでしょうか？[r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇
[glink target=*hujieda_fumi14_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi14_close" size=5 x=880 y=24 width=50 height=50]
[s]

*hujieda_fumi14_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][14] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 観劇について 』
;=============================================
*hujieda_fumi15
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 観劇について 』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi15_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。　[r]
[sp]いつも僕が配達時に[r]
貴方様のお筝が上達していくのが楽しみです。[r]
[r]
[sp]今では女性の歌劇団もあるほどになりましたね。[r]
[sp]我が国でもきっと観劇も盛んになるでしょう。 [r]
[r]
[sp]僕も一度だけ歌劇を見にいたことがあります。[r]
[sp] 演劇と歌がとても素晴らしく鳥肌が立ちました。
[glink target=*hujieda_fumi15_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi15_2
[r]
[sp]かのモーツァルトもオペラの作曲もしたとか。[r]
[sp]僕も機会があればもう一度歌劇を[r]
見に行きたいと思っています[r]
[r]
[sp][名字]様も一度見に行かれてはどうでしょうか？[r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇
[glink target=*hujieda_fumi15_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi15_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi15_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][15] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『 猫について 』
;=============================================
*hujieda_fumi16
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 猫について 』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi16_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。　[r]
[sp]いつも貴方様のお筝は僕のひそかな癒しになっています。[r]
[r]
[sp]家では鳩を買っているので[r]
猫は寄せ付けないようにしているのですが、 [r]
せっかく買ったお魚を猫に食べられたと、[r]
姉が嘆いていました。
[glink target=*hujieda_fumi16_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi16_2
[r]
[sp]猫も生きるのに必死なのですが、[r]
その時は少し僕も猫を恨みました。[r]
[r]
[sp]猫はたくましいようです。[r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇
[glink target=*hujieda_fumi16_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi16_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi16_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][16] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『聞き上手と話し上手について』
;=============================================
*hujieda_fumi17
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『聞き上手と話し上手について』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi17_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。　[r]
[sp]今日も貴方様のお筝の音色を聴きました。[r]
貴方様の音が落ち込んだ時も僕の心を励ましてくれています。[r]
[r]
[sp]僕も社会に出て痛感しましたが、[r]
相づちを打ったり、しっかり返事をすることは [r]
大事だと思っています。
[glink target=*hujieda_fumi17_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi17_2
[r]
[sp]それに要領よく相手に伝える事も[r]
配達をするうえで必要です。[r]
[r]
[sp]相手を気遣い会話するように心がけています。[r]
[sp]心掛けるだけでも随分と人の関係が変わりました。[r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇
[glink target=*hujieda_fumi17_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi17_close" size=5 x=880 y=24 width=50 height=50]
[s]

*hujieda_fumi17_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][17] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『緑の石について』
;=============================================
*hujieda_fumi18
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『緑の石について』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi18_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。　[r]
[sp]貴方様にはお変わりないでしょうか？[r]
今日は何の曲を聴かれているのか楽しみです。[r]
[r]
[sp]手紙と一緒に袋が括り付けてあり、[r]
緑の石が入ってたことについては驚きました。
[glink target=*hujieda_fumi18_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi18_2
[sp]この緑の石が何か、[r]
友人の宝石商に調らべてもらったのですが、[r]
緑色のガラスだということでした。[r]
[r]
[sp]でも貴方から頂いた物ですし、[r]
きれいなので大事にとっておきます。[r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇
[glink target=*hujieda_fumi18_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi18_close" size=5 x=880 y=24 width=50 height=50]
[s]

*hujieda_fumi18_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][18] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『写真について』
;=============================================
*hujieda_fumi19
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『写真について』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。　[r]
[sp]いつも、貴方様の音色がいつも僕を励ましてくれます。[r]
[r]
[sp]三年前の新年の折に一度、家族写真を撮ってもらいました。[r]
[sp]今でも、家に大事にとってあります。[r]
[r]
[sp] 時を止めたように皆、変わりなく微笑んでいて、[r]
写真を見ると、この時の思い出が蘇るようです。[r]
[r]
[sp] 貴方は写真を見るとどんな想いになりますか？[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇[p]
*hujieda_fumi19_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][19] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『一日のはじまりについて』
;=============================================
*hujieda_fumi20
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『一日のはじまりについて』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi20_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。　[r]
[sp]貴方様にはお健やかにお過ごしでしょうか？[r]
いつも聴く貴方様のお箏の音色は[r]
澄んでいて芯の強い響きも持ち合わせて居ます[r]
[r]
[sp]そういえば、この前、一日の始まりに、[r]
家の小さな庭に植えた苗の花が、[r]
咲いているのを見つけました。
[glink target=*hujieda_fumi20_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi20_2
[r]
[sp]初めての家庭菜園ですが、[r]
順調に苗は育っているようで小さな喜びを感じています。[r]
[sp] 貴方様のささやかな喜びについても知りたいです。[r]
;↑指さない喜び→ささやかな喜び、で大丈夫でしょうか？ 変更させていただきました(◆jsYiJcqRkk
;原案：[sp] 貴方様の指さない喜びについても知りたいです。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇
[glink target=*hujieda_fumi20_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi20_close" size=5 x=880 y=24 width=50 height=50]
[s]

*hujieda_fumi20_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][20] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『お気に入りの曲について』
;=============================================
*hujieda_fumi21
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『お気に入りの曲について』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi21_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。　[r]
[sp]貴方様にはお元気にお過ごしでしょうか？[r]
毎日貴方様のお箏を聴き、僕はいつも心が熱くなる想いです。[r]
[r]
[sp]お気に入りの曲というのは書ききれないぐらいあります。[r]
[r]
[sp] 初めに音楽を創り出した方はどんな方なのでしょう。[r]
僕の頭の中でいろんな歌とメロディが浮かびます。
[glink target=*hujieda_fumi21_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi21_2
[r]
[sp] いつか貴方様へ贈る曲を作れたら[名字]様は[r]
喜んでくれるのでしょうか？[r]
[r]
[sp]貴方様はどんな曲が好きですか？[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇
[glink target=*hujieda_fumi21_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi21_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi21_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][21] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『道』
;=============================================
*hujieda_fumi22
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『道』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi22_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。　[r]
[sp]貴方様にはお変わりなくにお過ごしでしょうか？[r]
いつも聴く貴方様のお箏の音色は[r]
僕の心を慰めてくれます。[r]
[r]
[sp]郵便配達員になってから道を沢山覚えました。[r]
[sp]いろいろな道がありますね。[r]
[glink target=*hujieda_fumi22_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi22_2
[sp]たまに物騒な道も通らなければいけないこともあります。[r]
[sp]ご存じかも知れませんが郵便配達員は拳銃を持つことも[r]
あります。[r]
[sp]それだけ重要な仕事なのでしょう。[r]
[sp]僕もまだ拳銃を持つことは慣れません。[r]
[r]
[sp]でも色々な道に出会う事は経験になると思っています。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇
[glink target=*hujieda_fumi22_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi22_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi22_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][22] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事 ◆
;=============================================
;『 変化と永遠 』
;=============================================
*hujieda_fumi23
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『 変化と永遠 』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi23_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。　[r]
[sp]貴方様にはお元気にお過ごしでしょうか？[r]
お箏の音を聴くと僕は気持ちを新たに僕も[r]
頑張ろうという気にさせられます。[r]
[r]
[sp]永遠というのは、人の命題なのでしょう。[r]
[sp]変化というのはいつも起きています。[r]
[r]
[sp]変わらないように見えても歳をとったり、[r]
同じ時間は決して戻りません。
[glink target=*hujieda_fumi23_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi23_2
[sp] 時間は哲学、芸術、心理学、宗教、自然科学なので[r]
議論され、定義されていますが、[r]
どれも正しいのかもしれませんし、[r]
どれも違っているかもしれません。[r]
[r]
[sp] もし永遠を創り出せる人が居たらそれは神様かもしれませんね。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇
[glink target=*hujieda_fumi23_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi23_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi23_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][23] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;=============================================
;◆季節の便り◆
;=============================================
;『 巡る季節』 9月ごろの手紙　好感度が一定以上
;=============================================
*hujieda_fumi24
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『巡る季節』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
[名字]　[名前]様へ[l][r]
[r]
[sp]秋風が心地よい時節となりました。
[r]
[sp]郵便配達ではいろいろな道を通り、折々風景は違った姿を[r]
みせ、季節はうつろいます。[r]
[r]
[sp]楓、紅葉が色づき始め今年はどのような、染まり方をするの[r]
でしょうか、とても楽しみです。[r]
[sp]季節の変わり目は体調を崩しやすいといわれいます。[r]
貴方様もお体には気をつけてください。[r]
[r]　　　　　　　　　　　　　　　　　　　　　　　
[sp]　　　　　　　　　　　　　　　　　　　　 藤枝　肇[p]
*hujieda_fumi24_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][24] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]

;=============================================
;◆季節の便り◆
;=============================================
;『 実りの秋』10月頃の手紙　好感度が一定以上
;=============================================
*hujieda_fumi25
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『実りの秋』[p]
[endif]
[手紙藤枝 fumi_number=]
[名字]　[名前]様へ[l][r]
[r]
[sp]空は深く澄み渡り紅葉の美しい季節となりました。[r]
[r]
[sp]今年も栗や柿といった果物が豊作のようですね。[r]
八百屋でいろいろな果物を見かけます。[r]
[r]
[sp]僕の家では庭に薩摩芋を植えていたのですが、家庭菜園[r]
にしては、沢山とれました。[r]
[r]
[sp]貴方様はどんな果物が好きですか ？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　[r]
[sp]　　　　　　　　　　　　　　　　　　　　 藤枝　肇[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][25] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;敬具は元はなかった為コメントアウトで追加。必要の際はコメントアウトを外してください

;@jump storage="event.ks" target=*event_owari

;=============================================
;◆時子さんの手紙◆
;=============================================
*fumi_tokiko_hujieda
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
;↓仮タイトルです
『星も凍るような夜』[p]
[endif]
[手紙時子]
*fumi_tokiko_hujieda_1
[cm]
[名字]　[名前]様へ [l][r]
[r]
[sp]　星も凍るような寒い夜[r]
[名前]さんは穏やかに過ごされているでしょうか？[r]
私は変わりなく過ごしております。[r]
[r]
[sp]さて先日お調べするといった藤枝様ですが、[r]
独逸への留学についてお知らせします。[r]
独逸留学は藤枝様ともう[ruby text=ふた]二[ruby text=り]人が決定していたのですが[r]
[ruby text=さん]三枠が諸事情で[ruby text=いち]一枠となり独逸へ行けるのは[ruby text=ひと]一[ruby text=り]人となった[r]
そうです。
[glink target=*fumi_tokiko_hujieda_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*fumi_tokiko_hujieda_2
;はみだし修正
[sp][r][r][r]
[sp][ruby text=ひと]一[ruby text=り]人は女性なので、将来この国の音楽の指導者となるのは[r]
難しいだろうという事で藤枝様ともう[ruby text=ひと]一[ruby text=り]人の候補の原様という方の[r]
どちらかになるという結論になり、[r]
二月に[ruby text=ふた]二[ruby text=り]人の演奏を関係者の方が聴いて留学する[ruby text=ひと]一[ruby text=り]人を決定する[r]
のだとか。
[glink target=*fumi_tokiko_hujieda_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*fumi_tokiko_hujieda_3 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*fumi_tokiko_hujieda_3
[sp]藤枝様と原様の実力は拮抗していて[r]
どちらが留学してもおかしくないと言われてますが[r]
ただ、やはり毎日はピアノの練習できない藤枝様の方が[r]
当日不利ではないかとの噂ですわ。[r]
[r]
[sp]私は[名前]さんの事を応援しています。[r]
どのような結果になってもいつまでもお友達です[r]
[r]
[sp][名前]さんが今年も幸福に満ちた、一年となりますよう、[r]
心から祈っています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　三宮　時子
[glink target=*fumi_tokiko_hujieda_2 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*fumi_tokiko_hujieda_close" size=5 x=880 y=24 width=50 height=50]
[s]
*fumi_tokiko_hujieda_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙読了]
[resetfont]

;=============================================
;◆話題への返事◆
;=============================================
;『さつきについて』
;=============================================
*fumi_satuki
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『さつきについて』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。　[r]
[sp]貴方様にはお元気にお過ごしでしょうか？[r]
今日も貴方様のお箏を聴き、僕は晴れやかな気分になりました。[r]
[r]
[sp]さつきというと母の実家の別荘を思い出します。[r]
[r]五月の長い連休に田舎にある別荘にでかけて、[r]
石垣に根をおろした一面に咲くさつきをみました。[r]
[r]
[sp]貴方様も花はお好きですか？[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][27] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;◆話題への返事◆
;=============================================
;『新茶について』
;=============================================
*fumi_sintya
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『新茶について』[p]
;#
[endif]
[手紙藤枝 fumi_number=]
*fumi_sintya_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]お手紙拝見しました。　[r]
[sp]貴方様にはお変わりなくにお過ごしでしょうか？[r]
いつも聴く貴方様のお箏の音色は[r]
僕の心を慰めてくれます。[r]
[r]
[sp]お茶は食事を食べるのに最適だと思っています。[r]
[sp]適度な苦みと甘みと香りが良いですよね。
[glink target=*fumi_sintya_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*fumi_sintya_2
[sp]お茶も昔は高価なものだったと聞きました。[r]
お茶一般化したのは人々が愛好し広まったからでしょう。[r]
良いものはやはり広まっていくものだと思っています。[r]
[r]
[sp]貴方様もお茶を好まれるのでしょうか？[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 藤枝　肇
[glink target=*fumi_sintya_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*fumi_sintya_close" size=5 x=880 y=24 width=50 height=50]
[s]

[endif]
*fumi_sintya_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][26] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================
;『最後の手紙』
;=============================================
*hujieda_fumi_last
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『最後の手紙』[p]
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi_last_1
[cm]
箏の奏者様へ[l][r]
[r]
[sp]貴方様の箏の音色に惹かれて手紙を書いた者です。[r]
[r]
[sp]このところ、箏の音が遠のいたように感じられますが、[r]
いかがお過ごしでしょうか。[r]
[r]
[sp]今後は貴方様へお手紙を書くことが難しくなって[r]
しまいましたので、そのことをお知らせいたしたく、[r]
筆を取りました。
[glink target=*hujieda_fumi_last_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi_last_2
[sp][r][r]
[sp]これからも陰ながら応援しています。[r]
[r]時々、箏の練習をして下さると嬉しいです。[r]
[sp]それではお元気にお過ごしください。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　Ｈ
[glink target=*hujieda_fumi_last_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi_last_close" size=5 x=880 y=24 width=50 height=50]
[s]

[endif]
*hujieda_fumi_last_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][28] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]

;=============================================
;飛鳥さん鳩の届けた手紙その一が来た翌週？→5月4週
;=============================================
*fumi_asuka_hujieda_1
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[iscript]
$(".1_fore").empty();
[endscript]
[テキスト全画面白文字]
;↓仮タイトルです
『お箏は誰かの心を動かす扉』[p]
[endif]
[手紙飛鳥]
*fumi_asuka_hujieda_1_1
[cm]
[名前]さんへ[l][r]
[r]
青葉若葉が目に美しいころこの頃。[r]
[名前]さんはお元気かしら？[r]
[r]
最近、[名前]さんは、お箏の練習を熱心され、[r]
先生からとても見込みがあるとお聞きしました。[r]
私も[名前]さんと同じ先生に師事しましたのよ。[r]
[r]
提案と申しますか、助言なのですが、[r]
月に数回お箏をなさってはいかがかしら？ [r]
定期的な練習を続けると上達しやすいの。[r]
[glink target=*fumi_asuka_hujieda_1_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*fumi_asuka_hujieda_1_2
芸術、特に音楽は人の心を慰めたり、励ましたり出来ます。[r]
[名前]さんも知らず知らずのうちに、[r]
誰かの心を動かすかもしれなくってよ？[r]
[r]
でもお稽古を熱心にしすぎて、[r]
殿方からの手紙をないがしろにしてはいけませんわよ。[r]
ご縁というのはどこからあるか分かりませんが、[r]
どれも大切になさってくださいね。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子
[glink target=*fumi_asuka_hujieda_1_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*fumi_asuka_hujieda_1_close" size=5 x=880 y=24 width=50 height=50]
[s]

*fumi_asuka_hujieda_1_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙読了]

;=============================================
;１１月４週文矢から
;この手紙を読んで箏の練習をすると好感度が２ぐらい上がる設定メッセージを表示する）
;=============================================
*fumi_fumiya_hujieda_11_4
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
;↓仮タイトルです
『答えを出してごらん』[p]
[endif]
[手紙文矢]
*fumi_fumiya_hujieda_11_4_1
[cm]
[名前]へ[l][r]
[r]
[sp]そちらは初雪降る頃でしょうか？[r]
[sp][名前]は元気に過ごしているでしょうか？[r]
[sp][名前]とミルクホールに行ったのは、[r]
先月のことなのになぜか、[r]
僕も遠い昔のように感じられます。[r]
[r]
[sp]それはきっと[名前]があの頃と比べて、[r]
大切な人が出来て、心が成長しているからかもしれません。[r]
[glink target=*fumi_fumiya_hujieda_11_4_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*fumi_fumiya_hujieda_11_4_2
[sp]磯野からミルクホールで出会った[r]
藤枝君と[名前]の様子を手紙で尋ねられました。[r]
[sp]僕は[名前]が彼に憧れていると感じましたが、[r]
憧れ以上の気持ちだったのですか？[r]
[r]
[sp]心配で詳細を聞きました。
[sp]僕も[名前]の事が気掛かりだけど、[r]
もしかしたら[名前]と彼は恋に恋しているだけの可能性もある。[r]
[r]
[sp]その恋は、僕からしてみたら幼い恋のように見てしまいました。[r]
[sp]それに、[名前]と彼の恋は、夢を現実にするくらい難しい恋です。
[r]
[sp][名字]家の次期当主として、[名前]の兄としても勧められません。[r]
[r]
[sp]だけど[名前]は藤枝君の身分を知っても失望しなかった、[r]
そしてお手紙の縁も断って彼に会いたいと願った。[r]
[glink target=*fumi_fumiya_hujieda_11_4_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*fumi_fumiya_hujieda_11_4_3 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*fumi_fumiya_hujieda_11_4_3
[sp][名前]の恋心は育っていると思うんだ。[r]
[sp]そして[名前]も恋の経験により大人になっていくのでしょう。[r]
[r]
[sp]彼も[名前]のお箏の音色に惹かれたとか。[r]
[sp]それならば、お箏の練習をし続ければ[r]
答えが見つかるかもしれない。[r]
[sp]今は不安でもきっと答えは見つかると思います。[r]
[sp]そして出会いは無数にありますが、[r]
偶然は自分にとっても必然に、運命になるかもしれません。[r]
[r]
[sp]いまは辛い時ですが[名前]も健やかに過ごして下さい。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　[名字]　文矢
[glink target=*fumi_fumiya_hujieda_11_4_2 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*fumi_fumiya_hujieda_11_4_close" size=5 x=880 y=24 width=50 height=50]
[s]

*fumi_fumiya_hujieda_11_4_close
[cm]
[clearfix]
;↓手紙を読んだ後のイベント(主人公セリフ)用変数
[eval exp="f.fumi_fumiya_11_4 = 1"]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙読了]

;=============================================
; １２月の１週時子さんからの手紙
;=============================================
*fumi_tokiko_hujieda_12_1
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
;↓仮タイトルです
『恋は、泡沫の夢、されど』[p]
[endif]
[手紙時子]
*fumi_tokiko_hujieda_12_1_1
[cm]
[名字]　[名前]様へ [l][r]

[sp]今年も年の瀬となり、月日が早いと感じる頃。[r]
[sp][名前]さんはお健やかにお過ごしでしょうか？[r]
[sp]十月に藤枝家の御子息について尋ねられていたのですが、[r]
気になる事を耳にいたしましたわ。[r]
[r]
[sp][名前]さんは今、どう過ごされていますか？[r]
いつも立ち寄るお店に聞いたのですが、[r]
めったに来店されることが無くなり、[r]
来られることがあっても 、物々しいご様子で[r]
見張るように女中が控え、[r]
[名前]さんは元気がないとお聞きしました。[r]
[glink target=*fumi_tokiko_hujieda_12_1_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*fumi_tokiko_hujieda_12_1_2
彼は独逸に留学する話が決定され、その事を知り、[r]
[sp][名前]さんは落ち込まれていらっしゃるの？[r]
[sp]憧れの方が遠くに行ってしまうということは[r]
本当に寂しいことです。[r]
[r]
[sp]けれど、どの様な結末が訪れても[r]
私は[名前]さんにとって悪いことではないと思います。[r]
[sp]憧れは憧れのまま、一瞬の夢をもたらしてくださった[r]
と藤枝様のことを想える時が来るかもしれません。[r]
[sp]恋について、私もそう割り切ればと、よく思いますわ。[r]
[r]
[sp]近く、[名字]家を訪ねます。[r]
[sp]察してはいますが[名前]さんのお気持ちを確かめたいのですわ。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　三宮　時子
[glink target=*fumi_tokiko_hujieda_12_1_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*fumi_tokiko_hujieda_12_1_close" size=5 x=880 y=24 width=50 height=50]
[s]

*fumi_tokiko_hujieda_12_1_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙読了]

;=============================================
; 二月四週以降藤枝からの手紙
;=============================================
*hujieda_fumi_koto
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
;↓仮タイトルです
『心の音色』[p]
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi_koto_1
[cm]
[名字]　[名前]様へ[l][r]
[r]
[sp]日差しが暖かく感じられるようになりましたね。[r]
[r]
[sp]お手紙を交わせなくなった時、[r]
夢について、家族の事、そして貴方の事を[r]
ずっと悩み考えていました。[r]
[r]
[sp]何度もお箏の練習をして下さってありがとうございます。[r]
貴方のお箏の音は、僕の気持ちに答えを出してくれました。[r]
はっきりと、これは恋だと。この胸の甘い痛みは恋なのだと。[r]
[glink target=*hujieda_fumi_koto_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi_koto_2
[sp]貴方のお手紙で励まされ、迷いはなくなりました。[r]
[r]
[sp]貴方のお父様は手紙だけとはいえ許してくださいました。[r]
[sp]どんな結末になっても僕は貴方を諦めません。[r]
[r]
[sp]貴方を愛しています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　藤枝　肇
[glink target=*hujieda_fumi_koto_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi_koto_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi_koto_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][29] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]



;=============================================
;◆話題への返事 ◆
;=============================================
;『 怪談 』
;=============================================
*hujieda_fumi_kaidan
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『　怪談　』[p]
[endif]
[手紙藤枝 fumi_number=]
*hujieda_fumi_kaidan_1
[cm]
[名字]　[名前]様へ[l][r]
[sp]お手紙を拝見しました。[r]
[sp]今日も僕は貴方の[ruby text=こと]箏を聴きました。[r]
どんどん上達されるのが我が事のように嬉しいです。[r]
[r]
;[r]はしていませんがスマホで見た時の改行位置です↓
[sp]怖い話は僕も苦手です。　怪談はとても残酷な話が
多いですね。[r]
[r]
僕の家にも古く伝わる話がいくつかありました。[r]
きっと昔の人は迷信深かったのではないかと思います。[r]
[glink target=*hujieda_fumi_kaidan_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi_kaidan_2
[sp]何が真実だったかは僕には知るすべはありません。[r]
ただ悲しみや苦しみ恐怖は身近にあります。[r]
[sp][r]
そういえば言霊という言葉に宿る霊力があるとも[r]
信じられていることをご存知ですか？[r]
[r]
;[r]はしていませんがスマホで見た時の改行位置です↓
[sp]……こうして文字を綴るのにも霊力は宿るのかも
しれませんね。[r]
ならばこう綴りましょう。
[glink target=*hujieda_fumi_kaidan_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*hujieda_fumi_kaidan_3 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*hujieda_fumi_kaidan_3
[sp]貴方様が怖い夜を過ごすことなく、[r]
貴方様に、良い眠りと夢が訪れますように。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　藤枝　肇
[glink target=*hujieda_fumi_kaidan_2 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi_kaidan_close" size=5 x=880 y=24 width=50 height=50]
[s]

*hujieda_fumi_kaidan_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][30] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
;=============================================


;===============================================
;文矢から 
;==============================================
*fumiya_fumi_future
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『未来を信じて』[p]
[endif]
[手紙文矢]
;=============================================
*fumi_fumiya_future_1
[名前]へ[l][r]
[r]
[sp]新しく年が始まり、[r]
慌ただしい日々も落ち着きつつあるこの頃。[r]
[sp][名前]は穏やかに過ごしているでしょうか？[r]
[sp]磯野から友人に励まされ、健やかに過ごしているとの[r]
便りが来て僕も少し安心しました。
;[p] でしたのでここでページ変更
[glink target=*fumi_fumiya_future_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*fumi_fumiya_future_2
;[sp]がないと[r]が効かないため追加。改行しない場合は[sp][r]を消してください。
[sp][r]
[sp][名前]は藤枝君の事を今どう思っていますか？[r]
[sp]僕は[名前] が自分の答えを出し歩み始めたと信じています。[r]
[r]
[sp]苦しみや悲しみを乗り越えて、[r]
相手や周囲の幸せを心から願い努力したときは人の心を打ち、[r]
また周囲に幸せを運ぶと僕は信じています。[r]
[r]
[sp]周囲の人を信頼して努力を続けて下さい。[r]
[sp]きっと [名前]は未来を切り開けるでしょう。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　[名字]　文矢
[glink target=*fumi_fumiya_future_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*fumi_fumiya_future_close" size=5 x=880 y=24 width=50 height=50]
[s]
*fumi_fumiya_future_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙読了]
;=============================================
;テストがおわったら削除↓
[if exp="f.okeiko_gamen != true"]
[イベントシーン終了]
@jump storage="test_hujieda.ks"
[endif]




;=============================================
;２月１週　時子さんから
;=============================================
*hujieda_fumi_koinegau
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『[ruby text=こいねが]希　う』[p]
[endif]
[手紙時子]
;=============================================
*hujieda_fumi_koinegau_1
[名字]　[名前]様へ [l][r]
[sp]雪解けが遠く、暖かい春の陽を待ちこがれる日々。[r]
[sp][名前]さんはお元気に過ごされていますか？[r]
[sp]家人の中には風邪をこじらせるものもおりますので、[r]
お体には気を付けてくださいませ。[r]
[r]
[sp][名前]さんが私を信頼して届けたいと思った手紙の事です。[r]
[sp]私、藤枝様に直接[名前]さんのお気持ちを伝えしようと、[r]
お兄様に頼み、お兄様とミルクホールに参りましたわ。[r]
[r]
[sp]幸いにもお兄様の機転で藤枝様にお手紙を渡せましたし、[r]
彼とも少しお話すことが出来ました。[r]
[glink target=*hujieda_fumi_koinegau_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi_koinegau_2
[sp]お辛いとは思いますが正直に申し上げます。[r]
藤枝様はやはり音には出ないように集中されていましたが、[r]
疲れている御様子でしたわ。[r]
[sp]私もこのまま倒れてしまうと心配になったほどです。[r]
[r]
[sp]ねえ、けれど、貴方の名前とお手紙を差し出すと、[r]
満面の笑みを浮かべてこうおっしゃられました。[r]
[r]
”僕はまだ大丈夫です。今は未来の為に必要な努力なのだから。[r]
彼女に伝えて下さい貴方に悲しい想いをさせたけれど、[r]
たとえ貴方が誰かと結婚されてもどんなに歳を重ねてもずっと[r]
貴方の幸せを誰よりも願い、祈っていますと”[r]
[sp]私、彼の言葉に感動して目頭が熱くなってしまいましたわ。[r]
[sp]心から[名前]さんと藤枝様の恋が叶うように祈っています。[r]
[r]
[glink target=*hujieda_fumi_koinegau_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*hujieda_fumi_koinegau_3 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*hujieda_fumi_koinegau_3
追伸[r]
[r]
[sp][ruby text=に]二月[ruby text=さん]三週目の日曜日に、[r]
お兄様がとある舞台に[名前]さん連れて行ってはどうかと仰るの。[r]
私もずっと謹慎されてお辛い想いをされているので、[r]
そろそろ家令も外出されることを許可されるのではないかしら。[r]
[r]
[sp] ご一緒にお出掛けましょう。　　　これは約束ですわ。[r]
[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　三宮　時子
[glink target=*hujieda_fumi_koinegau_2 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*hujieda_fumi_koinegau_close" size=5 x=880 y=24 width=50 height=50]
[s]
*hujieda_fumi_koinegau_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  ;[eval exp="f.midoku_list_hairetsu[4][31] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙読了]
;=============================================
;テストがおわったら削除↓
[if exp="f.okeiko_gamen != true"]
[イベントシーン終了]
@jump storage="test_hujieda.ks"
[endif]


;=============================================
;藤枝ルート１２月１週  飛鳥さんからの手紙
;=============================================
*hujieda_fumi_asuka_12_1
[clearfix]
[clearstack]
[if exp="f.okeiko_gamen != true"]
[テキスト全画面白文字]
『幸運を』[p]
[endif]
[手紙飛鳥]
;=============================================
*asuka_fumi121_1
[名前]さんへ[l][r]
[r]
寒さが和らいだ小春日和。[r]
[名前]さんは穏やかに過ごされているかしら？[r]
[r]
私、先日[名前]さんを歌劇にお誘いしようとしたのですが、[r]
[名前]さんは謹慎中だと耳にしましたの。[r]
[r]
旦那様からは、私が口添えすることを禁じられましたわ。[r]
[名字]家の決定事項に飛鳥家が口を出すことは[r]
あってはならないとおっしゃいましたの。[p]
;↑◆B4nFWraU42さん、手紙のテスト追加作業をありがとうございます。最新版の文章に更新します。◆jsYiJcqRkk
[glink target=*asuka_fumi121_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*asuka_fumi121_2
私も[名前]さん伯母としての立場もありますが、[r]
難しいのは苦手ですわ。けれど、一言書くとすれば、[r]
皆、[名前]さんを慈しんでいる事を忘れないで差し上げて。[r]
[r]
辻占いというのを[名前]さんはご存じかしら？[r]
私、[名前]さんのことを考えながら夕方の橋を通りましたのよ。[r]
すると「出世して憧れの令嬢との縁談が叶った！」[r]
と偶然通りかかった方が喜んでいらっしゃったの。[r]
[r]
[名前]さんも御両親のなれ初めをご存じかしら？[r]
お二人ともとてもとても努力されたそうなのよ。[r]
今は駄目でも努力すれば未来は明るいはずでしてよ。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子
[glink target=*asuka_fumi121_1 text="←" size=10 x=110 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*asuka_fumi121_close" size=5 x=880 y=24 width=50 height=50]
[s]
*asuka_fumi121_close
[cm]
[clearfix]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  ;[eval exp="f.midoku_list_hairetsu[4][32] = 0"]
   [freeimage layer = 29]
   @jump storage=&f.viewing_storage target=&f.viewing_target
   [s]
[endif]
[手紙読了]
;=============================================





;=============================================
[イベントシーン終了]
@jump storage="test_hujieda.ks"
[s]
;=============================================
;◆イベント中の手紙
;『鳩の届けた手紙 一』←仮タイトルです。
;『鳩の届けた手紙 二』←仮タイトルです。
;『鳩の届けた手紙 三』←仮タイトルです。
;『鳩の届けた手紙 四』←仮タイトルです。
;『鳩の届けた手紙 五』←仮タイトルです。
;『鳩の届けた手紙 六』←仮タイトルです。

;◆話題リスト◆
;『趣味について』
;『仕事について』
;『友人について 』
;『家族について 』
;『将来について 』
;『 読書について 』
;『 スポーツについて 』
;『 食事について 』
;『 観劇について 』
;『 猫について 』
;『聞き上手と話し上手について』
;『緑の石について』
;『写真について』
;『一日のはじまりについて』
;『お気に入りの曲について』
;『道』
;『 変化と永遠 』
;『　怪談　』
;◆季節の便り◆
;『巡る季節』 9月ごろの手紙　好感度が一定以上
;季節の便り『 実りの秋』10月頃の手紙　好感度が一定以上

;◆時子リスト◆
;『恋は、泡沫の夢、されど』
;『(こいねが)希　う』
;◆飛鳥リスト◆
;『幸運を』
;=============================================
