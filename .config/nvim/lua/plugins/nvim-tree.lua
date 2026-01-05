return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      -- git関連の設定
      git = {
        enable = true,
        -- trueだとgitignoreを隠す、falseだと表示する
        ignore = false,
      },
      -- フィルタ関連の設定
      filters = {
        -- ドットファイル（.env等）も表示したい場合はここをfalseに
        dotfiles = false,
      },
      -- その他、お好みの設定をここに追加
      view = {
        width = 30,
        side = "left",
      },
    },
  },
}

