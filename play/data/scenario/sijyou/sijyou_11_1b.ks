;6.5もあり
;¥¥¥¥¥¥¥¥イベント6後半 波ケ浦～ネリネの庭まで 11月1週〜日付調整11月3週？¥¥¥¥¥¥¥
;△ ○壺の柄と暗号を照らし合わせ、妹の場所を発見する
;背景：黒っぽい和紙風。暗転でもいいかも？
[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=100]

[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

#
外に出て車夫をみつけると華衣がいると思われる『波ケ浦』へと向かった。[p]

;場面転換
;[波ヶ浦]
[chara_mod name="bg" storage="bg/test_sijyou_namigauara.jpg" time=100]
;主人公通常でもいいかも
[主人公真剣]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「華衣！ ここに居たんだな」[p]
[whosay name="華織" color="olivedrab"]
「大事な話があるんだ、きいてほしい」[p]
[whosay name="華衣" color=%mp.color]
「うるさい、」[p]
[主人公憂い]
[wait time=10]
[whosay name="華衣" color=%mp.color]
「勉学も運動も、笑って何でも出来るアンタには、
一生この気持ちがわからない」[p]
[whosay name="華衣" color=%mp.color]
「あの人は何の才能もなかった私に勇気と希望を与えてくれた、」[p]
;△ここで華衣の半生を語っても？好みで追加
;テーマに反する言葉をいう…セリフ難しい
;幸せは信じれば巡ってくる それは案外気づかない近い場所にあるかもしれません
[whosay name="華衣" color=%mp.color]
「あの日の『幸せ』は、もう……どこにもない」[p]
[whosay name="華衣" color=%mp.color]
「遠いところにいって何処にもない」[p]
[whosay name="華衣" color=%mp.color]
「それなのに『幸せ』を見せられて、
押し付けられるくらいなら」[p]
[whosay name="華織" color="olivedrab"]
「華衣、僕がこんなこというのは、おこがましいけれど」[p]
[whosay name="華織" color="olivedrab"]
「もっと周りをよくみて考えてほしい」[p]
;○プレイヤーのイライラを解消
[主人公通常]
[wait time=10]
[whosay name="華織" color="olivedrab"]
(幸せや大事なものは気づかないくらいに近いところにあるんだ)[p]
[whosay name="華織" color="olivedrab"]
「これ以上、なにを見せられる？」[p]
[whosay name="華衣" color=%mp.color]
「[名前]って言ったっけ」[p]
[whosay name="華衣" color=%mp.color]
「アンタだって大事な人がいなくなったら辛いでしょ？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さまが、居なくなったら？ )[p]
;○主人公が説得して窮地を逃れる...もし華織がいなくなったらと考える
[主人公困り]
[wait time=10]
[主人公目閉じ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「つらいです、」[p]
[主人公伏し目パチ1回]
[wait time=10]
;×筆者に女性的価値観が足りず思い浮かばずこんな形に
[whosay name=&sf.girl_namae color="#cf5a7f"]
「急に居なくなって、お手紙をもらえなくなったら」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「心配で心が張り裂けそうでした」[p]
[whosay name="華織" color="olivedrab"]
「[名前]……」[p]
;○華織 主人公を愛しく思う
;○落ち着いたところで手紙をみせる
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「でも華衣さんには、その人からのが手紙が残ってます」[p]
[主人公憂い]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「届かなかっただけで、はっきりとここに残っているんです」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華衣さんの『大事な人の手紙』を見つけてきました」[p]
;手渡す
[whosay name="華衣" color=%mp.color]
「うそ」[p]
[whosay name="華織" color="olivedrab"]
「行ってきたんだ。嘘かどうかは読めばわかる」[p]
[whosay name="華衣" color=%mp.color]
「な、なんで……そんなことまで……」[p]
;どうしてかは烏滸がましいから話さない
;慈愛の表情　思いつかず仮
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華衣さん、お手紙をどうぞ。想いが綴られてます」[p]
;裏テーマ華綴り
;○攻略相手を応援…ではない方法の手紙の掲示
;◎「また会う日を楽しみに」「幸せな思い出」「忍耐」※ネリネ
;×修正点君→華衣 僕→私
;○婚約者の最期の手紙
#
;ナレーター
華衣は、[名前]から折紙で挟まれた手紙を受け取ると、破れないようにそっと開いた[p]

[手紙華衣婚約者 fumi_number=]
華衣へ[r]
「もともと私の身体は長くなかったようです。だから華織さんを責めないであげてください。[r]
私の無茶なお願いをきいてくれたのだのだから。[r]
最後に華衣にみてほしいものがあります。[r]
もし私の頼みをお兄さんが忘れていなければきっと華衣の家の庭に咲いている思います。[r]
どうか悲しまないでほしい　私は華衣に　幸せな思い出が訪れる日を楽しみにしている。」[p]
[手紙華衣婚約者読了 fumi_number=]
[whosay name="華衣" color=%mp.color]
あの庭……！[p]
;華衣、走って家に帰る！四条家は運動力がある？
[whosay name="華織" color="olivedrab"]
華衣！[p]
;○お互い見合って 比翼の2人の感じ
[whosay name="華織" color="olivedrab"]
「[名前]、」[p]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「一緒に行きましょう」[p]
;○主人公追う

;場面転換 ネリネの庭がどういったものか地の文が必要。絵によって変更
# 
;ナレーター
華衣を追った[名前]達は、以前、華織に尋ねた温室へとたどり着く。温室の中は、ガラスとネリネに囲われた小さな箱庭であった。
;[婚約者の花園] ネリネ？の庭…背景がないなら私が描いてボカすか青空か夕空の背景…もう少し上手く描きたいところ
[chara_mod name="bg" storage="bg/test_sijyou_hanazono.jpg" time=100]

[whosay name="華衣" color=%mp.color]
「ここって兄さんが言ってた場所」[p]
;○主人公が花言葉を教えてくれる
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華衣さん、ネリネの花言葉を知っていますか？」[p]
[whosay name="華衣" color=%mp.color]
「?」[p]
[主人公困りほほえみ]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
『また会う日を楽しみに』『幸せな思い出』[p]
;×[主人公泣き]あえて「忍耐」言わない方がいいかな
[whosay name="華衣" color=%mp.color]
！[p]
[主人公通常]
[wait time=10]
[whosay name="華衣" color=%mp.color]
「……こんな近くに探し物はあったのですね」[p]
#
;ナレーター
;ネリネの庭で1人、咽び泣く[r]
;世界でたった1つの想いを綴った手紙に[p]
#手紙
『私が、消えてしまう前に、咲いて誇る華を綴ります』[p]

;○妹の回想 ところどころ三人目視点
[主人公退場]
;○概要案 好きな花について婚約者に話しをしたら、(妹の婚約者は)買い付けに出て、出先で事故(公家の出で、もともと身体が弱かった？)にあってしまう、
;○回想シーン
;○婚約者さんが四条に妹の好きな花は何？ときいてくる。
;[四条家玄関ホール]
[whosay name="華織" color="olivedrab"]
『急にどうしたのですか？ 華衣の好きな花なんてきいて』[p]
[whosay name="華織" color="olivedrab"]
『あぁ、君は華衣の婚約者ですか。それは失礼しました』[p]
[whosay name="華織" color="olivedrab"]
『ふふ、記念日なのかな』[p]
[whosay name="華織" color="olivedrab"]
『薔薇も好きなようだけど、ネリネも好きなようだよ』[p]
[whosay name="華織" color="olivedrab"]
『……君、体調の悪そうだけど大丈夫ですか？』[p]
[whosay name="華織" color="olivedrab"]
『待って下さい！ そんな顔色で……せめて明日』[p]
;[暗点]
#
『華衣との婚約解消されたら嫌だった。[r]
急がないといけない、この想いを綴るには種もほしい』[p]
;[SE馬の鳴き声][曇り空]倒れて空をみている
;寒さもあって倒れたところに馬車的なものに引かれる事故。
;ネリネの写真かイメージ,だんだん忘れられて枯れていくといいですね（無理
#
;△病院に運ばれて妹が来たときには時すでに遅し！
[whosay name="華衣" color=%mp.color]
『もう少ししたら傷も治るよね。そうしたら、ずっと』[p]
…………[wait time=1500][er]
[whosay name="華織" color="olivedrab"]
『わかった、だから華衣がくるまでもう少し持ちこたえてくれ！　』[p]
…………[wait time=1500][er]
#華衣の婚約者の母
『……のものは持って行きますね 今までお世話になりました』[p]
#
…………[wait time=1500][er]
;○もともとお情けの婚約者候補(家の付き合いで候補にいれただけ)だったので最期の話もできず、祖父との回想シーンなどで反対される
#四条家祖父
『あんな片田舎に行かせるものか！　』[p]
#四条家祖父
『もともとは、お情けの婚約者候補だ』[p]
#
…………[wait time=1500][er]

[whosay name="華衣" color=%mp.color]
「アンタが言わなければ、こんなことには！！　」[p]
;結果、妹に恨まれてしまったんだろうなぁとプレイヤーが想像する形

;回想シーンおわり
[主人公ポーズ通常]
[wait time=10]
[主人公憂い]
[wait time=10]
[whosay name="華衣" color=%mp.color]
「こんな、手紙、どうして早く来てくれなかった？」[p]
[whosay name="華織" color="olivedrab"]
「……」
[whosay name="華織" color="olivedrab"]
(今は平和だけど、この時代、何が起こるかわからない)[p]
[whosay name="華織" color="olivedrab"]
(こんなこと考えたくないけれど、いつか別れがきたときに)[p]
[whosay name="華織" color="olivedrab"]
(僕は[名前]の為に何を残してあげれられるんだろう)[p]
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
華織さま[p]
#
華織は[名前]の手を強く握った。[r]
[名前]も華織の表情を見て、強く握り返す。[p]
;¥¥¥¥¥¥¥¥イベント6おわり¥¥¥¥¥¥¥¥
;@jump storage="event.ks" target=*event_owari

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
