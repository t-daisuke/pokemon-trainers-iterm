tell application "iTerm2"
  activate
  
  -- 1) 新しいウィンドウを作成
  create window with default profile
  
  -- 2) ウィンドウ内部が安定するのを待つ
  delay 1.0
  
  -- 3) 現在のセッションを横分割
  tell current session of current window
    split horizontally with default profile
  end tell
  
  -- 4) 分割完了を待つ
  delay 0.5
  
  -- 5) 最初のペインにフォーカスして実行（ピカチュウ）
  tell first session of current tab of current window
    select
    delay 0.3
    write text "pokemon --clear"
    delay 0.5
    write text "pokemon -n pikachu"
    delay 1.5
  end tell
  
  -- 6) 二番目のペインにフォーカスして実行（リザードン）
  tell second session of current tab of current window
    select
    delay 0.3
    write text "pokemon --clear"
    delay 0.5
    write text "pokemon -n charizard"
    delay 1.5
  end tell
  
  -- 7) 実行完了の確認メッセージ
  display notification "ピカチュウとリザードンのセットアップ完了！" with title "Pokemon Master"
end tell