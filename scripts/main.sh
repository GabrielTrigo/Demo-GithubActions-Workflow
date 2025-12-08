# 1. Feature
git checkout -b feature/a
git push origin feature/a
# → PR → CI roda → merge

# 2. Deploy Dev/Homolog (automático ao merge)
git checkout dev && git pull
git checkout -b release/2.0.0
git push origin release/2.0.0 
 
# 3. Release
git checkout main && git pull
git merge release/2.0.0
git tag -a v2.0.0 -m "Release 2.0.0"
git push origin main --tags

# Situação: v1.2.0 tem bug, precisa voltar para v1.1.0

# Opção A: Nova tag apontando para versão antiga
git tag v1.2.1 v1.1.0
git push origin v1.2.1
# Aprovar no GitHub Actions

# Opção B: Tag em commit específico
git log --oneline  # Encontra commit da v1.1.0
git tag v1.2.1 <commit-hash>
git push origin v1.2.1
# Aprovar no GitHub Actions