;=============================================
;◆黒田イベント【デート】黒田ルート11月2週_2(選択肢分岐)
;=============================================
*start
;【部分分岐】突然、置いてきぼりになったことを言う場合【開始】
*kuroda_11_2_sentaku01_a
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]

[freeimage layer = 26]
[eval exp="f.select_scene=''"]
[cm]
@layopt layer=message1 visible=false

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene13==undefined"]
	[skipstop]
[endif]
*scene13

;【黒田好感度】変化なし

;【立ち絵】主人公：通常
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そういえば、イグチを採りに[r]
[sp]走って行かれたことがありましたっけ」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】黒田：困（汗青ざめ）
[chara_mod name="kuroda_base" storage="kuroda/base_haori_aozame.png" time=0]
[wait time=10]
;[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
;[wait time=30]
「突然だったので驚きましたが[l][r]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
;【立ち絵】黒田：目閉じ
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]

[sp]イグチのお話も聞けて楽しゅうございましたよ」[p]

[黒田閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「黒田、お前[名字]さんをほっぽり出して採集したの？」[p]

[主人公目パチ1回]
[wait time=10]
;【立ち絵】黒田：しょんぼり
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「うん。あれはまずかった……反省しているよ」[p]

;【立ち絵】黒田：苦笑
[黒田困りほほえみ]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
[whosay name="田中　岩男" color="#775545"]
「まあ俺も採集では人のこと言えないんだけどね」[p]
@jump target=*kuroda_11_2_sentaku01_end
;【部分分岐】突然、置いてきぼりになったことを言う場合【終了】

;【部分分岐】虫を届けましょうかと聞かれたことを言う場合【開始】
*kuroda_11_2_sentaku01_b
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]

[freeimage layer = 26]
[eval exp="f.select_scene=''"]
[cm]
@layopt layer=message1 visible=false

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene14==undefined"]
	[skipstop]
[endif]
*scene14

;【黒田好感度】+1（プラス点：黒田が良かれと思って言ったことや事前に聞く心遣いに気付いて挙げている点）
;リプレイ時+テスト時はパラメータ変化しない
[if exp="f.okeiko_gamen == true && f.event_replay != 'kuroda'"]
	[eval exp="f.para_kuroda_koukando = f.para_kuroda_koukando + 1"]
[endif]
;【立ち絵】主人公：通常
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そういえば、虫の音を私があまり聞いたことが無いと申しましたら[r]
[sp]虫をたくさん届けましょうか、とたずねて下さいましたっけ」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;【立ち絵】黒田：困（汗）
[黒田目パチ1回]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
;[chara_mod name="kuroda_base" storage="kuroda/base_haori_aozame.png" time=0]
;[wait time=10]
;[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
;[wait time=30]
「すこし驚きましたが[l][r]
;【立ち絵】黒田：目閉じ
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[sp]お心遣いが嬉しゅうございましたよ」[p]
[主人公通常]
[wait time=10]
[黒田閉目パチ1回]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「黒田、贈り物は相手の好みや事情を考えて[r]
[sp]言うもんじゃねぇか？」[p]
;【立ち絵】黒田：しょんぼり
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「うん。学んだよ……反省してる」[p]
[黒田閉目パチ1回]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「でも一応、いきなり押し付けずに要るかどうか聞いたんだな」[p]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「聞いてくださって、助かりました」[p]

;【立ち絵】黒田：苦笑
[黒田困りほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「いやぁ、今後もお聞きすることにします」[p]
@jump target=*kuroda_11_2_sentaku01_end
;【部分分岐】虫を届けましょうかと聞かれたことを言う場合【終了】

;【部分分岐】特に何も気にならないと言う場合【開始】
*kuroda_11_2_sentaku01_c
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]

[freeimage layer = 26]
[eval exp="f.select_scene=''"]
[cm]
@layopt layer=message1 visible=false

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene15==undefined"]
	[skipstop]
[endif]
*scene15

;【黒田好感度】-1（マイナス点：黒田への気遣いというよりは興味が薄いと判断されるため）
;リプレイ時+テスト時はパラメータ変化しない
[if exp="f.okeiko_gamen == true && f.event_replay != 'kuroda'"]
	[eval exp="f.para_kuroda_koukando = f.para_kuroda_koukando - 1"]
[endif]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大丈夫ですよ。特に何も気になりません」[p]
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]
[黒田目パチ1回]
[wait time=10]

[whosay name="田中　岩男" color="#775545"]
「そうなのですか」[p]
「でも黒田は何事もやり過ぎるところがありますから[r]
[sp]気になったらチクッと言ってやる方が良いですよ」[p]

[主人公目パチ1回]
[wait time=10]
;【立ち絵】黒田：苦笑
[黒田困りほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「自覚はしているよ。気をつけます」[p]
;【部分分岐】特に何も気にならないと言う場合【終了】

[主人公通常]
[wait time=10]
[黒田通常]
[wait time=10]

*kuroda_11_2_sentaku01_end

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene16==undefined"]
	[skipstop]
[endif]
*scene16

[whosay name="田中　岩男" color="#775545"]
「ま。仲良さそうで、安心したよ。俺はそろそろ行かなくちゃ」
[autosave改]
[p]
[主人公目パチ1回]
[wait time=10]
「では、またな！」[p]
[黒田閉目パチ1回]
[wait time=10]
#
田中は元気よく去って行った。日が陰り始めている。[p]
;【背景】冬の木々
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_winter_forest_yuu.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　Eddy BERTHIER　https://www.flickr.com/photos/didy_b/16022666269/'"]

;【立ち絵】黒田：ほほえみ
[黒田ほほえみ]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「我々も、そろそろ帰りの時間ですね」[p]
;【立ち絵】黒田：困（頬染め）
[chara_mod name="kuroda_base" storage="kuroda/base_haori_hohosome.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
「まさか田中に見つかるとは……。[r]
[sp]思わずあわててしまい、お恥ずかしい」[p]
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[黒田閉目パチ1回]
[wait time=10]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「面白い方でしたね」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene17==undefined"]
	[skipstop]
[endif]
*scene17

;【立ち絵】黒田：しょんぼり
[黒田しょんぼり]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「[名前]さんともっとお話ししたかったのですが[r]
[sp]すっかり時間を食われてしまいました」
[autosave改]
[p]

;【背景】公園の門（冬・夕）
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_shinrinkouen_gate_winter_yuu.jpg" time=500]
[wait time=10]
[eval exp="f.haikei_credit=''"]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_11_2_scene18==undefined"]
	[skipstop]
[endif]
*scene18

;【立ち絵】黒田：通常
[黒田通常]
[wait time=10]
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
「また日を改めて、お会いしませんか？[r]
[sp]よろしければ、再来週はいかがでしょう」[p]

;【立ち絵】主人公：笑顔
[主人公笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ。嬉しゅうございますわ！[r]
[sp]私ももっとお話ししたいと思っておりました」[p]
;【立ち絵】黒田：笑顔
[黒田笑顔]
[wait time=10]
[whosay name="黒田 将貴" color="#7a65b2"]
「そうお聞きして、嬉しいですよ！[r]
[sp]では[名前]さん、また再来週に」[p]
[fadeoutbgm time=3000]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、再来週に。ごきげんよう、黒田様」[p]
[stopbgm]
[黒田退場]
[wait time=10]
;回想記録終了 
[endreplay]
;散策再び編終了（11月第2週）
[eval exp="sf.event_kuroda_11_2 = 1"]

[if exp="tf.test_kuroda == true || f.event_replay == 'kuroda'"]
[イベントシーン終了]
[endif]
;シナリオのみのテスト中はもどる
[if exp="tf.test_kuroda == true"]
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]

;◆「休憩中」画像消去
[freeimage layer = 26]
@jump storage="event.ks" target=*event_owari
