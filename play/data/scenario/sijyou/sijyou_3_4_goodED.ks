;////////エンディング・その後の話 、 ファイナル・イメージ（本物の変化を見せる場）/////////
;春 3月
;○青空に桜のエフェクト/兄とその奥さんに見守られて結納(文字のみ)
;///////////////////////////////////////////////////////////////////
*replay_sijyou_3_4_normalED
[setreplay name="replay_sijyou_3_4_goodED_scene" storage="sijyou_3_4_goodED.ks" target="start"]
*start
[chara_mod name="bg" storage="toumei.gif" time=100]
;桜の表示が遅いと見えない,処理不能の為プリロード
[preload storage="data/fgimage/bg/B4nFWraU42/img_sakura_sijyou.png"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
;【背景】青空に桜
[chara_mod name="bg" storage="bg/bg_sakura.jpg"]
[eval exp="f.haikei_credit='photo　by　djNIV　https://www.flickr.com/photos/nivpic/4496431348/'"]
[イベントシーン構築]
[image name="saku1" storage="bg/B4nFWraU42/img_sakura_sijyou.png" layer=1 zindex=2 left=20 y=-600]
[image name="saku2" storage="bg/B4nFWraU42/img_sakura_sijyou.png" layer=1 zindex=2 left=60 y=-600 ]
[image name="saku3" storage="bg/B4nFWraU42/img_sakura_sijyou.png" layer=1 zindex=2 left=80 y=-600]
[wait time=10]
;桜は縮小 大きさをそれぞれ違うものに
[keyframe name="ani1"]
[frame p=100% scale=-0.4]
[endkeyframe]
[keyframe name="ani2"]
[frame p=100% scale=-0.7]
[endkeyframe]
[keyframe name="ani3"]
[frame p=100% scale=-0.8]
[endkeyframe]
;縮小実行
[kanim name="saku1" keyframe="ani1" time="5"]
[kanim name="saku2" keyframe="ani2" time="5"]
[kanim name="saku3" keyframe="ani3" time="5"]
[wait time=1]
;[wa]とまるので×
;アニメーション
[keyframe name="animation1"]
[frame p=0% y="0" x="0" opacity="1"]
[frame p=100% y="600" x=-200 opacity="0"]
[endkeyframe]
[keyframe name="animation2"]
[frame p=0% y="0" x="0" opacity="1"]
[frame p=100% y="500" rotateY="360deg"　opacity="0"]
[endkeyframe]
[keyframe name="animation3"]
[frame p=0% y="0" x="0" opacity="1"]
[frame p=100% y="400" x=200 opacity="0"]
[endkeyframe]
;アニメーション実行
[kanim name="saku1" keyframe="animation1" delay="0.5s" time="10000" count="infinite"]
[kanim name="saku2" keyframe="animation2" delay="1.0s" time="9000" count="infinite"]
[kanim name="saku3" keyframe="animation3" delay="0.4s" time="8000"  count="infinite"]
;文字ボケ修正挑戦したが効果がないので消去
;[iscript]
;$("message0").css({"-webkit-font-smoothing" : "antialiased"});
;[endscript]

#
四条家 と、[名字]家 の結納儀式がつつがなく終わり、親戚一同から祝福の声がかかる。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

#
[whosay name="文矢の奥様" color=%mp.color]
「おめでとうございます」[p]

;[SE拍手]
[playse storage=hakushu.ogg loop=false ]

[whosay name=文矢 color="#538a8a"]
「[名前]、華織おめでとう」[p]

[whosay name="華織" color="olivedrab"]
「[名前]さんと、あの時再会して、本当によかった」[p]
;△お見合いのことです
[whosay name="華織" color="olivedrab"]
「[名前]さん、大切にします」[p]
;場所変更？
[kanim name="saku1" keyframe="animation1" time="10000" count="0"]
[kanim name="saku2" keyframe="animation2" time="9000" count="0"]
[kanim name="saku3" keyframe="animation3" time="8000"  count="0"]
[iscript]
$('.saku1').remove();
$('.saku2').remove();
$('.saku3').remove();
[endscript]
[whosay name="華衣" color=%mp.color]
「自分にも、いつかそのような方と出会えるのかな……」[p]
[whosay name="四条親戚" color="#807070"]
「きっと貴方にも巡り会えますよ。 華衣さんにも大事な人が 」[p]
;散策４を見ている場合
[if exp="f.event_machi_sijyou[4]==1"]
[whosay name="四条親戚" color="#807070"]
「お二人を見て、そう思うなら、きっと」[p]
[whosay name="華衣" color=%mp.color]
「！　」[p]
[whosay name="華衣" color=%mp.color]
「あなたは」[p]
[whosay name="四条親戚" color="#807070"]
「いつも子供達と遊んで頂き、ありがとうございます[r]
[sp]私、[華衣]さんのこと、ずっと応援していました」[p]
[whosay name="華衣" color=%mp.color]
「え、いえ、俺は別に……」[p]
[whosay name="四条親戚" color="#807070"]
「私、父と新しい事業を始めようと思うのですが、よろしければ[r]
[sp][華衣]さんも手伝って頂けないでしょうか……？」[p]
[whosay name="華衣" color=%mp.color]
「俺に、できるのかな……　いえ、やらせてください！」
[whosay name="華衣" color=%mp.color]
（いつか、あの二人に負けないものを見つけてみせよう）[p]
[else]
[whosay name="四条親戚" color="#807070"]
「お二人を見て、そう思うなら、きっと」[p]
[whosay name="華衣" color=%mp.color]
「そうですね……」[p]
[whosay name="華衣" color=%mp.color]
（今は、まだわからない。[r]
[sp]でも、いつか、あの二人に負けないものを見つけてみせよう）[p]
[endif]

[if exp="f.para_sijyou_koukando > 80 && f.para_shujinkou_shukujodo > 80 "]
[暗転２ storage="bg/sijyou_CGgood.jpg"]
[chara_mod name="bg" storage="bg/sijyou_CGgood.jpg" time=1000]
;[eval exp="f.haikei_credit=''"]
[p]
[暗転２終了]
[else]
[暗転２ storage="bg/sijyou_CGnomal.jpg"]
[chara_mod name="bg" storage="bg/sijyou_CGnomal.jpg" time=1000]
;[eval exp="f.haikei_credit=''"]
[p]
[暗転２終了]
[whosay name="華織" color="olivedrab"]
「これからは、僕が貴方の力になりたい。　恋人として、[r]
[sp]夫として、貴方の支えでありたい」[p]
[whosay name="華織" color="olivedrab"]
「悔いのないように。[r]
[sp]貴方に辛い時が訪れたとしても、いつでもこうして抱きしめて[r]
[sp]あげます」[p]
[whosay name="華織" color="olivedrab"]
「貴方のおかげで ここまで来れた。[r] 
貴方が教えてくれた、ひたむきな優しさに触れ、本当の愛を学び、[r]
愛を知りました」[p]
[whosay name="華織" color="olivedrab"]
「連理の枝のように、これからも[名前]さんと共にあることを[r]
[sp]誓います」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ええ、これからも共に未来を創り、[r]
[sp]私達の想いをのせて、花を慈しみましょう）[p]

;離れてて思いつかないので仮

#
[if exp="f.para_sijyou_koukando > 80 && f.para_shujinkou_shukujodo > 80 "]
;エピローグをつづけてみる場合の処理
@jump storage="sijyou/sijyou_3_4_epilogue_goodED.ks"
[endif]

# 
;ナレーターモノローグ
;===============================================================
;ﾒｯｾｰｼﾞｸﾘｯｸ表示隠し
[layopt layer=message0 visible=false]
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=1000 visible=true]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position left=200 width=500 height=300 top=100 page=fore margint="50"]
;ﾒｯｾｰｼﾞｸﾘｯｸ表示
[layopt layer=message0 visible=true]
;テキスト全画面
[font color=white size=27]
;===============================================================
幸せは信じれば巡ってくる。[r]
[r]
それは、案外気づかない近い場所に[r]
あるのかもしれません[p]
;===============================================================
;一瞬裏がみえるの防止背景
[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=50]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position left=300 width=300 height=300 top=200 page=fore margint="50"]
[font color=white size=35]
;===============================================================
;画面中央に「完」の文字
[sp]　　　　完[p]


;○プレイヤーに幸せの予感を残しておわり、紡いでいく話。
;幸せは信じれば巡ってくる それは案外気づかない近い場所にあるかもしれません というテーマかな
;2人も近いところにいましたけど、お見合いしなければ関係性は変わらなかった？

[イベントシーン終了]
;ending処理待ち
[if exp="tf.okeiko_gamen==true"]
[eval exp="sf.ED_sijyou_normal=1"]
;回想記録終了
[endreplay] 
[四条ルート終了 end=normal]
@jump storage="event.ks" target=*event_ED
[endif]

[if exp="tf.test_sijyou == true"]
@jump storage="test_sijyou.ks"
[s]
[endif]


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
