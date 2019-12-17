import os
import shutil
import sys
from pathlib import Path

HOME = Path().home()
VIM_HOME = Path().home()/'.vim'
vimrc_src = Path('vimrc')

if sys.platform == 'darwin':
    char = '.'
elif sys.platform == 'win32':
    char = '_'

# symlink vimrc file
vimrc_dst = HOME/(char+str(vimrc_src.name))
if not vimrc_dst.exists():
    vimrc_dst.symlink_to(vimrc_src.absolute())

# move abbreviations file to the correct folder
abbr_src = Path('abbr.vim')
abbr_dst = VIM_HOME/'abbr'/abbr_src.name
if not abbr_dst.exists():
    abbr_dst.mkdir(parents=True)
    abbr_dst.symlink_to(abbr_src.absolute())

print('Done!')

