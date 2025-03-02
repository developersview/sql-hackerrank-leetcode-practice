SELECT 
    CASE
        WHEN g.Grade >= 8 THEN s.NAME
        ELSE 'NULL'
    END,
    g.grade,
    s.marks
FROM
    Students s
        INNER JOIN
    Grades g ON s.Marks BETWEEN g.Min_Mark AND Max_Mark
ORDER BY g.Grade DESC , s.NAME ASC;