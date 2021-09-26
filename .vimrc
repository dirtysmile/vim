" Syntax Highlighting
if has("syntax")  
    syntax on
endif

set autoindent  "자동 들여쓰기를 사용합니다.
set cindent  "c언어 스타일의 들여쓰기를 사용합니다.
set nu "화면에 행 번호를 표시합니다.
set ts=4 sw=4 "ts : 탭크기 , sw : 블록 이동시 열의 너비
set hls "검색결과 하이라이트
set et "탭을 공백으로 전환

syntax enable "문법에러 표시

colorscheme jellybeans

set laststatus=2  
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\  
set clipboard=unnamed
