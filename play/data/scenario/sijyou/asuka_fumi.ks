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
[名前]さんへ。[r][r]
若葉の緑が目にも鮮やかなこの頃。[r]
[r]
お久しぶりです。　飛鳥紗代子です。[r]
[名前]さんも、ついにお手紙のやりとりを[r]
なされるんですってね！[r]
[名字]様から、お聞きしましたわ！[p]

[sp][r]
どうしたら良いのか迷ったりしていないかしら？[r]
[r]
一応、これでも伯母ですから、[r]
[名前]さんのことが気になっているのよ。[r]
お互いを知るために手紙をたくさん書くことも大事だけど[r]
しっかりとお稽古はしておくべきよ～。[r]
[r]
私も、お稽古のおかげで旦那様に振り向いて貰えたから[r]
やっておいて損はないと思うわ。[p]

[sp][r][r]これからも、たまにお手紙を送らせて[r]
頂きますわね。[r]
[名前]さんの幸せを応援しています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子[p]
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
[名前]さんへ。[r][r]
秋の気配が次第に濃くなってきましたわね。[r]
[r]
[名前]さんは、そろそろお見合い相手とお会いになられたかしら？[r]
もしお会いになられたなら、これからが本番ですわ。[r]
殿方とは、どこか女性の気持ちをわかってくれない時があります。[r]
ですけど、そういったときこそ女性は殿方を支えてあげてみて。[r]
そんな貴方に、きっとお相手は心を開かれるわ。[r]
私の旦那さまもそうだったの。[r]
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
[名前]さんへ。[r][r]
冬は、もうすぐそこまで来ているようですわね[r]
[名前]さんはお元気でしたかしら？[r]
[r]
[sp]ところで、[名前]さんは、小説を読んだりするかしら？[r]
私、最近、探偵ものの小説にはまりだしたの。[r]
スズメの巣のようなぼさぼさの蓬髪をしているのだけど、[r]
人懐っこい笑顔がとっても素敵な探偵さまが主人公でね。[r]
[r]
少しでもヒントになる暗号をみつけたらパパッと解いて[r]
しまいますの。[p]
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
[sp]　　　　　　　　　　　　　　　　　　　　　　　　飛鳥紗代子[p]
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
[名前]さんへ。[r][r]
[if exp="f.kuroda == au"]
初冬の候、[r]
[else]
菊薫る今日このごろ、[r]
[endif]
[名前]さんはお元気でしたかしら？[r]
[r]
お見合いも終わって落ち着いた頃に[r]
改めて、その方の悩みや癖を発見してしまいわよね。[r]
例えば、お相手のご家族のことだったり、[r]
将来の夢だったり、悩みは人それぞれ持っていらっしゃると[r]
思いますわ。[p]
[sp][r]
[sp]今は辛いこともあるかもしれないけれど、[r]
[r]
[r]
[sp]未来はいつだって"晴れのち、いつか晴れ"ですわ。[r]
[r]
それから、たまには、私の話も聞いてくださってよくってよ。[r]
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


*3
[手紙飛鳥 fumi_number=]
[名前]さんへ。[r][r]
桃の蕾もふくらむ頃、楽しい季節が[r]
巡ってきたかしら？[r]
この暖かい陽気をみていると[名前]さんも[r]
幸せになる準備を迎えている気がしてしまいますわ。[r]
[r]
[sp]そう、春のち、いつか春なのよ。[r]
これからは、なかなかお互い会えなくなってしまうけれど[r]
[名前]さんの未来が暖かなものでありますように！って桜を[r]
見ながら応援していますわ。[r]
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
[名前]さんへ[r][r]
桃の蕾もふくらむ頃、[名前]さんはいかが[r]
おすごしかしら？[r]
この暖かい陽気をみていると[名前]さんの想いが[r]
叶うような、そんな気がしてしまいますわ。[r]
[r]
[sp]そう、人生は"春のち、いつか春"なのよ。[p]
[sp][r]
[r][r]
[r]
[sp]そういえば時子さんが、なにやら嬉しそうな顔をなさって[r]
いましたけれど、何かなさるのかしら？[r]
もし、楽しいことがあったら私にも、教えてくださいな！[r]
[名前]さんの未来が暖かなものでありますように。[r]
って桜を見ながら応援していますわ[r]
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
;世界観うんぬん　予備対策 使わないと思う

;大正ポスターより　二文字しかないし
;[手紙チラシ fumi_number=]
;光榮に輝く毛織の袷　
;[font size=50]ウールライン[resetfont]
;WOOL LINE
;[手紙チラシ読了 fumi_number=]

;大正ポスターより　文字サイズは適当 大中小な比較だけ
;[手紙チラシ fumi_number=]
;色白な幺る[r]
;[font size=50]ハータ[resetfont][r]
;[font size=25]過酸化[resetfont][font size=30]石鹸[resetfont][r]
;[sp][font size=10]THE [resetfont][r]
;[sp][font size=20]HATA[resetfont][r]
;[sp][font size=10]PEPOXIDE[resetfont][r]
;[font size=20]SOAP[resetfont][r]
;發賣元　京東室町[r]
;泰昌製藥株式会社
;[sp][手紙チラシ読了 fumi_number=]

;昭和ポスターより
;[手紙チラシ fumi_number=]
;[font size=30 bold=true]口薫と増健剤[resetfont]
;[font size=50 bold=true]ローズ仁丹[resetfont]
;貴方のクチビルに
;御家族用は四十銭
;[手紙チラシ読了 fumi_number=]

