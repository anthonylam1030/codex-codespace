# Codex Codespace

Linux 雲端開發環境；建立容器後自動安裝最新版 Codex CLI。

[建立 Codespace](https://codespaces.new/anthonylam1030/codex-codespace)

## 開始使用

1. 開啟上方連結，選擇 main，確認 GitHub 顯示的機型與用量後建立。
2. 等待 postCreateCommand 完成。在 Terminal 執行：
   ```bash
   codex --version
   codex login --device-auth
   ```
3. 按終端機提示，在自己的瀏覽器開啟登入網址並輸入一次性代碼。若此功能尚未啟用，先在 ChatGPT 安全設定啟用 device code login。
4. 登入後執行：
   ```bash
   codex login status
   codex
   ```

## 安裝與故障排除

- 基礎環境：Microsoft Dev Containers 的 Node.js 22／Debian Bookworm Linux 映像。
- Codex 安裝至使用者的 ~/.local；不需 sudo。首次安裝需要連接 npm。
- npm 下載設有重試；這不能保證解決持續 DNS 或網絡封鎖。
- 若安裝失敗，在 Repository 根目錄重試：
  ```bash
  bash .devcontainer/install-codex.sh
  ```
- 若是在加入此配置前建立的 Codespace，使用 VS Code 命令「Codespaces: Rebuild Container」。
- 安裝腳本會顯示 Codex 版本；只有看到版本輸出才能確認 CLI 可執行。
- 每次重建會安裝當時的 latest 版本；這不是鎖定版本的可重現建置。

## 檔案與帳戶

請把工作 commit 並 push 到 GitHub。不要把登入憑證、API key 或 ~/.codex/auth.json 放入 Repository。
本配置不會自動登入 ChatGPT，不會設定全天候排程，也不會自動連接目前的 ChatGPT 對話。
GitHub Codespaces 的可用額度、收費及停止／保留設定以你的 GitHub 帳戶頁面為準；不要當作永久免費、持續開機的伺服器。

## 官方說明

- [Codex CLI](https://learn.chatgpt.com/docs/codex/cli)
- [Codex 登入及 device code authentication](https://learn.chatgpt.com/docs/auth?surface=cli)
