[clearfix]
[clearstack]
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[wait time=10]
[お稽古ボタン表示]
[wait time=10]

[if exp="f.tutorial_now == 'okeiko'"]
	@jump storage=event.ks target=*common_4_1_after_okeiko
[endif]

;↓チュートリアル中に文箱ボタンを押した場合、チュートリアルに戻る
[if exp="f.tutorial_now == 'fumibako'"]
	@jump storage=event.ks target=*common_4_1_after_fumibako
[endif]

;↓チュートリアル中に情報ボタンを押した場合、チュートリアルに戻る
[if exp="f.tutorial_now == 'info'"]
	@jump storage=event.ks target=*common_4_1_after_info
[endif]

;散策
[if exp="f.tutorial_now == 'sansaku'"]
	[clearstack]
	@jump storage=event.ks target=*common_4_1_after_sansaku
[endif]

;↓"手紙を書く"ことへの助言
[if exp="f.tutorial_now == 'write'"]
	@jump storage=event.ks target=*common_4_1_write
[endif]

;どれにも当てはまらない場合はチュートリアルの最後へ
@jump storage=event.ks target=*common_4_1_tutorial_last
