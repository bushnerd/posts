" 不支持nnoremap，只有noremap
exmap increase_heading_level obcommand obsidian-smarter-md-hotkeys:smarter-toggle-heading-reverse
nmap < :increase_heading_level
exmap decrease_heading_level obcommand obsidian-smarter-md-hotkeys:smarter-toggle-heading
nmap > :decrease_heading_level

" 为什么要exmap一下，把next-tab映射成next_tab，因为vim不支持-这个符号作为变量，都要改为_
" 具体什么原因位置
exmap next_tab obcommand workspace:next-tab
nmap K :next_tab
exmap previous_tab obcommand workspace:previous-tab
nmap J :previous_tab

" 移动标签
exmap swap_prev_tab obcommand pane-relief:swap-prev
nmap [[ :swap_prev_tab
exmap swap_next_tab obcommand pane-relief:swap-next
nmap ]] :swap_next_tab

" editor:follow-link在当前tab打开
" editor:open-link-in-new-leaf，新建tab打开
" editor:open-link-in-new-split,分割窗口打开
" editor:open-link-in-new-window,打开新的的应用程序窗口
exmap editor_follow_link obcommand editor:follow-link
nmap gd :editor_follow_link
exmap open_link_in_new_leaf obcommand editor:open-link-in-new-leaf
nmap gt :open_link_in_new_leaf

" 注意，此处是对于选定某部分进行变换，因此是在visual模式
" gc会运行 :smarter_inline_code，但是按下:键后会取消当前选择, 目前无解决办法
" 由于这个原因，只要是涉及到选择一部分的应该都无法实现
" 因此只能先使用obisidan中的快捷键
exmap smarter_inline_code obcommand obsidian-smarter-md-hotkeys:smarter-inline-code
nmap gc :smarter_inline_code
vmap gc :smarter_inline_code
" gc会运行:editor_toggle_code，但是按下:键后会取消当前选择, 目前无解决办法
" 由于这个原因，只要是涉及到选择一部分的应该都无法实现
" exmap editor_toggle_code obcommand editor:toggle-code
" nmap gc :editor_toggle_code
" vmap gc :editor_toggle_code


" editor:toggle-highlight
" exmap toggle_highlight obcommand editor:toggle-highlight
" vmap gh :toggle_highlight

" obsidian-smarter-md-hotkeys:smarter-highlight
exmap smarter_highlight obcommand obsidian-smarter-md-hotkeys:smarter-highlight
nmap gh :smarter_highlight
vmap gh :smarter_highlight

exmap number_list_toggle obcommand editor:toggle-numbered-list
nmap gl :number_list_toggle
vmap gl :number_list_toggle

exmap rs obcommand remotely-save:start-sync

" exmap open_better_commmand_palette obcommand obsidian-better-command-palette:open-better-commmand-palette
" nmap : :open_better_commmand_palette
" obsidian-better-command-palette:open-better-commmand-palette
"

exmap new_tab obcommand workspace:new-tab
nmap tt :new_tab

exmap close_tab obcommand workspace:close
nmap zz :close_tab

" gJ的作用是合并下面一行到当前行,并且不加空格
" 从pdf中复制过来的文件很有用
" 但是gJ有点麻烦，而gj已经有j来代替，所以做如下映射
noremap gj gJ

" Have j and k navigate visual lines rather than logical ones
noremap j gj
noremap k gk

" I like using H and L for beginning/end of line
noremap H ^
noremap L $
" Quickly remove search highlights
nmap <F9> :nohl

" Yank to system clipboard
set clipboard=unnamedplus

" s按键原功能为替换，意义不大
exmap activate_jump_to_anywhere obcommand mrj-jump-to-link:activate-jump-to-anywhere
nunmap s
nmap s :activate_jump_to_anywhere

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall
exmap foldall obcommand editor:fold-all
nmap zM :foldall

" obsidian原本的fold-less和fold-more的有一些问题，无法正常使用
exmap foldless obcommand editor:fold-less
nmap zr :foldless
exmap foldmore obcommand editor:fold-more
nmap zm :foldmore

exmap foldtoggle obcommand editor:toggle-fold
nmap za :foldtoggle


" exmap strikethrough_toggle obcommand editor:toggle-strikethrough
" nmap gs :strikethrough_toggle

exmap enrich_vim_search_pattern obcommand obsidian-vim-multibyte-char-search:enrich-current-vim-search-pattern
exmap search_multibytes obcommand obsidian-vim-multibyte-char-search:search-multibytes
nmap / :search_multibytes


" 前面加上obcommand，可以在:命令运行
" Available commands: editor:save-file
" editor:follow-link
" editor:open-link-in-new-leaf
" editor:open-link-in-new-split
" editor:open-link-in-new-window
" editor:focus-top
" editor:focus-bottom
" editor:focus-left
" editor:focus-right
" workspace:toggle-pin
" workspace:split-vertical
" workspace:split-horizontal
" workspace:toggle-stacked-tabs
" workspace:edit-file-title
" workspace:copy-path
" workspace:copy-url
" workspace:undo-close-pane
" workspace:export-pdf
" editor:rename-heading
" workspace:open-in-new-window
" workspace:move-to-new-window
" workspace:next-tab
" workspace:goto-tab-1
" workspace:goto-tab-2
" workspace:goto-tab-3
" workspace:goto-tab-4
" workspace:goto-tab-5
" workspace:goto-tab-6
" workspace:goto-tab-7
" workspace:goto-tab-8
" workspace:goto-last-tab
" workspace:previous-tab
" workspace:new-tab
" obsidian-smarter-md-hotkeys:smarter-asterisk-bold
" obsidian-smarter-md-hotkeys:smarter-underscore-bold
" obsidian-smarter-md-hotkeys:smarter-asterisk-italics
" obsidian-smarter-md-hotkeys:smarter-underscore-italics
" obsidian-smarter-md-hotkeys:smarter-comments
" obsidian-smarter-md-hotkeys:smarter-html-comments
" obsidian-smarter-md-hotkeys:smarter-inline-code
" obsidian-smarter-md-hotkeys:smarter-highlight
" obsidian-smarter-md-hotkeys:smarter-bold-highlight
" obsidian-smarter-md-hotkeys:smarter-italics-highlight
" obsidian-smarter-md-hotkeys:smarter-strikethrough
" obsidian-smarter-md-hotkeys:smarter-wikilink
" obsidian-smarter-md-hotkeys:smarter-wikilink-heading
" obsidian-smarter-md-hotkeys:smarter-md-link
" obsidian-smarter-md-hotkeys:smarter-math
" obsidian-smarter-md-hotkeys:smarter-callout-label
" obsidian-smarter-md-hotkeys:smarter-quotation-marks
" obsidian-smarter-md-hotkeys:smarter-single-quotation-marks
" obsidian-smarter-md-hotkeys:smarter-round-brackets
" obsidian-smarter-md-hotkeys:smarter-square-brackets
" obsidian-smarter-md-hotkeys:smarter-curly-brackets
" obsidian-smarter-md-hotkeys:smarter-delete
" obsidian-smarter-md-hotkeys:smarter-upper-lower
" obsidian-smarter-md-hotkeys:smarter-insert-new-line
" obsidian-smarter-md-hotkeys:smarter-toggle-heading
" obsidian-smarter-md-hotkeys:smarter-toggle-heading-reverse
" obsidian-smarter-md-hotkeys:smarter-delete-current-file
" obsidian-smarter-md-hotkeys:smarter-copy-path
" obsidian-smarter-md-hotkeys:toggle-line-numbers
" obsidian-smarter-md-hotkeys:toggle-readable-line-length
" obsidian-smarter-md-hotkeys:smarter-copy-file-name
" obsidian-smarter-md-hotkeys:hide-notice
" remotely-save:start-sync
" remotely-save:start-sync-dry-run
" remotely-save:export-sync-plans-json
" remotely-save:export-sync-plans-table
" remotely-save:export-logs-in-db
" obsidian-git:edit-gitignore
" obsidian-git:open-git-view
" obsidian-git:open-diff-view
" obsidian-git:view-file-on-github
" obsidian-git:view-history-on-github
" obsidian-git:pull
" obsidian-git:add-to-gitignore
" obsidian-git:push
" obsidian-git:backup-and-close
" obsidian-git:commit-push-specified-message
" obsidian-git:commit
" obsidian-git:commit-specified-message
" obsidian-git:commit-staged
" obsidian-git:commit-staged-specified-message
" obsidian-git:push2
" obsidian-git:stage-current-file
" obsidian-git:unstage-current-file
" obsidian-git:edit-remotes
" obsidian-git:remove-remote
" obsidian-git:delete-repo
" obsidian-git:init-repo
" obsidian-git:clone-repo
" obsidian-git:list-changed-files
" obsidian-git:switch-branch
" obsidian-git:create-branch
" obsidian-git:delete-branch
" url-into-selection:paste-url-into-selection
" obsidian-better-command-palette:open-better-commmand-palette
" obsidian-better-command-palette:open-better-commmand-palette-file-search
" obsidian-better-command-palette:open-better-commmand-palette-tag-search
" obsidian-minimal-settings:increase-body-font-size
" obsidian-minimal-settings:decrease-body-font-size
" obsidian-minimal-settings:toggle-minimal-dark-cycle
" obsidian-minimal-settings:toggle-minimal-light-cycle
" obsidian-minimal-settings:toggle-hidden-borders
" obsidian-minimal-settings:toggle-colorful-headings
" obsidian-minimal-settings:toggle-minimal-focus-mode
" obsidian-minimal-settings:toggle-minimal-colorful-frame
" obsidian-minimal-settings:cycle-minimal-table-width
" obsidian-minimal-settings:cycle-minimal-image-width
" obsidian-minimal-settings:cycle-minimal-iframe-width
" obsidian-minimal-settings:cycle-minimal-chart-width
" obsidian-minimal-settings:cycle-minimal-map-width
" obsidian-minimal-settings:toggle-minimal-img-grid
" obsidian-minimal-settings:toggle-minimal-switch
" obsidian-minimal-settings:toggle-minimal-light-default
" obsidian-minimal-settings:toggle-minimal-light-white
" obsidian-minimal-settings:toggle-minimal-light-tonal
" obsidian-minimal-settings:toggle-minimal-light-contrast
" obsidian-minimal-settings:toggle-minimal-dark-default
" obsidian-minimal-settings:toggle-minimal-dark-tonal
" obsidian-minimal-settings:toggle-minimal-dark-black
" obsidian-minimal-settings:toggle-minimal-atom-light
" obsidian-minimal-settings:toggle-minimal-ayu-light
" obsidian-minimal-settings:toggle-minimal-catppuccin-light
" obsidian-minimal-settings:toggle-minimal-default-light
" obsidian-minimal-settings:toggle-minimal-gruvbox-light
" obsidian-minimal-settings:toggle-minimal-everforest-light
" obsidian-minimal-settings:toggle-minimal-macos-light
" obsidian-minimal-settings:toggle-minimal-notion-light
" obsidian-minimal-settings:toggle-minimal-nord-light
" obsidian-minimal-settings:toggle-minimal-rose-pine-light
" obsidian-minimal-settings:toggle-minimal-solarized-light
" obsidian-minimal-settings:toggle-minimal-things-light
" obsidian-minimal-settings:toggle-minimal-atom-dark
" obsidian-minimal-settings:toggle-minimal-ayu-dark
" obsidian-minimal-settings:toggle-minimal-catppuccin-dark
" obsidian-minimal-settings:toggle-minimal-dracula-dark
" obsidian-minimal-settings:toggle-minimal-default-dark
" obsidian-minimal-settings:toggle-minimal-gruvbox-dark
" obsidian-minimal-settings:toggle-minimal-everforest-dark
" obsidian-minimal-settings:toggle-minimal-macos-dark
" obsidian-minimal-settings:toggle-minimal-nord-dark
" obsidian-minimal-settings:toggle-minimal-notion-dark
" obsidian-minimal-settings:toggle-minimal-rose-pine-dark
" obsidian-minimal-settings:toggle-minimal-solarized-dark
" obsidian-minimal-settings:toggle-minimal-things-dark
" obsidian-minimal-settings:toggle-minimal-dev-block-width
" obsidian-hider:toggle-tab-containers
" obsidian-hider:toggle-app-ribbon
" obsidian-hider:toggle-hider-status
" note-refactor-obsidian:app:extract-selection-first-line
" note-refactor-obsidian:app:extract-selection-content-only
" note-refactor-obsidian:app:extract-selection-autogenerate-name
" note-refactor-obsidian:app:split-note-first-line
" note-refactor-obsidian:app:split-note-content-only
" note-refactor-obsidian:app:split-note-by-heading-h1
" note-refactor-obsidian:app:split-note-by-heading-h2
" note-refactor-obsidian:app:split-note-by-heading-h3
" obsidian-vim-multibyte-char-search:enrich-current-vim-search-pattern
" obsidian-vim-multibyte-char-search:search-multibytes
" number-headings-obsidian:number-headings-with-options
" number-headings-obsidian:number-headings
" number-headings-obsidian:remove-number-headings
" number-headings-obsidian:save-settings-to-front-matter
" obsidian-linter:lint-file
" obsidian-linter:lint-file-unless-ignored
" obsidian-linter:lint-all-files
" obsidian-linter:lint-all-files-in-folder
" obsidian-linter:paste-as-plain-text
" easy-typing-obsidian:easy-typing-format-article
" easy-typing-obsidian:easy-typing-format-selection
" easy-typing-obsidian:easy-typing-delete-blank-line
" easy-typing-obsidian:easy-typing-insert-codeblock
" easy-typing-obsidian:easy-typing-format-switch
" obsidian-quiet-outline:quiet-outline
" obsidian-quiet-outline:quiet-outline-reset
" obsidian-quiet-outline:quiet-outline-focus-input
" obsidian-quiet-outline:quiet-outline-copy-as-text
" leader-hotkeys-obsidian:register-modal
" obsidian-heading-shifter:apply-heading0
" obsidian-heading-shifter:apply-heading1
" obsidian-heading-shifter:apply-heading2
" obsidian-heading-shifter:apply-heading3
" obsidian-heading-shifter:apply-heading4
" obsidian-heading-shifter:apply-heading5
" obsidian-heading-shifter:apply-heading6
" obsidian-heading-shifter:increase-heading
" obsidian-heading-shifter:decrease-heading
" obsidian-heading-shifter:insert-heading-current
" obsidian-heading-shifter:insert-heading-deeper
" obsidian-heading-shifter:insert-heading-higher
" app:go-back
" app:go-forward
" app:open-vault
" theme:use-dark
" theme:use-light
" theme:switch
" app:open-settings
" app:show-release-notes
" markdown:toggle-preview
" workspace:close
" workspace:close-window
" workspace:close-others
" app:delete-file
" app:toggle-left-sidebar
" app:toggle-right-sidebar
" app:toggle-default-new-pane-mode
" app:open-help
" app:reload
" app:show-debug-info
" window:toggle-always-on-top
" window:zoom-in
" window:zoom-out
" window:reset-zoom
" file-explorer:new-file
" file-explorer:new-file-in-new-pane
" open-with-default-app:open
" file-explorer:move-file
" open-with-default-app:show
" editor:open-search
" editor:open-search-replace
" editor:focus
" editor:toggle-fold
" editor:fold-all
" editor:unfold-all
" editor:fold-less
" editor:fold-more
" editor:insert-wikilink
" editor:insert-embed
" editor:insert-link
" editor:insert-tag
" editor:set-heading
" editor:set-heading-0
" editor:set-heading-1
" editor:set-heading-2
" editor:set-heading-3
" editor:set-heading-4
" editor:set-heading-5
" editor:set-heading-6
" editor:toggle-bold
" editor:toggle-italics
" editor:toggle-strikethrough
" editor:toggle-highlight
" editor:toggle-code
" editor:toggle-blockquote
" editor:toggle-comments
" editor:toggle-bullet-list
" editor:toggle-numbered-list
" editor:toggle-checklist-status
" editor:cycle-list-checklist
" editor:insert-callout
" editor:swap-line-up
" editor:swap-line-down
" editor:attach-file
" editor:delete-paragraph
" editor:toggle-spellcheck
" editor:context-menu
" file-explorer:open
" file-explorer:reveal-active-file
" global-search:open
" switcher:open
" graph:open
" graph:open-local
" graph:animate
" backlink:open
" backlink:open-backlinks
" backlink:toggle-backlinks-in-document
" canvas:new-file
" canvas:export-as-image
" canvas:jump-to-group
" canvas:convert-to-file
" outgoing-links:open
" outgoing-links:open-for-current
" tag-pane:open
" daily-notes
" daily-notes:goto-prev
" daily-notes:goto-next
" insert-template
" insert-current-date
" insert-current-time
" note-composer:merge-file
" note-composer:split-file
" note-composer:extract-heading
" command-palette:open
" starred:open
" starred:star-current-file
" file-recovery:open
" editor:toggle-source
" obsidian-mindmap-nextgen:mindmapnextgen:unpinned
" obsidian-mindmap-nextgen:mindmapnextgen:pinned
" mrj-jump-to-link:activate-jump-to-link
" mrj-jump-to-link:activate-jump-to-anywhere
" mrj-jump-to-link:activate-lightspeed-jump
" obsidian-auto-link-title:auto-link-title-paste
" obsidian-auto-link-title:auto-link-title-normal-paste
" obsidian-auto-link-title:enhance-url-with-title
" heycalmdown-navigate-cursor-history:cursor-position-backward
" heycalmdown-navigate-cursor-history:cursor-position-forward
