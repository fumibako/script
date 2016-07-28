;¥¥¥¥¥¥¥¥イベント4¥¥¥¥¥¥¥¥
;/////☆デート2 ミッド・ポイント//////
;[歌舞伎小屋前]
;○歌舞伎座で音頭恋寝刃を鑑賞、伏線とキャラ紹介
;歌舞伎 大正座。
;[歌舞伎小屋中]
[chara_mod name="bg" storage="bg/bg_kabuki_in.jpg"]
[eval exp="f.haikei_credit='photo　by　明治村画像庫2 早川　http://d.hatena.ne.jp/meiji_photo/'"]
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


[whosay name="華織" color="olivedrab"]
「本日の演目は『音頭恋寝刃』……」[p]
#
桟敷き席に座っていた[名前]は隣に座る華織の様子をみた。[p]
[whosay name="華織" color="olivedrab"]
「わからないことがあったら聞いて」[p]
[whosay name="華織" color="olivedrab"]
「親戚の婚約者の邸宅で行われた『天覧芝居』を観にいったときから、芝居は好きなんだ」[p]
[whosay name="華織" color="olivedrab"]
「名役者 菊次郎 がでているみたいだ」[p]
[whosay name="華織" color="olivedrab"]
「ここに出てくる『波ヶ浦』は実際にある地名なんだよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(お元気そう)[p]
;演目中は立ち絵表示無し？
;[BGMみちくさ] ほんのりギャグテイスト？
;http://otowabi.com/page/3/?cftsearch%5Bgenre%5D%5B0%5D%5B0%5D=%E5%92%8C%E9%A2%A8&cftsearch_submit=1&_pjax=%23main
[whosay name="役者 その壱" color=black]
「これが名高い『波ヶ浦』でございまするぅ～」[p]
;[太鼓SE]ドンドンドン…
#
;演目の内容は、貢という男性が操られ大勢の人を殺してしまったと悔やみ、自害をしようとする。それを喜助という者が押し留め、貢の持っている刀こそ、貢が探していた「青江下坂」なのだという。お家の重宝「青江下坂」とその他の両方を取り戻すことができ、大喜びする貢であった……という人物交差もの。
;[SE拍手]
;○開演後のホールでは、奥さま方の熱狂的な交流が行われている。 外にでる2人
;[歌舞伎小屋前]
[chara_mod name="bg" storage="bg/bg_kabuki_out.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　明治村画像庫2 早川　http://d.hatena.ne.jp/meiji_photo/'"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「堪能いたしました」[p]
;[主人公まばたき]
[whosay name="華織" color="olivedrab"]
「それは、よかった」[p]
[whosay name="華織" color="olivedrab"]
「あんな風に両方を取り戻せたらいいよね」[p]
;○親切な華織さんの表現と伏線
[whosay name="おじさん" color=black]
「キミ！ そこの！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？」[p]
[whosay name="おじさん" color=black]
「今日の『音頭恋寝刃』は終わっちまったかい？
[sp]おじさんはじめてだから困っちまって！」[p]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公驚き]
[whosay name="華織" color="olivedrab"]
「もう一周あるみたいですよ」[p]
[whosay name="華織" color="olivedrab"]
「良ければ、この冊子をどうぞ。演目時間と説明が書かれてます」[p]
[whosay name="おじさん" color=black]
「いいのかい？ 色男で親切なんて！ いなせだねぇ！」[p]
[whosay name="おじさん" color=black]
「そいじゃ、おじさんも逢[ruby text="でぇ"]引[ruby text="と"]があるんで！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大事なものではないのですか？」[p]
[whosay name="華織" color="olivedrab"]
「内容は覚えているからいいよ」[p]
[whosay name="華織" color="olivedrab"]
「それよりも、[名前]と長く一緒にいれる時間が大事だよ」[p]
[whosay name="華織" color="olivedrab"]
「[名前]、このままデパートに行ってみないかい？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
;場面転換 四条と主人公のデート
;[商店背景] 銀座とか松坂屋とかでしょうか
;http://www.matsuzakaya.co.jp/corporate/history/honshi/1907.shtml
[chara_mod name="bg" storage="bg/B4nFWraU42/ginza3.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[whosay name="華織" color="olivedrab"]
「はじめてで緊張する？ 」[p]
;[主人公照れ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、少し」[p]
#
淑女ひとりで出かけることはないデパート。[r]
行き交う人たちは、周りをはばからず親しげに寄り添っている[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(周りの方達は『お付き合い』をされてる方達なのでしょうか？ )[p]
[whosay name="華織" color="olivedrab"]
「手を繋いでいるね」 [p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね」[p]
[whosay name="華織" color="olivedrab"]
「僕達も手を繋ごうか？」[p]
[主人公照れ]
;△好感度で変更しても？？
;[四条微笑み]
;*【２】
[if exp="f.para_sijyou_koukando >= 50"]
[whosay name="華織" color="olivedrab"]
「[名前]の手は小さいね」[p]
;*【１】
[else]
[whosay name="華織" color="olivedrab"]
「[名前]が、もう少し大人になってからしようか」[p]
[endif]
#
;[商店背景] 帯留めを選ぶシーンは店内の方が合うでしょうか
[chara_mod name="bg" storage="bg/bg_shop_wazakka.jpg" time=1000]
[eval exp="f.haikei_credit=''"]

[whosay name="華織" color="olivedrab"]
「[名前]、前を向いて」[p]
[whosay name="華織" color="olivedrab"]
「[名前]が好きな帯留めはある？」[p]
#
ガラスの向こうに様々な種類の帯留めが並んでいる。[r]
漆塗り、ハイカラなカメオ式、草木をモチーフとしたアールデコ調。[r]
家ではこんなに細かくは選べない。[p]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「たくさん、ありますね」[p]
;[主人公デフォルト]か[主人公微笑み]
;○主人公の笑顔をみて笑顔になる四条
;[四条笑顔]
;[主人公照れ]か何か反応する
[whosay name="華織" color="olivedrab"]
「結納の記念として、[名前]に贈りたいな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さまは、色々とお気遣いされて、余裕があって……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私も華織さまに喜んでほしい)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(いつか華織さまのお役に立てるようになりたいです)[p]
;////////☆事件の予感 迫り来る悪い奴ら//////
;場面転換
;[主人公の家の前]
[chara_mod name="bg" storage="bg/bg_genkan.jpg" time=1000]

;○デートの終わりに事件が起きる
;○妹(弟)が登場する
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今日は楽しく過ごせました。ありがとうございます」[p]
[whosay name="華織" color="olivedrab"]
「こちらこそ。また会いたいですね」[p]
[whosay name="？？？" color=%mp.color]
「華織！」[p]
[whosay name="華織" color="olivedrab"]
「……！」[p]
[whosay name="？？？" color=%mp.color]
「よくもまぁ、ぬけぬけと笑っていられるな」[p]
;×修正点
[whosay name="？？？" color=%mp.color]
「アンタは人の大事な人を奪ったくせに！」[p]
[whosay name="？？？" color=%mp.color]
「アンタだけ幸せになろうなんて、ズルい」[p]
;走って退場
#
謎の人物は、不穏な言葉を残すと去っていった。[p]
[whosay name="華織" color="olivedrab"]
「華衣！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今の方は……」[p]
[whosay name="華織" color="olivedrab"]
「弟なんだ」[p]
[whosay name="華織" color="olivedrab"]
「嫌われてるんだよね」[p]
[whosay name="華織" color="olivedrab"]
「嫌な思いさせてごめん」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、」[p]
;¥¥¥¥¥¥¥¥イベント4おわり¥¥¥¥¥¥¥¥
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