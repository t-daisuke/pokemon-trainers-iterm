tell application "iTerm2"
  activate
  
  -- 0) ポケモンリストを取得（ファイルから読み込み、ない場合はデフォルト）
  try
    set fileContent to do shell script "cat pokemon_list.txt"
    set pokemonList to paragraphs of fileContent
    
    -- 空行を除去
    set cleanList to {}
    repeat with pokemonName in pokemonList
      if pokemonName as string is not "" then
        set end of cleanList to pokemonName as string
      end if
    end repeat
    set pokemonList to cleanList
    
    display notification "pokemon_list.txtからポケモンを読み込みました" with title "Pokemon Master"
  on error
    -- ファイルがない場合は、ランダムなポケモンを使用
    set pokemonList to {"random", "random", "random", "random", "random", "random"}
    display notification "pokemon_list.txtが見つからないため、ランダムポケモンを使用します" with title "Pokemon Master"
  end try
  
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
  repeat with i from 1 to 6
    set targetSession to session i of current tab of current window
    
    tell targetSession
      select
      delay 0.3
      write text "pokemon --clear"
      delay 0.5
      
      -- ポケモン名を取得（リストが足りない場合はランダム）
      if i ≤ (count of pokemonList) then
        set pokemonName to item i of pokemonList
        if pokemonName is "random" then
          write text "pokemon"
        else
          write text "pokemon -n " & pokemonName
        end if
      else
        write text "pokemon"
      end if
      delay 1.0
    end tell
  end repeat
  
  -- 6) 実行完了の確認メッセージ
  set pokemonNames to ""
  repeat with pokemonName in pokemonList
    set pokemonNames to pokemonNames & pokemonName & " "
  end repeat
  display notification "6匹のポケモンセットアップ完了！" & pokemonNames with title "Pokemon Master"
end tell