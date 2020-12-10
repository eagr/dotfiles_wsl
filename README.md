Personal setup for Ubuntu on WSL 2. Running the scripts will

* set the default shell to zsh
* set the environment variables for HTTP/S proxy
* install Go 1.15.5 and Node 14
* install Python3 dev, pip, and venv
* install on request
    * `tf` - TensorFlow

## Usage

```sh
git clone https://github.com/eagr/dotfiles.git && source dotfiles/ubuntu.sh

# if you need TensorFlow
git clone https://github.com/eagr/dotfiles.git && source dotfiles/ubuntu.sh tf
```
