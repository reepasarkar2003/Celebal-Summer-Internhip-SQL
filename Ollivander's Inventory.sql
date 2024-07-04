SELECT 
    a.Id,
    b.age,
    a.coins_needed,
    a.power
FROM 
    Wands a
JOIN 
    Wands_Property b ON a.code = b.code
WHERE 
    b.is_evil = 0
    AND a.coins_needed = (
        SELECT MIN(al.coins_needed) 
        FROM Wands al 
        JOIN Wands_Property bl ON al.code = bl.code
        WHERE a.power = al.power
          AND b.age = bl.age
          AND bl.is_evil = 0
    )
ORDER BY 
    a.power DESC,
    b.age DESC;