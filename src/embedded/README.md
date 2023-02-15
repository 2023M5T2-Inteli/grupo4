# How to run the `embedded` files
## First, you need to create the venv 
Run this code on the root of the folder that you want to create the venv, `src/embedded`.
On mac:
```bash
python3 -m venv .venv
```
On windows:
```bash
py -m venv .venv
```
## Then, you need to activate the venv
Run this code in your terminal in the root of this folder, `src/embedded`.
For mac:
```bash
source .venv/bin/activate
```
For windows:
```bash
.\.venv\Scripts\activate
```
If you want to leave the venv run:
```bash
deactivate
```
## For installing the libraries from the requirements.txt
Run this code on the root of this folder, `src/embedded`:
```bash
pip install -r requirements.txt
```

## For exporting the libraries that were installed in this venv
If you want to increment the code and you have installed some libraries, run this code on the root of this folder, `src/embedded`:
```bash
pip freeze --> requirements.txt
```