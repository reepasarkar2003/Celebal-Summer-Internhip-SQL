select CASE
    when Grade > 7 THEN S.NAME
    ELSE NULL
    END AS  Names,
    G.Grade,
    S.Marks
    from Students as S
    inner join Grades as G
    on S.Marks BETWEEN G.MIn_Mark AND  G.Max_Mark
    Order By G.Grade Desc,
          Names  Asc,
          S.Marks Asc;