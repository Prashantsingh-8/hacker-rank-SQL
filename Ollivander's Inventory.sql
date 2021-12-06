SELECT aa.id, bb.age, aa.coins_needed, aa.power
FROM WANDS AS aa
JOIN WANDS_PROPERTY AS bb ON aa.CODE = bb.CODE
JOIN (SELECT age AS AG, MIN(coins_needed) AS MCN, power AS PW
FROM WANDS AS A
JOIN WANDS_PROPERTY AS B ON A.CODE = B.CODE
WHERE IS_EVIL = 0
GROUP BY power, age) AS Q ON bb.age = AG AND aa.coins_needed = MCN AND aa.power = PW
ORDER BY aa.power DESC, bb.age DESC
