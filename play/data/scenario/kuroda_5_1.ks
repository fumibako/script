;=============================================
;磯野に相談： 5月、他のアドバイスイベントが発生しないなら1度だけ発生
;=============================================
*start
*replay_kuroda_5_1
;↓◆B4nFWraU42さん作イベント冒頭プリロード箇所を使用させていただきました。◆B4nFWraU42さん、ありがとうございます。
;=======================お芝居の準備中です==========================================
[stopbgm]
[eval exp="f.from_common_5_1 = 0"]
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=10]

[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
*seen1
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[主人公通常]
[主人公目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様のことを聞いていいかしら」
[autosave]
[wait time=10]
[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「はい。 黒田様のことでございますね」[p]
[whosay name=磯野 color="dimgray"]
「黒田様は、大学で植物の研究をしておられるそうです。[r]
[sp]机上の学問だけではなく、野山に足を運ばれることも多いとお聞き[r]
[sp]します」
[autosave]
[wait time=10]
[p]
[主人公目パチ1回]

「自然がお好きだそうですので、便せんは植物や自然のものが画かれた[r]
[sp]ものでお送りすると、喜ばれるかもしれません」[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「"自然のものが画かれた便せん"ですね。選んでみようかしら」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「お忙しい方で、お返事をあまり返して下さらないことも多いかもしれ[r]
[sp]ませんが、お嬢様からお手紙を出し続けてみてください」
[autosave]
[wait time=10]
[p]

[主人公目パチ1回]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（たしかに、お返事をいただけないこともありますね。[r]
[sp]もっとこちらからお送りしてみようかしら）[p]
[主人公ポーズ通常]
[whosay name=磯野 color="dimgray"]
「黒田様は、海外の論文や書籍をよく読まれるそうです。[r]
[sp]"語学"のお稽古で海外の知識を深めると、お話が合うかもしれません」
[p]
「植物がお好きですから"華道"のたしなみも、少しあると[r]
[sp]良いでしょう」
[autosave]
[wait time=10]
[p]

[主人公目パチ1回]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「また、気分転換に"散策"もお勧めいたします」[p]

「散策で"季節感のある話題"を手に入れられましたら、すぐにお手紙に[r]
[sp]書かれると良いでしょう」
[autosave]
[wait time=10]
[p]

「話題が季節外れになってしまうと、お返事をいただけないことも[r]
[sp]あるかもしれません」[p]

[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野。[r]
[sp]黒田様に、もっとお手紙を書きたくなりました」
[autosave]
[wait time=10]
[p]

[whosay name=磯野 color="dimgray"]
「お嬢様のお役に立てると幸いでございます」[p]

[主人公目を開く]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（"自然のものが画かれた便せん"、"語学"、"華道"、"散策"ね）[p]

（"季節感のある話題"はすぐにお手紙に書くようにも、気をつけて[r]
[sp]みましょう）
[autosave]
[wait time=10]
[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=磯野 color="dimgray"] 
「他にお聞きになりたいことは、ございますか？」[p]
[if exp="f.from_common_5_1 == 1"]
@jump storage="common_5_1.ks" target=*select
;お相手について相談するかの選択肢に戻ります
[endif]

[if exp="tf.test_kuroda==true"]
@jump storage="01_jsYiJcqRkk_test.ks"
[イベントシーン終了]
[endif]

[if exp="tf.test_sijyou==true"]
[イベントシーン終了]
@jump storage="test_sijyou.ks"
[endif]

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
