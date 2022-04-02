Personal setup for Ubuntu on WSL 2. Running the scripts will

* copy everything in `cp/` to your home directory
* set the default shell to zsh
* set the environment variables for HTTP/S proxy
* install Go 1.15.5 and Node 14
* install Python3 dev, pip, and venv
* install on request
    * `jl` - JupyterLab
    * `tf` - TensorFlow

## Usage

```sh
git clone https://github.com/eagr/dotfiles_wsl.git && source dotfiles/ubuntu.sh

# if you need both TensorFlow and JupyterLab
git clone https://github.com/eagr/dotfiles_wsl.git && source dotfiles/ubuntu.sh tf jl
```
