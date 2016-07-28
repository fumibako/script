*start
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false

[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]

;=============================================
;動作確認用：SE
;=============================================

[cm]

;背景変更:主人公邸_庭
[背景_庭]

;【SE】足音（靴
[playse storage=walk_kutsu.ogg loop=false ]

;【SE】ドアが開く
[playse storage=door_open.ogg loop=false ]

;【SE】雷（ゴロゴロ
[playse storage=thunder_gorogoro.ogg loop=false ]

;【SE】落雷
[playse storage=thunder.ogg loop=false ]

;【SE】雨
[playse storage=rain.ogg loop=false ]

;【SE】キラキラ
[playse storage=shine.ogg loop=false ]

;【SE】ペンで書く
[playse storage=pen_write.ogg loop=false ]

;【SE】ペンのキャップを閉める
[playse storage=pen_katya.ogg loop=false ]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

;【SE】紙に触れる（早・軽）
[playse storage=paper_open_fast.ogg loop=false ]

;【SE】紙を折る（丁寧）
[playse storage=paper_oru.ogg loop=false ]

;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]

;【SE】軽い足音（小走りフェードイン）
[playse storage=girl_in_run.ogg loop=false ]

;【SE】軽い足音（小走りすぐ止まる）
[playse storage=girl_out_run_stop.ogg loop=false ]

;【SE】軽い足音（フェードアウト）
[playse storage=girl_out_walk.ogg loop=false ]

;【SE】軽い足音（フェードイン）
[playse storage=girl_in_walk.ogg loop=false ]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]

;【SE】足音3人石畳（フェードインアウト）
[playse storage=asioto_isidatami_3nin.ogg loop=false ]

;【SE】足音複数廊下
[playse storage=asioto_rouka_3nin.ogg loop=false ]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]

;【SE】襖を開ける（勢いよく）
[playse storage=fusuma-open_fast.ogg loop=false ]

;【SE】襖を閉じる（勢いよく）
[playse storage=fusuma-close_fast.ogg loop=false ]

;【SE】時計（広間カチコチ）
[playse storage=tokei_hiroma.ogg loop=false ]

;【SE】うぐいす（ケキョケキョ）
[playse storage=tori_uguisu_pikyo.ogg loop=false ]

;【SE】すずめ（チュンチュン）
[playse storage=tori_suzume.ogg loop=false ]

;【SE】鳥たち（複数の鳥の声）
[playse storage=tori_yatyou.ogg loop=false ]

;【SE】コサギ（グアーグアー）
[playse storage=tori_kosagi.ogg loop=false ]

;【SE】コサギ羽ばたき
[playse storage=tori_habataki_kosagi.ogg loop=false ]

;【SE】スズムシ（リーンリーン）
[playse storage=mushi_suzumushi.ogg loop=false ]

;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]

;【SE】茶器に触れる（カチャ）
[playse storage=tya_katya.ogg loop=false ]

;【SE】茶器に触れる（カチャ：小さく）
[playse storage=tya_katya_S.ogg loop=false ]

;【SE】茂み（ガサガサ）
[playse storage=shigemi_gasagasa.ogg loop=false ]


**********************この先ファイル未だ
;【SE】葉のざわめき（ザザー…）
[playse storage=.ogg loop=false ]



