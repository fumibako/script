*start
[stopbgm]
;=============================================
;手紙　飛鳥
;=============================================
[macro name=手紙飛鳥読了]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[freeimage layer=29]
[endmacro]

*0
[手紙飛鳥 fumi_number=]
*0_1
[cm]
[名前]さんへ。[r][r]
若葉の緑が目にも鮮やかなこの頃。[r]
[r]
お久しぶりです。　飛鳥紗代子です。[r]
[名前]さんも、ついにお手紙のやりとりを[r]
なされるんですってね！[r]
[名字]様から、お聞きしましたわ！
[glink target=*0_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*0_2
[sp][r]
どうしたら良いのか迷ったりしていないかしら？[r]
[r]
一応、これでも伯母みたいなものですから、[r]
[名前]さんのことが気になっているのよ。[r]
お互いを知るために手紙をたくさん書くことも大事だけど[r]
しっかりとお稽古はしておくべきよ～。[r]
[r]
私も、お稽古のおかげで旦那様に振り向いて貰えたから[r]
やっておいて損はないと思うわ。
[glink target=*0_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*0_3 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]

*0_3
あと、恋に『情報』は必須。[r]
お相手に対して、わからないことがありましたら[r]
一度、見直してみては[ruby text="いか"]如[ruby text="が"]何かしら？[r]
特に手紙を出した後に『情報』をご覧になられると良いと思うわ！[r]
[r]これからも、たまにお手紙を送らせて[r]
頂きますわね。[r]
[名前]さんの幸せを応援しています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子
[glink target=*0_2 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*0_close" size=5 x=880 y=24 width=50 height=50]
[s]

*0_close
[cm]
[clearfix]
[clearstack]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[freeimage layer = 29]
@jump storage=info_oaite_fumi.ks target=&f.viewing_target
[s]
[endif]
[手紙飛鳥読了 fumi_number=]

;どうぶつの森っぽい

*1
[手紙飛鳥 fumi_number=]
[名前]さんへ。[r]
秋の気配が次第に濃くなってきましたわね。[r]
[名前]さんは、そろそろお見合い相手とお会いになられたかしら？[r]
もしお会いになられたなら、これからが本番ですわ。[r]
『情報』についても、確認なされているかしら？[r]
[r]
殿方とは、どこか女性の気持ちをわかってくれない時があります。[r]
ですけど、そういったときこそ女性は殿方を支えてあげてみて。[r]
そんな貴方に、きっとお相手は心を開かれるわ。[r]
私の旦那さまもそうだったの。[sp]私は、三月末に式を挙げたわね。[r]
けど、この話はとてもとても長くなるからまた今度にしますわ。[r]
応援しています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子[p]
;[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬具[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[freeimage layer = 29]
@jump storage=info_oaite_fumi.ks target=&f.viewing_target
[s]
[endif]
[手紙飛鳥読了 fumi_number=]

*1_sijyo
[手紙飛鳥 fumi_number=]
*1_sijyo_1
[cm]
[名前]さんへ。[r][r]
冬は、もうすぐそこまで来ているようですわね[r]
[名前]さんはお元気でしたかしら？[r]
[r]
[sp]ところで、[名前]さんは、小説を読んだりするかしら？[r]
私、最近、探偵ものの小説にはまりだしたの。[r]
スズメの巣のようなぼさぼさの[ruby text="ほう"]蓬[ruby text="はつ"]髪をしているのだけど、[r]
人懐っこい笑顔がとっても素敵な探偵さまが主人公でね。[r]
[r]
少しでもヒントになる暗号をみつけたらパパッと解いて[r]
しまいますの。
[glink target=*1_sijyo_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*1_sijyo_2
[sp][r]
[r]
[r]
[r]
[sp]私はそういったことが苦手だから憧れてしまうわ。[r]
丁度、読み終わったところだし、[名前]さんも読んでみて！[r]
[r]
[r]
[sp]真実は、いつもひとり！[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子
[glink target=*1_sijyo_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*1_sijyo_close" size=5 x=880 y=24 width=50 height=50]
[s]

*1_sijyo_close
[cm]
[clearfix]
[clearstack]
;[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[freeimage layer = 29]
@jump storage=info_oaite_fumi.ks target=&f.viewing_target
[s]
[endif]
[手紙飛鳥読了 fumi_number=]



*2
[手紙飛鳥 fumi_number=]
*2_1
[cm]
[名前]さんへ。[r][r]
[if exp="f.kuroda_au == 1"]
初冬の候、[r]
[else]
菊薫る今日このごろ、[r]
[endif]
[名前]さんはお元気でしたかしら？[r]
[r]
お見合いも終わって落ち着いた頃に[r]
改めて、その方の悩みや癖を発見してしまうわよね。[r]
例えば、お相手のご家族のことだったり、[r]
将来の夢だったり、悩みは人それぞれ持っていらっしゃると[r]
思いますわ。
[glink target=*2_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*2_2
[sp][r]
[sp]今は辛いこともあるかもしれないけれど、[r]
[r]
[r]
[sp]未来はいつだって"晴れのち、いつか晴れ"ですわ。[r]
[r]
それから、たまには、私の話も聞いてくださってよくってよ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子
[glink target=*2_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*2_close" size=5 x=880 y=24 width=50 height=50]
[s]

*2_close
[cm]
[clearfix]
[clearstack]
;[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬具[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[freeimage layer = 29]
@jump storage=info_oaite_fumi.ks target=&f.viewing_target
[s]
[endif]
[手紙飛鳥読了 fumi_number=]


*3
[手紙飛鳥 fumi_number=]
[名前]さんへ。[r][r]
桃の[ruby text="つぼみ"]蕾もふくらむ頃、楽しい季節が[r]
巡ってきたかしら？[r]
この暖かい陽気をみていると[名前]さんも[r]
幸せになる準備を迎えている気がしてしまいますわ。[r]
[r]
[sp]そう、春のち、いつか春なのよ。[r]
これからは、なかなかお互い会えなくなってしまうけれど[r]
[名前]さんの未来が暖かなものでありますように！って[r]
桃の[ruby text="つぼみ"]蕾を見ながら応援していますわ。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子[p]
;[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬具[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[freeimage layer = 29]
@jump storage=info_oaite_fumi.ks target=&f.viewing_target
[s]
[endif]
[手紙飛鳥読了 fumi_number=]


;藤枝さんのときだけ２月にこちらにお願いします
*fuji
[手紙飛鳥 fumi_number=]
*fuji_1
[cm]
[名前]さんへ[r][r]
桃の[ruby text="つぼみ"]蕾もふくらむ頃、[名前]さんはいかが[r]
おすごしかしら？[r]
この暖かい陽気をみていると[名前]さんの想いが[r]
叶うような、そんな気がしてしまいますわ。[r]
[r]
[sp]そう、人生は"春のち、いつか春"なのよ。
[glink target=*fuji_2 text="→" size=10 x=770 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*fuji_2
[sp][r]
[r][r]
[r]
[名前]さんが、謹慎を解かれたこと安心しました。[r]
困難を乗り越え、新たな一歩を踏み出したこと、[r]
とても素晴らしいことだと思っておりましてよ。[r]
[r]
[名前]さんの未来が暖かなものでありますように。[r]
って桃の[ruby text="つぼみ"]蕾を見ながら応援していますわ[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子
[glink target=*fuji_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*fuji_close" size=5 x=880 y=24 width=50 height=50]
[s]

*fuji_close
[cm]
[clearfix]
[clearstack]
;[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬具[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen == true"]
[freeimage layer = 29]
@jump storage=info_oaite_fumi.ks target=&f.viewing_target
[s]
[endif]
[手紙飛鳥読了 fumi_number=]


;/////////////////ここからは戻り処理//////////////////////
*back_test
[chara_mod name="bg" storage="bg/title.jpg"]
[イベントシーン終了]
@jump storage="test_sijyou.ks"
[s]
*title
@jump storage="title.ks"
[s]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;ヒント作成中　できれば藤枝以外の手紙の追伸で二周目へのヒントやパラメータの変化に対するヒントを追加したいです。ひとまず単体でここに書きます
[手紙飛鳥 fumi_number=]
*koi_in1
[cm]
[名前]さんへ[r][r]
桃の[ruby text="つぼみ"]蕾もふくらむ頃、[名前]さんはいかが[r]
おすごしかしら？[r]
最近、私は恋愛小説を読んでいるの。[r]
内容は、文通をしている少女のお話で素敵な登場人物に[r]
心ときめくお話だったわ。[p]
*koi_in2
私、あまりにも素敵なお話だから、旦那様に隠れて[r]
こっそり寝る前に"読み返して"みたのよ。[r]
そうしたら、何故か初めて読んだ時とは"違う気持ちになって[r]
いた"の。[r]
主人公のお淑やかさが違ってみえたり、[r]
主要登場人物以外の素性まで見えたりしたのよ。[r]
こういうことって、"時と場合によって"、よくあることよね……？[r]
[r][r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子
*koi_close
[cm]
[clearfix]
[clearstack]
;[sp]　　　　　　　　　　　　　　　　　　　　　　　　敬具[p]
[手紙飛鳥読了 fumi_number=]
