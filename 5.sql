USE LibraryDB;

SELECT m.name AS Member, b.title AS Book
FROM BorrowRecords br
INNER JOIN Members m ON br.member_id = m.member_id
INNER JOIN Books b ON br.book_id = b.book_id;

SELECT m.name AS Member, b.title AS Book
FROM Members m
LEFT JOIN BorrowRecords br ON m.member_id = br.member_id
LEFT JOIN Books b ON br.book_id = b.book_id;


SELECT b.title AS Book, m.name AS Member
FROM BorrowRecords br
RIGHT JOIN Books b ON br.book_id = b.book_id
RIGHT JOIN Members m ON br.member_id = m.member_id;

SELECT m.name AS Member, b.title AS Book
FROM Books b
LEFT JOIN BorrowRecords br ON b.book_id = br.book_id
LEFT JOIN Members m ON br.member_id = m.member_id;


SELECT m.name AS Member, b.title AS Book
FROM Members m
CROSS JOIN Books b;


SELECT m1.name AS Member1, m2.name AS Member2, m1.join_date
FROM Members m1
JOIN Members m2 ON m1.join_date = m2.join_date AND m1.member_id <> m2.member_id;