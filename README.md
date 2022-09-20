# ssh-action

Execute SSH commandes to remote server using this GitHub action.

## Required params

```
-host: SSH host
-port: SSH port
-user: SSH user
-key: RSA private key
-script: script to run remotly
```

## How to deploy

    1 - Generate ssh key
    2 - Create git secrets
    3 - create action

## USAGE :

### DEPLOY DIRECTORY

```
name: TestCI
on:
  push:
    branches: [master]
  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:
jobs:
  build:
    runs-on: ubuntu-20.04

    steps:
      - uses: actions/checkout@v2
      - name: Deploy
        uses: belaassal/ssh-action@main
        with:
          host: ${{ secrets.HOST }}
          port: ${{ secrets.PORT }}
          user: ${{ secrets.USER }}
          key: ${{ secrets.KEY }}
          script: "pwd && ls"
```