*start
*sansaku
@layopt layer=message1 page=fore visible = false
@layopt layer=message0 visible=true
[current layer="message0"]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer=1]
[wait time=50]

;↓チュートリアル中にボタンを押した場合、チュートリアルに戻る
[iscript]
if (typeof f.tutorial_now === 'undefined'){
	tyrano.plugin.kag.ftag.startTag("jump",{storage:"sansaku_tutorial_pass.ks",target:"*tutorial_pass"});
}
[endscript]
[wait time=50]
[主人公目パチ1回L]
[wait time=50]
[cm]
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[wait time=10]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=350 width=500 height=170 top=250 page=fore margint="50"]
[wait time=10]
[font size=25]
もうすこし[r]
お話の続きがあるみたいだわ[p]
[cm]
[wait time=10]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[wait time=10]
	@jump storage=okeiko_hyouji.ks

*tutorial_pass
@jump storage="sansaku_tutorial_pass.ks"

*after_tutorial_pass

[if exp="f.para_shujinkou_tairyoku_now < 1"]
	[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
	[wait time=10]
	[cm]
	[font size=25]
	今は疲れすぎて[r]
	できないわ……[r]
	[font size=20 color=rosybrown]
	(必要体力1以上)[p]
	[wait time=10]
	@jump storage=sansaku.ks target=*sansaku_owari
	[s]
[endif]

[if exp="f.hujieda_au == 1 && (f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || (f.okeiko_month == 2 && (f.okeiko_week == 1 || f.okeiko_week == 2)))"]
	[chara_mod name="A_mayu" storage="girl/L/mayu_komari.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
	[wait time=10]
	[cm]
	[font size=25]
	一人での外出は[r]
	禁止されてしまったわ……[p]
	[wait time=10]
	@jump storage=sansaku.ks target=*sansaku_owari
	[s]
[endif]

[clearfix]
[cm]
[freeimage layer = 21]
[freeimage layer = 22]
[freeimage layer = 24]
[stopbgm ]

;=============================================
;散策
;散策機能はokeiko.ksからcallで呼び出されるため、この中で重複callはできないはずだけど、callスタックを消してみる↓
;=============================================
[iscript]
TG.stat.stack["call"] = [];
[endscript]
;↓磯野のアドバイスイベント終了前に散策ボタンを押した際、主人公セリフを表示するためのフラグ(アドバイスイベント終了フラグ)
[eval exp="f.event_advice = 1"]
;-----設定タグここから-----
[if exp="sf.BGM=='OFF'"]
	[iscript]
	/*BGMを再生しない*/
	TG.stat.play_bgm = false;
	[endscript]
	;ロード時点で再生していたBGMを停止します。
	[stopbgm ]
	[else]
	[iscript]
	/*BGMを再生する*/
	TG.stat.play_bgm = true;
	[endscript]
[endif]

[if exp="sf.SE=='OFF'"]
	[iscript]
	/*効果音を再生しない*/
	TG.stat.play_se = false;
	[endscript]
	;ロード時点で再生していたSEを停止します。
	[stopse ]
	[else]
	[iscript]
	/*効果音を再生する*/
	TG.stat.play_se = true;
	[endscript]
[endif]
;-----設定タグここまで-----

[freeimage layer = 24]
[wait time=50]

;◆散策中はフキダシを透明化
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[wait time=50]
;◆散策中は主人公立ち絵（L）を透明化
;[chara_mod name="A_base" storage="toumei.gif" time=0]
;[wait time=50]
;[chara_mod name="A_mayu" storage="toumei.gif" time=0]
;[wait time=50]
;[chara_mod name="A_me" storage="toumei.gif" time=0]
;[wait time=50]
;[chara_mod name="A_kuti" storage="toumei.gif" time=0]
;[wait time=50]

[iscript]
$('.A_base').remove();
$('.A_mayu').remove();
$('.A_me').remove();
$('.A_kuti').remove();
[endscript]
[wait time=10]

[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]

*sansaku_machi
[wait time=50]
;=============================================
;◆◆散策機能_個別イベント発生判定開始:"sansaku_hantei_kobetsu.ks"として切り出しました。
;=============================================
*sansaku_machi_event_hantei
;=============================================
@jump storage="sansaku_hantei_kobetsu.ks" target="*sansaku_machi_event_hantei"

;=============================================
;◆攻略対象固有イベント判定終わり
;=============================================
*event_hantei_owari

;=============================================
;◆共通イベント判定
;=============================================
*sansaku_hantei_common
;=============================================
;◆各ルート問題発生時に共通散策イベント判定を回避(後日落ち着いてから、共通イベントを見ていただくことができます)
;「○○の話題で手紙を書いてみましょう」など散策イベント中の主人公の言動と物語の流れが合わないため、後日見ていただくようにします
;各ルート回避時期については調整可能です(スレで相談します)
;=============================================
;◇財前ルート11月4週～1月3週は共通散策イベント発生回避
[if exp="f.zaizen_au == 1 && ((f.okeiko_month == 11 && f.okeiko_week == 4)|| f.okeiko_month == 12 || (f.okeiko_month == 1 && f.okeiko_week != 4))"]
	@jump storage="sansaku.ks" target=*sansaku_hantei_common_owari
[endif]
;◇四条ルート10月1週～11月2週は共通散策イベント発生回避(11月1週イベント後自動で3週になるはずですが、念のため11月2週も回避します)
[if exp="f.sijyou_au == 1 && (f.okeiko_month == 10 && (f.okeiko_month == 11 && (f.okeiko_week == 1 && f.okeiko_week == 2)))"]
	@jump storage="sansaku.ks" target=*sansaku_hantei_common_owari
[endif]
;◇葛城宮ルート10月2週～2月1週は共通散策イベント発生回避
[if exp="f.katuraginomiya_au == 1 && ((f.okeiko_month == 10 && f.okeiko_week != 1)|| f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 ||(f.okeiko_month == 2 && f.okeiko_week == 1))"]
	@jump storage="sansaku.ks" target=*sansaku_hantei_common_owari
[endif]
;◇藤枝ルート11月1週～2月2週は共通散策イベント発生回避(2月3週から手紙を許される)
[if exp="f.hujieda_au == 1 && (f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 ||(f.okeiko_month == 2 && (f.okeiko_week == 1 && f.okeiko_week == 2)))"]
	@jump storage="sansaku.ks" target=*sansaku_hantei_common_owari
[endif]
;◇黒田ルート11月4週～12月4週は共通散策イベント発生回避
[if exp="f.kuroda_au == 1 && ((f.okeiko_month == 11 && f.okeiko_week == 4)|| f.okeiko_month == 12)"]
	@jump storage="sansaku.ks" target=*sansaku_hantei_common_owari
[endif]

@jump storage="sansaku_hantei_common.ks" target=*start
*sansaku_hantei_common_owari

;=============================================
;◆散策イベント
;=============================================
*sansaku_machi_normal
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[wait time=10]
[stopbgm]
[イベントシーン構築]
[wait time=10]

;◆主人公画像(S表示【マクロで切り替え】
;主人公合体画像表示　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=50]
;主人公合体画像削除
[iscript]
$('.junbi_girl').remove();
[endscript]
[wait time=50]
;↓テストプレイ中に通常散策でプリロード画面が表示されたままになる場合があることを確認しましたので追記します
[プリロード画面消去]

町へ出た。[r]
行きかう人々や商人たちの声がにぎやかに響く。[p]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]

*sansaku_machi_seika
@jump storage="sansaku_machi_seika.ks" target=*sansaku_machi_seika
;動作安定化のため、散策パラ変動処理↑*sansaku_machi_seikaと散策終了処理↓*sansaku_owariをそれぞれjump先のファイルへ切り出しました。◆jsYiJcqRkk
;マクロ元にも反映しましたので切り出し先処理に飛ぶと思いますが、念のため切り出し元ラベル下にもjumpを置きます。

;散策　終
*sansaku_owari
@jump storage="sansaku_machi_seika.ks" target=*sansaku_owari

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
[bg storage="toumei.gif" time=1]
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
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]

[freeimage layer = 27]
[wait time=10]

[return]
