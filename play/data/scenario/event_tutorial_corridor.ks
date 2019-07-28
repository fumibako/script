[clearfix]
[clearstack]

[if exp="f.tutorial_now == 'okeiko'"]
	[call target="*tutorial_back_hyouji"]
	@jump storage=event.ks target=*common_4_1_after_okeiko
[endif]

;↓チュートリアル中に文箱ボタンを押した場合、チュートリアルに戻る
[if exp="f.tutorial_now == 'fumibako'"]
	[call target="*tutorial_back_hyouji"]
	@jump storage=event.ks target=*common_4_1_after_fumibako
[endif]

;↓チュートリアル中に情報ボタンを押した場合、チュートリアルに戻る
[if exp="f.tutorial_now == 'info'"]
	[call target="*tutorial_back_hyouji"]
	@jump storage=event.ks target=*common_4_1_after_info
[endif]

;散策
[if exp="f.tutorial_now == 'sansaku'"]
	[clearstack]
	[call target="*tutorial_back_hyouji"]
	@jump storage=event.ks target=*common_4_1_after_sansaku
[endif]

;↓"手紙を書く"ことへの助言
[if exp="f.tutorial_now == 'write'"]
	[call target="*tutorial_back_hyouji"]
	@jump storage=event.ks target=*common_4_1_write
[endif]

;どれにも当てはまらない場合はお稽古画面表示に戻る
@jump storage=okeiko_hyouji.ks target=*after_tutorial_back_hantei

*tutorial_back_hyouji
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[wait time=10]
[お稽古ボタン表示]
[wait time=10]
[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
[return]
