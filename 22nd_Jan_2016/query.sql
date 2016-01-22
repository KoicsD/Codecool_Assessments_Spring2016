USE mini_bank_cc;


SELECT
	SUM(Value) AS cash_flow
FROM
	Cards
JOIN
	CardTransactions
		ON Cards.CardNumber = CardTransactions.CardNumber
WHERE
	Cards.Type = 'bank';