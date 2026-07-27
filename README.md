# Trabalhista — Jurisprudência

Repositório de apoio ao escritório Amaral e Pessoa Advogados: mantém a seção
"Jurisprudência recente monitorada" atualizada via rotina agendada (terça e
sexta), que pesquisa decisões do TRT10/TST sobre os temas do catálogo de
teses trabalhistas e registra achados seguindo a metodologia de confirmação
descrita no próprio arquivo (nunca reescreve a tese principal com base numa
única decisão nova — só após ~30 decisões subsequentes na mesma linha).

Arquivos:
- `catalogo-teses-especificas.md` — catálogo de teses condicionais (cargo de
  confiança, rescisão indireta, danos morais, adicionais, etc.) + a seção de
  jurisprudência monitorada, atualizada automaticamente.
- `SKILL.md` — estrutura de organização de petições (estilo Tayná) e
  cláusulas universais do escritório, para contexto.
- `schema.sql` — schema do banco de decisões (ver abaixo).
- `jurisprudencia.db` — banco SQLite com sentenças/acórdãos já lidos
  (número do processo, tribunal, resumo, provas destacadas, tags de todos
  os temas abordados, situação de embargos de declaração). Guarda só a
  síntese do que foi lido, nunca o texto bruto da decisão inteira —
  propositalmente leve pra caber no repositório git.

## Banco de jurisprudência (`jurisprudencia.db`)

Duas tabelas:
- `decisoes` — 1 linha por processo (`numero_processo` é a chave), com
  `resumo` (o que foi decidido e por quê), `provas_destacadas` (o que a
  decisão apontou como prova relevante/decisiva), `tem_embargos` +
  `situacao_embargos` (se houve embargos de declaração que alterou o
  julgado, e o que mudou).
- `tags` — N linhas por processo, um tema por linha (TODOS os temas
  realmente abordados na decisão, não só o termo usado pra encontrá-la na
  busca do DJEN).

Consultar com qualquer cliente SQLite, ex.:
```sql
SELECT d.numero_processo, d.resumo, GROUP_CONCAT(t.tag, ', ') as tags
FROM decisoes d JOIN tags t ON t.numero_processo = d.numero_processo
WHERE d.tribunal = 'TRT10'
GROUP BY d.numero_processo;
```

## Metodologia de leitura (o que a rotina agendada faz, e o que fizemos manualmente)

1. Buscar no DJEN (`comunicaapi.pje.jus.br/api/v1/comunicacao`) por tribunal
   + tema + intervalo de datas, filtrando por texto contendo "SENTENÇA" ou
   "ACÓRDÃO" (não intimações de pauta/despacho comuns).
2. Ler o texto completo de cada decisão encontrada (não só a ementa).
3. Extrair: todos os temas/tags realmente abordados (pode ser mais do que
   o termo de busca original), o que foi decisivo (provas, teses,
   argumentos), e se há indício de embargos de declaração alterando o
   resultado.
4. Gravar no `jurisprudencia.db` — resumo curto, nunca o texto bruto.
5. Se o achado **contradiz** uma tese já documentada no
   `catalogo-teses-especificas.md`, seguir a metodologia de confirmação
   descrita lá (registrar como observação em aberto, só promover a mudança
   de tese principal após ~30 decisões subsequentes na mesma linha — EXCETO
   quando o achado for uma tese vinculante formal, tipo IRR/Súmula/Tema
   repetitivo, que já vale a partir da publicação).

**Cópia de referência**: a versão "canônica" usada nas sessões locais do
Claude Code vive em `G:\Meu Drive\ADVOCACIA\CLAUDE\.claude\skills\peticao-trabalhista-clausulas-universais\`
— as atualizações feitas aqui pela rotina agendada precisam ser
sincronizadas manualmente (`git pull` + copiar) para lá periodicamente.
