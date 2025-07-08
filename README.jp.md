# Pokemon-trainers-iterm 🎮⚡

**Pokemon-Terminalを使ったiTerm2自動化ツール**

ピカチュウと一緒に冒険に出発しよう！iTerm2で6つのペインに分割し、それぞれ異なるポケモン背景を自動で設定するAppleScriptツールです。

## 🚀 機能

- **自動ペイン分割**: iTerm2を6つのペインに自動分割（2行×3列レイアウト）
- **カスタムポケモン設定**: `pokemon_list.txt`ファイルからお気に入りポケモンを読み込み
- **フォールバック機能**: ファイルがない場合は完全ランダムでポケモンを表示
- **動的カスタマイズ**: ファイル編集で簡単にポケモンチーム変更
- **エラーハンドリング**: 安全で確実な動作保証

## 📋 必要環境

- macOS
- iTerm2
- [Pokemon-Terminal](https://github.com/LazoVelko/Pokemon-Terminal) がインストール済み
- Python 3.7以降

## 🔧 Pokemon-Terminalのインストール

```bash
# pipでインストール
pip3 install git+https://github.com/LazoCoder/Pokemon-Terminal.git

# npmでインストール（alternative）
npm install -g pokemon-terminal
```

## 📁 プロジェクト構成

```
pokemon-trainers-iterm/
├── pokemon.scpt          # メインAppleScript
├── pokemon_list.txt      # ポケモンリスト設定ファイル
├── README.jp            # 日本語説明書（このファイル）
└── README.md            # English documentation
```

## 🎯 使用方法

### 基本的な使い方

1. **プロジェクトディレクトリに移動**:
   ```bash
   cd /path/to/pokemon-trainers-iterm
   ```

2. **スクリプトを実行**:
   ```bash
   osascript pokemon.scpt
   ```

3. **結果**: iTerm2で新しいウィンドウが開き、6つのペインそれぞれに異なるポケモン背景が表示されます！

### カスタマイズ方法

#### ポケモンリストの編集

`pokemon_list.txt`ファイルを編集してお気に入りのポケモンを設定：

```txt
pikachu
charmander
jigglypuff
bidoof
chatot
mew
```

**利用可能な設定**:
- **ポケモン名**: 英語名で記述（例: `pikachu`, `charizard`, `blastoise`）
- **ランダム指定**: `random`と記述した行は`pokemon -d`、`pokemon -l`、`pokemon`のいずれかをランダム実行
- **直接オプション指定**: `-d`、`-l`と記述すると対応するオプションで実行
- **空行**: 自動的に無視されます

#### 例: 強力なポケモンチーム
```txt
mewtwo
dragonite
tyranitar
salamence
garchomp
dragapult
```

#### 例: オプション混合チーム
```txt
pikachu
-d
-l
random
charizard
random
```

#### 例: 御三家チーム
```txt
bulbasaur
charmander
squirtle
chikorita
cyndaquil
totodile
```

**オプション説明**:
- `-d`: ダークモードでポケモンを表示
- `-l`: ライトモードでポケモンを表示

## 🎨 レイアウト

スクリプト実行後のペイン配置：
```
┌─────────────┬─────────────┬─────────────┐
│   ペイン1    │   ペイン2    │   ペイン3    │
│ ポケモン1   │ ポケモン2   │ ポケモン3   │
├─────────────┼─────────────┼─────────────┤
│   ペイン4    │   ペイン5    │   ペイン6    │
│ ポケモン4   │ ポケモン5   │ ポケモン6   │
└─────────────┴─────────────┴─────────────┘
```

## ⚙️ 高度な使用方法

### ファイルなし実行（完全ランダム）
```bash
# pokemon_list.txtを一時的に移動
mv pokemon_list.txt pokemon_list_backup.txt

# ランダムポケモンで実行
osascript pokemon.scpt

# ファイルを元に戻す
mv pokemon_list_backup.txt pokemon_list.txt
```

### 複数チーム管理
```bash
# 異なるチーム設定を準備
cp pokemon_list.txt team_legendary.txt
cp pokemon_list.txt team_starter.txt

# チーム切り替え
cp team_legendary.txt pokemon_list.txt
osascript pokemon.scpt
```

## 🐛 トラブルシューティング

### よくある問題と解決方法

1. **「Your terminal emulator isn't supported」エラー**
   - iTerm2で実行されていることを確認
   - `$TERM_PROGRAM`環境変数をチェック

2. **ポケモンが表示されない**
   - Pokemon-Terminalが正しくインストールされているか確認
   - `pokemon --help`コマンドでインストール状況を確認

3. **ファイル読み込みエラー**
   - `pokemon_list.txt`がプロジェクトディレクトリにあることを確認
   - ファイルの権限をチェック（読み取り可能であること）

4. **ペイン分割に失敗**
   - iTerm2のバージョンを最新に更新
   - AppleScriptの実行権限を確認

## 📚 参考リンク

- [Pokemon-Terminal GitHub](https://github.com/LazoVelko/Pokemon-Terminal)
- [iTerm2公式サイト](https://iterm2.com/)
- [AppleScript言語ガイド](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/)

## 🎉 ライセンス

このプロジェクトはMITライセンスの下で公開されています。

---

**楽しいポケモンターミナルライフを！**

*ピカチュウ「ピカピカ！」* 