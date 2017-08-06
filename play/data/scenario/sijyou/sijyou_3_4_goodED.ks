;////////エンディング・その後の話 、 ファイナル・イメージ（本物の変化を見せる場）/////////
;春 3月
;○青空に桜のエフェクト/兄とその奥さんに見守られて結納(文字のみ)
;///////////////////////////////////////////////////////////////////
*replay_sijyou_3_4_normalED
*replay_sijyou_3_4_good
[setreplay name="replay_sijyou_3_4_normalED_scene" storage="sijyou/sijyou_3_4_goodED.ks" target="start"]
[iscript]
$('rp_bt').remove();
$('.list').remove();
[endscript]
[if exp="f.flag_replay == true"]
[clearstack]
[bg wait=true method='crossfade' storage="toumei.gif" time=1]
[endif]
*start
[stopbgm]
[call target=*ed storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[freeimage layer = 1]
[freeimage layer = 14]

;[if exp="f.flag_replay == true"]
;@layopt layer=1 visible=true
;[chara_show name="bg"]
;[endif]

;【背景】青空に桜
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_sakura.jpg" time=0]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_sakura.jpg"]
[eval exp="f.haikei_credit='photo　by　djNIV　https://www.flickr.com/photos/nivpic/4496431348/'"]
[イベントシーン構築ボタン無し版]
[eval exp="f.kaogura = 'off'"]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;================================================================================================
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
[anim name=message0 opacity=800]
#
四条家 と、[名字]家 の結納儀式がつつがなく終わり、親戚一同から祝福の声がかかる。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

[whosay name="文矢の奥様" color=%mp.color]
「おめでとうございます」[p]

;[SE拍手]
[playse storage=hakushu.ogg loop=false ]

[whosay name=文矢 color="#538a8a"]
「[名前]、華織おめでとう」[p]

[whosay name="華織" color="olivedrab"]
「あの時、[名前]さんと再会して、本当によかった」[p]
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
[if exp="f.event_sijyou_4==1"]
[whosay name="四条親戚" color="#807070"]
「お二人を見て、そう思うなら、きっと」[p]
[whosay name="華衣" color=%mp.color]
「！　」[p]
[whosay name="華衣" color=%mp.color]
「あなたは」[p]
[whosay name="四条親戚" color="#807070"]
「いつも子供達と遊んで頂き、ありがとうございます。[r]
[sp]私、[華衣]さんのこと、ずっと応援していました」[p]
[whosay name="華衣" color=%mp.color]
「え、いえ、俺は別に……」[p]
[whosay name="四条親戚" color="#807070"]
「私、父と新しい事業を始めようと思うのですが、よろしければ[r]
[sp][華衣]さんも手伝って頂けないでしょうか……？」[p]
[whosay name="華衣" color=%mp.color]
「俺に、できるのかな……。 いえ、やらせてください！」[p]
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
#

;◆ナレーターモノローグ
;===============================================================
;◆ﾒｯｾｰｼﾞｸﾘｯｸ表示隠し
[layopt layer=message0 visible=false]
;◆機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;◆メッセージレイヤを全画面用に設定変更
[position left=150 width=600 height=530 top=110 page=fore margint="50"]
[image layer=29 x=0 y=0 storage="bg/bg_EDsakura.jpg" time=1000 visible=true]
;◆テキスト全画面
[font color=snow size=27]
;◆ﾒｯｾｰｼﾞｸﾘｯｸ表示隠し
[layopt layer=message0 visible=true]
[wait time=10]
;===============================================================
;ベールへの説明部;結婚式にするため、時間経過を入れたら間が抜けて気分が下がったため
[if exp="f.sijyou_sobo == true"]
綾花さまから頂いた
[else]
お義姉さまから頂いた
;母がよかったが藤枝のﾙｰﾄに影響がある恐れ、また母が登場していない
[endif]
ベールをつけ、[r]
記念写真を撮る。[r]
[r]
【写真家】[r]
「今日は、良い天気で美しいお二人！[r]
[sp]なんて　めでたい日だ」[r]
[r]
写真家が揚々と笑って撮影準備を始められる。[p]

華織様は、桜の合間を見て[r]
【華織】[r]
「ああ、本当。良いお天気ですね」と微笑む。[r]
[r]
輝く春の陽によって彩られる愛しい人の輪郭。[r]
[r]
【[名前]】[r]
「ええ、本当に」[r]
私は幸せを感じて、微笑み返した。[p]

すると、華やかな華織様のお顔が、[r]
そっと私の頬に寄り添い、愛情を込められたお言葉を耳元で囁かれた。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
;◆メッセージをもどします
[resetfont]
;◆ｸﾘｯｸがみえる場合は追加↓
[layopt layer=message0 visible=false]
[freeimage layer = 29 time=1000]
[wait time=1000]
;◆メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]

;◆機能ボタン表示　暗転２終了に含まれている
;[layopt layer=fix visible=true]
;[eval exp="sf.FButton='ON'"]
[cm]
;会話ウィンドウ消去　一瞬みえる
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;==========================スクリプト・全画面表示からの復帰準備========================================

;メッセージウィンドウ消去から復帰時の顔グラをoffにします
[eval exp="f.kaogura = 'off'"]
[eval exp="f.haikei_credit='illustration　by　かいこ'"]
;good条件分岐は3箇所：スチル表示(ここ)、169行目付近、preload_sijyou.ks423行目付近(もし調整が必要になった際用メモです。「以上」の部分を調整させていただきました
[if exp="f.para_sijyou_koukando >= 80 && f.para_shujinkou_shukujodo >= 80 && f.sijyou_sobo == true && f.event_sijyou[15] == 1 && f.para_shujinkou_j_kadou >= 50"]
[暗転２ storage="bg/sijyou_CGgood.png" clegit=true]
[bg wait=true method='crossfade' storage="../fgimage/bg/sijyou_CGgood.png" time=1000]
[wait time=10]
;[chara_mod name="bg" storage="bg/sijyou_CGgood.png" time=1000]
;◆CGモード用に画像を登録
[cg storage="sijyou_CGgood.png"] 
[else]
[暗転２ storage="bg/sijyou_CGnomal.png" clegit=true]
[bg wait=true method='crossfade' storage="../fgimage/bg/sijyou_CGnomal.png" time=1000]
[wait time=10]
;[chara_mod name="bg" storage="bg/sijyou_CGnomal.png" time=1000]
;◆CGモード用に画像を登録
[cg storage="sijyou_CGnomal.png"]
[endif]
[p]
;会話ウィンドウ表示
[chara_mod name="message_bg" storage=&f.message_storage time=1]
[wait time=10]
[暗転２終了]



[wait time=10]
;◆メッセージの表示
[layopt layer=message0 visible=true]
[whosay name="華織" color="olivedrab"]
「これからは、僕が貴方の力になりたい。　恋人として、[r]
[sp]夫として、貴方の支えでありたい」[p]
[whosay name="華織" color="olivedrab"]
「貴方のおかげで ここまで来れた。[r] 
[sp]貴方が教えてくれた、ひたむきな優しさに触れ、本当の愛を学び、[r]
[sp]愛を知りました」[p]
[whosay name="華織" color="olivedrab"]
「連理の枝のように、これからも[名前]さんと共にあることを[r]
[sp]誓います」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ええ、これからも共に未来を創り、[r]
[sp]私達の想いをのせて、花を慈しみましょう）[p]

#
[if exp="f.para_sijyou_koukando >= 80 && f.para_shujinkou_shukujodo >= 80 && f.sijyou_sobo == true && f.event_sijyou[15] == 1 && f.para_shujinkou_j_kadou >= 50"]
;話の都合上華道展をいれてます
;厳しいので５０でお許し下さい　華道がひくい時のセリフも楽しんでもらう
;エピローグをつづけてみる場合の処理
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;メッセージウィンドウ消去から復帰時の顔グラをonに戻します
[eval exp="f.kaogura = 'on'"]
;ノーマルエンドは主人公フェイス表示なしなので始めにoffにしました
@jump storage="sijyou/sijyou_3_4_epilogue_goodED.ks" target=*ep
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（幼い時から側に居てくれた華織様）[p]

#
私は華織様に肩を寄せて、想い出を振り返る。[p]
@jump storage="sijyou/sijyou_3_4_goodED2.ks" target=*scene0

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
