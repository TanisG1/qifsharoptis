SELECT SUM(P.Amount), C.name, E.executive_id
FROM Executives E
INNER JOIN manage m on E.Executive_id=m.id
INNER JOIN Projects  p ON m.project_name = p.project_name
INNER JOIN Organisations o
        ON O.Abbreviation = P.Organisation_managing
INNER JOIN Company C
        ON C.Name = O.Abbreviation
GROUP BY C.name, E.Executive_id
ORDER BY SUM(P.Amount) DESC
LIMIT 5;