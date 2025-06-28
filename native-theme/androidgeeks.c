#include <stdio.h>

/* Gruvbox‑dark palette (hard) */
#define BG0 "#282828"
#define BG1 "#3c3836"
#define BG2 "#504945"
#define FG0 "#fbf1c7"
#define GRAY "#928374"
#define RED "#cc241d"
#define GREEN "#98971a"
#define YELL "#FFFF00" /* your bold yellow */
#define BLUE "#458588"
#define PURP "#b16286"
#define AQUA "#689d6a"

int main(void) {
  /* 0 ─ Base setup */
  puts("highlight clear");
  puts("syntax reset");
  puts("set background=dark");
  puts("let g:colors_name='androidgeeks'");

  /* 1 ─ Core UI */
  puts("hi Normal       guifg=" FG0 " guibg=" BG0 " ctermfg=223 ctermbg=235");
  puts("hi NormalFloat  guifg=" FG0 " guibg=" BG1);
  puts("hi CursorLine              guibg=" BG1);
  puts("hi CursorColumn            guibg=" BG1);
  puts("hi Visual                  guibg=" BG2);
  puts("hi LineNr       guifg=" GRAY " guibg=" BG0 " ctermfg=244");
  puts("hi CursorLineNr guifg=" YELL " gui=bold");
  puts("hi EndOfBuffer  guifg=" BG0 " guibg=" BG0 " ctermfg=235 ctermbg=235");
  puts("set fillchars=eob:\\ ");

  /* 2 ─ Syntax */
  puts("hi Comment      guifg=" GRAY " gui=italic");
  puts("hi Keyword      guifg=" RED);
  puts("hi Statement    guifg=" PURP);
  puts("hi Function     guifg=" BLUE);
  puts("hi Identifier   guifg=" BLUE);
  puts("hi String       guifg=" GREEN);
  puts("hi Number       guifg=" YELL);
  puts("hi Boolean      guifg=" YELL);
  puts("hi Type         guifg=" YELL);
  puts("hi Special      guifg=" AQUA);

  /* 3 ─ Plugin tweaks */
  puts("hi AlphaHeader  guifg=" YELL " gui=bold");
  puts("hi WhichKeyFloat           guibg=" BG0);
  puts("hi WhichKeyBorder guifg=" BG1 " guibg=" BG0);

  return 0;
}
