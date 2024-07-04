select A.hacker_id,B.name
from submissions as A
inner join hackers as B on A.hacker_id = B.hacker_id
inner join challenges as C
on A.challenge_id =C.challenge_id
inner join difficulty as D
on c.difficulty_level = D.difficulty_level
where A.score =D.score
group by A.hacker_id,B.name
Having count(*) >1
order by count(*) desc , A.hacker_id