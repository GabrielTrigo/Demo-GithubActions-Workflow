# 1. Nova feature
git checkout develop && git pull
git checkout -b feat/dashboard

# ... desenvolver ...

git add . && git commit -m "feat: adiciona dashboard admin"
git push origin feat/dashboard
# → Criar PR → CI → Merge → Deploy DEV

# 2. Mais features...
git checkout develop && git pull  
git checkout -b feat/relatorios
# ... desenvolver ...
git add . && git commit -m "feat: adiciona relatórios"  
git push origin feat/relatorios
# → Criar PR → CI → Merge → Deploy DEV

# 3. Preparar release
git checkout develop && git pull
git checkout -b release/2.1.0
git push origin release/2.1.0
# → Deploy HOMOLOG automático

# 4. Deploy produção  
git checkout main && git pull
git merge release/2.1.0 && git push
git tag -a v2.1.0 -m "Release 2.1.0"
git push origin v2.1.0
# → Aprovação manual → Deploy PROD