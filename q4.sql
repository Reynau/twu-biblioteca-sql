INSERT INTO book(title)
VALUES ("The Pragmatic Programmer")

INSERT INTO member(name)
VALUES ("xavi")

INSERT INTO checkout_item(member_id, book_id)
VALUES (
    (SELECT id
    FROM member
    WHERE member.name = "xavi"),
    (SELECT id
    FROM book
    WHERE book.title = "The Pragmatic Programmer")
)