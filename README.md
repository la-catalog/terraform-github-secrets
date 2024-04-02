# terraform-github-secrets
Atualiza os [secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets) dos repositórios.  
**Nota**: Uma maneira mais prática para muitos casos seria utilizar secrets por organização porém faz parte do plano [team](https://github.com/pricing).  

# `GITHUB_TOKEN` vs `gh_token`
`GITHUB_TOKEN` é um token criado automaticamente pelas actions quando incializadas e é possível controlar as [permissões](https://docs.github.com/en/actions/learn-github-actions/finding-and-customizing-actions) que esse token possui no inicio da execução da(s) action(s) ou job(s).  

Dito isto, não consegui (ou não é possível) disponibilizar as permissões que eu queria para alcançar meu objetivo. Não consegui fazer um repositório atualizar diversos repositórios com o token disponibilizado pela action. Porém, foi possível fazer o desejado com um token criado por mim e eu decidi nomear esse token de `gh_token`.  

# `.tfvars` template
```
gh_token=secret
influx_user=secret
influx_pass=secret
machine_ip=secret
meili_key=secret
mongo_user=secret
mongo_pass=secret
rabbit_user=secret
rabbit_pass=secret
```