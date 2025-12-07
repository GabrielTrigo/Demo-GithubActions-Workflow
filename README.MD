# 1. Nova feature

git checkout develop && git pull
git checkout -b feat/XXX-BBB

# ... desenvolver ...

git add . && git commit -m "feat: adiciona dashboard admin"
git push origin feat/XXX-BBB

# → Criar PR → CI → Merge → Deploy DEV

# 3. Preparar release

git checkout develop && git pull
git checkout -b release/1.0.0
git push origin release/1.0.0

# → Deploy HOMOLOG automático

# 4. Deploy produção

git checkout main && git pull
git merge release/1.0.0 && git push
git tag -a v1.0.0 -m "Release 1.0.0"
git push origin v1.0.0

# → Aprovação manual → Deploy PROD
