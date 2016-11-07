[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;[chara_mod name="bg" storage="bg/bg_fumibako.jpg" time=1000]
*start
;ボタンはじまり上位置　半自動行上げ機能
[eval exp="tf.btn_y=100"]
[cm]
*test_page1
;if
[glink target="*9_3 " text="9月『久しぶりに会って』" graphic="select_waku_x500.png" size=20 width="250" x=100 y="&tf.btn_y" color=white]
[eval exp="tf.btn_y=tf.btn_y+50"]
;endif
[if exp="f.sijyou_bad!=true"]
;どちらかしか表示しない場合
[glink target="*10_3 " text="10月『文矢からの手助け』" graphic="select_waku_x500.png" size=20 width="250" x=100 y=&tf.btn_y color=white]
[eval exp="tf.btn_y=tf.btn_y+50"]
[else]
[glink target="*10_3_bad " text="10月『ダメだったよ』" graphic="select_waku_x500.png" size=20 width="250" x=100 y=&tf.btn_y color=white]
[eval exp="tf.btn_y=tf.btn_y+50"]
[endif]
;if
[glink target="*11_b " text="11月『華衣婚約者の手紙』" graphic="select_waku_x500.png" size=20 width="250" x=100 y=&tf.btn_y color=white]
[eval exp="tf.btn_y=tf.btn_y+50"]
;endif
;if
[glink target="*1_1 " text="1月『お正月』" graphic="select_waku_x500.png" size=20 width="250" x=100 y=&tf.btn_y color=white]
[eval exp="tf.btn_y=tf.btn_y+50"]
;endif

*common
[glink target="*end_p " text="閉じる" graphic="select_waku_x500.png" size=20 width="250" x=100 y=&500 color=white]
[s]

*9_3
[手紙四条 fumi_number=51]
[r][r][r]
[名前]へ[r]
[r]
久しぶりに会って見違えたこと驚いたよ。[r]
[名前]は久しぶりに会ってどう思ったかな？[r]
あの花をみる度に[名前]のことを思い出すよ。[r]
[名前]のことをもっと知りたいです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　四条 華織[p]

[手紙四条読了 fumi_number=51]
@jump target=*start

*10_3
[手紙文矢 fumi_number=]
[名前]へ[r]
[r]
華織は、いつも笑顔で、自身のことは語りたがりません。[r]
だから、『人に対して遊んでる』と思われがちです。[r]
ですが、とても人に親切なヤツです。[r]
[r]
;こんな口調でもいいでしょうか？
;スクリプト担：華族でも男性なら色々幅広い付き合いもあろうと思いますので、くだけた表現をしてもおかしくないと思います。仲の良さがあらわれて良いと思います
迷子の子供がいたら親元に届けてたり、書生の勉強の手伝いを[r]
したりと面倒見もいいです。[r]
それに僕の奥さんの恋愛相談にのってくれました。[r]
[p]
華織は傷つけられることはあっても、[r]
誰かを傷つけることはしないと思うんだ。[r]
[r]
[名前]は華織のことをどう思う？[r]
[sp] どうしたい？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　文矢[p]
[sp]
@jump target=*start


*10_3_bad
[手紙文矢 fumi_number=]
[名前]へ[r]
[r]
華織を呼び出そうとしました。[r]
ですが、今は家族のことで奔走してるようで難しいそうです。[r]
[r]
どうやらご兄弟のうちのひとりが、失踪して不幸があったようです。[r]
家の立場上、婚姻関係破棄は、しないと思いますが、[r]
今はそっとしてあげて下さい。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　文矢[p]
[手紙読了]
@jump target=*start

*11_b
[手紙華衣婚約者 fumi_number=]
[華衣]へ[r]
「もともと私の身体は長くなかったようです。[r]
[sp]だから華織さんを責めないであげてください。[r]
[sp]私の無茶なお願いをきいてくれたのだのだから。[r]
[r]
[sp]最後に[華衣]にみてほしいものがあります。[r]
[sp]もし私の頼みをお兄さんが忘れていなければ、[r]
[sp]きっと[華衣]の家の庭に咲いている思います。[r]
[r]
[r]
[sp]どうか悲しまないでほしい[r]　
[sp]私は[華衣]に　幸せな思い出が訪れる日を楽しみにしています。」[p]
[手紙読了]
@jump target=*start 　　　　　　　　　　　　　　　　　　　　　　　
 　　　　　　　　　　　　　　　　　　　　　　　
 　　　　　　　　　　　　　　　　　　　　　　　
 　　　　　　　　　　　　　　　　　　　　　　　
*1_1
[手紙四条 fumi_number=]
;○四条手紙 正月はがき？
お健やかに新年をお迎えのこととお慶び申し上げます。[r]
昨年は大変お世話になりありがとうございました。[r]
本年もよろしくお願いいたします[p]
ー追伸ー[r]
先日、[名前]のお父様の浩文さまとお会いしました。[r]
つきましては、[名前]さんと直接会ってお話しをしたいと[r]
考えております。[r]
[r]
返事待ってます。
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　四条華織[p]
[手紙四条読了 fumi_number=]
;3_1は元ある手紙なので書かなくてよし
@jump target=*start


;[イベントシーン終了]
*end_p

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
