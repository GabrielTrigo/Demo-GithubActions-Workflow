#!/bin/bash

git checkout develop
git pull origin develop
git checkout -b feat/login-usuario


# Fazer as mudanças no código...
git add .
git commit -m "feat: implementa login de usuário"
git push origin feat/login-usuario