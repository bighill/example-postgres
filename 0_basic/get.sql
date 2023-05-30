SELECT
    a.name, p.title
FROM 
    authors a
LEFT JOIN publications p 
    ON p.author_id = a.id
ORDER BY
    a.name;