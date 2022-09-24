# terraform-github-secrets

# `GITHUB_TOKEN` vs `gh_token`
`GITHUB_TOKEN` é um token criado automaticamente pelas actions quando incializadas e é possível controlar as [permissões](https://docs.github.com/en/actions/learn-github-actions/finding-and-customizing-actions) que esse token possui no inicio da execução da(s) action(s) ou job(s).  

Dito isto, não consegui (ou não é possível) disponibilizar as permissões que eu queria para alcançar meu objetivo. Não consegui fazer um repositório atualizar diversos repositórios com o token disponibilizado pela action. Porém, foi possível fazer o desejado com um token criado por mim e eu decidir nomear esse token de `gh_token`.  

Repositórios relacionados ao terraform teram este token para justamente aplicar a ações a todos os repositórios da organização.  