# google apps script

- common gas codes

## requrement

- docker container
  - docker
  - docker composer
  - clasp
- eable　clasp api 
  - enable to https://script.google.com/home/usersettings

## deployment

### make clasp available


```bash
make bash

clasp login --no-localhost
```

you can show Authorize clasp url.
put url to browser ans authorize.

**note**
- Default credentials saved to here
```
/root/.clasprc.json.
```

### create new project

```bash
mkdir gas-app/[new_project]
cd [new_project]

clasp create [scriptTitle]
# => choose option

npm init

# enable typescript mode optionally
npm install @types/google-apps-script
```

### modify script

create and modify script（.ts）
push ts code to google dirve, then code translate gs file automatically.

```
new_project
+-- .clasp.json           clasp setting ie. push distination
+-- appscript.json        
+-- package.json          package settings
+-- package-lock.json     package lock file
+-- node_moduels          library
+-- hoge.ts               new code place here 
+-- foo.ts                new code place here
```

### deploy

```bash
clasp push
# => push to google drive （scriptTitle）

clasp open
# => show editor url
```
