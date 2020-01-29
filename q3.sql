SELECT title, 'Book' AS Item
FROM book
LEFT JOIN checkout_item ON checkout_item.book_id = book.id
WHERE checkout_item.member_id IS NULL
UNION
SELECT title, 'Movie'
FROM movie
LEFT JOIN checkout_item ON checkout_item.movie_id = movie.id
WHERE checkout_item.member_id IS NULL
ORDER BY Item