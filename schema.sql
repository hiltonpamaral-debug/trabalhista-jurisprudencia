-- Banco de jurisprudência trabalhista (SQLite) — leve por design: guarda
-- só uma síntese do que foi lido, nunca o texto bruto da decisão inteira
-- (isso mantém o arquivo pequeno o bastante pra viver dentro do repositório git).

CREATE TABLE IF NOT EXISTS decisoes (
    numero_processo       TEXT PRIMARY KEY,
    tribunal              TEXT NOT NULL,
    data_disponibilizacao TEXT,
    orgao                 TEXT,
    classe                TEXT,
    link                  TEXT,
    resumo                TEXT,    -- síntese curta: o que foi decidido e por quê
    provas_destacadas     TEXT,    -- o que o acórdão/sentença apontou como prova decisiva
    tem_embargos          INTEGER DEFAULT 0,  -- 1 se há embargos de declaração conhecidos
    situacao_embargos     TEXT,    -- ex: "acórdão modificado em ED, ver ID X" ou "ED rejeitados, sem alteração"
    criado_em             TEXT,
    atualizado_em         TEXT
);

-- Um processo pode ter várias tags (todos os temas realmente abordados na
-- decisão, não só o termo usado pra encontrá-lo na busca).
CREATE TABLE IF NOT EXISTS tags (
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    numero_processo   TEXT NOT NULL,
    tag               TEXT NOT NULL,
    FOREIGN KEY (numero_processo) REFERENCES decisoes(numero_processo),
    UNIQUE(numero_processo, tag)
);

CREATE INDEX IF NOT EXISTS idx_tags_tag ON tags(tag);
CREATE INDEX IF NOT EXISTS idx_decisoes_tribunal ON decisoes(tribunal);
