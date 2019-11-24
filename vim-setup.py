import os
import shutil
import sys
from pathlib import Path

src = Path('vimrc')

if sys.platform == 'darwin':
    char = '.'
elif sys.platform == 'win32':
    char = '_'

dst = Path().home()/(char+str(src.name))


dst.symlink_to(src.absolute())


print('Done!')
print(f'Link created at {dst}')

