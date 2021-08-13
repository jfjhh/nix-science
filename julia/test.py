#! /usr/bin/env nix-shell
#! nix-shell -i python3 -p "python3"

import os
from pathlib import Path
import shutil

def main():
    script_dir = Path(os.path.dirname(os.path.realpath(__file__)))
    print(script_dir)

if __name__ == "__main__":
    main()

