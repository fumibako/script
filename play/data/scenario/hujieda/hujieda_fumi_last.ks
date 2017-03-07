;=============================================
;手紙編
;=============================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[eval exp="sf.FButton='OFF'"]
*fumi_last
;=============================================
;『最後の手紙』(案)
;=============================================
*fumi_sintya
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『最後の手紙』[p]
[endif]
[手紙藤枝 fumi_number=]
箏の奏者様へ[l][r]
[r]
[sp]貴方様の箏の音色に惹かれて手紙を書いた者です。[r]
[r]
[sp]このところ、箏の音が遠のいたように感じられますが、[r]
いかがお過ごしでしょうか。[r]
[r]
[sp]今後は貴方様へお手紙を書くことが難しくなって[r]
しまいましたので、そのことをお知らせいたしたく、[r]
筆を取りました。[p]
[sp][r][r]
[sp]これからも陰ながら応援しています。[r]
[r]時々、箏の練習をして下さると嬉しいです。[r]
[sp]それではお元気にお過ごしください。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　Ｈ[p]
[endif]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[4(藤枝を示すNumber)][(配列中の位置ナンバー)]
  [eval exp="f.midoku_list_hairetsu[4][27] = 0"]
   [freeimage layer = 29]
   @jump storage=info_oaite_fumi.ks target=&f.viewing_target
   [s]
[endif]
[手紙藤枝読了 fumi_number=]
[イベントシーン終了]
@jump storage="test_hujieda.ks"
[s]


;藤枝 最後の手紙
;・4月みたが5月をみていない→そのまま連絡なし
;・5月をみたが6月をみていない→そのまま連絡なし
;・6月をみたが7月をみていない→8月1週に進行不可時の手紙到着
;・7月をみたが8月をみていない→8月4週に進行不可時の手紙到着
;・8月をみたが9月で藤枝以外のルートに進行→そのまま連絡なし
