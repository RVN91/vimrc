# -------------------------------------------------------------
# Install plugins for VIM with a default Python distribution
#
# Edited from https://github.com/amix/vimrc
# -------------------------------------------------------------
try:
    import concurrent.futures as futures
except ImportError:
    try:
        import futures
    except ImportError:
        futures = None

import zipfile
import shutil
import tempfile
import requests

from os import path

# --- Globals ----------------------------------------------

PLUGINS = """
nerdtree https://github.com/preservim/nerdtree
vim-yankstack https://github.com/maxbrunsfeld/vim-yankstack
vim-indent-guides https://github.com/nathanaelkane/vim-indent-guides
vim-virtualenv https://github.com/jmcantrell/vim-virtualenv
vim-fugitive https://github.com/tpope/vim-fugitive
vim-zig https://github.com/ziglang/zig.vim
""".strip()

print(PLUGINS)

GITHUB_ZIP = "%s/archive/master.zip"

SOURCE_DIR = path.join(path.dirname(__file__), "plugins")

def download_extract_replace(plugin_name, folder_name, zip_path, temp_dir, source_dir):
    temp_zip_path = path.join(temp_dir, plugin_name)

    # Download and extract file in temp dir
    req = requests.get(zip_path)
    open(temp_zip_path, "wb").write(req.content)

    zip_f = zipfile.ZipFile(temp_zip_path)
    zip_f.extractall(temp_dir)

    if (plugin_name == "nightfox.nvim"):
        plugin_temp_path = path.join(temp_dir, path.join(temp_dir, 
            "%s-main" % plugin_name))
    else:
        plugin_temp_path = path.join(temp_dir, path.join(temp_dir, 
            "%s-master" % plugin_name))

    # Remove the current plugin and replace it with the extracted
    plugin_dest_path = path.join(source_dir, folder_name)

    try:
        shutil.rmtree(plugin_dest_path)
    except OSError:
        pass

    shutil.move(plugin_temp_path, plugin_dest_path)
    print("Updated {0}".format(plugin_name))

def update(plugin):
    folder, github_url = plugin.split(" ")
    name = github_url.split("/")[-1]
    
    zip_path = GITHUB_ZIP % github_url
    download_extract_replace(name, folder, zip_path, temp_directory, SOURCE_DIR)
    
if __name__ == "__main__":
    temp_directory = tempfile.mkdtemp()

    try:
        if futures:
            with futures.ThreadPoolExecutor(16) as executor:
                executor.map(update, PLUGINS.splitlines())
        else:
            [update(x) for x in PLUGINS.splitlines()]
    finally:
        shutil.rmtree(temp_directory)
