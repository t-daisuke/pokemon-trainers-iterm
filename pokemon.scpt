tell application "iTerm2"
  activate
  
  -- 1) 新しいウィンドウを作成
  create window with default profile
  
  -- 2) ウィンドウ内部が安定するのを待つ
  delay 1.0
  
  -- 3) ペインを分割して6つのペインを作成
  -- 最初に横分割（上下2つ）
  tell current session of current window
    split horizontally with default profile
  end tell
  
  delay 0.3
  
  -- 上のペインを縦に2分割（合計3つ）
  tell first session of current tab of current window
    split vertically with default profile
    split vertically with default profile
  end tell
  
  delay 0.3
  
  -- 下のペインを縦に2分割（合計6つ）
  tell fourth session of current tab of current window
    split vertically with default profile
    split vertically with default profile
  end tell
  
  -- 4) 分割完了を待つ
  delay 1.0
  
  -- 5) 各ペインでポケモンを設定
  -- 1つ目のペイン: ピカチュウ
  tell first session of current tab of current window
    select
    delay 0.3
    write text "pokemon --clear"
    delay 0.5
    write text "pokemon -n pikachu"
    delay 1.0
  end tell
  
  -- 2つ目のペイン: ヒトカゲ
  tell second session of current tab of current window
    select
    delay 0.3
    write text "pokemon --clear"
    delay 0.5
    write text "pokemon -n charmander"
    delay 1.0
  end tell
  
  -- 3つ目のペイン: プクリン
  tell third session of current tab of current window
    select
    delay 0.3
    write text "pokemon --clear"
    delay 0.5
    write text "pokemon -n jigglypuff"
    delay 1.0
  end tell
  
  -- 4つ目のペイン: ビッパ
  tell fourth session of current tab of current window
    select
    delay 0.3
    write text "pokemon --clear"
    delay 0.5
    write text "pokemon -n bidoof"
    delay 1.0
  end tell
  
  -- 5つ目のペイン: ペラップ
  tell fifth session of current tab of current window
    select
    delay 0.3
    write text "pokemon --clear"
    delay 0.5
    write text "pokemon -n chatot"
    delay 1.0
  end tell
  
  -- 6つ目のペイン: ミュウ
  tell sixth session of current tab of current window
    select
    delay 0.3
    write text "pokemon --clear"
    delay 0.5
    write text "pokemon -n mew"
    delay 1.0
  end tell
  
  -- 6) 実行完了の確認メッセージ
  display notification "6匹のポケモンセットアップ完了！ピカチュウ、ヒトカゲ、プクリン、ビッパ、ペラップ、ミュウ" with title "Pokemon Master"
end tell