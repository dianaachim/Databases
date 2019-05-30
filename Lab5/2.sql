--a)
--clustered index seek
select B.title
from Books B
where B.bid = 1

--clustered index scan
select R.title, R.nr_pages
from Books R
where R.title = 'Game of thrones'

--nonclustered index
--create nonclustered
--	index IDX_NC_Books_Title
--ON Books(title)

select B.title
from Books B
where B.title = 'Way of Kings'

--nonclustered index seek + key lookup
--create nonclustered
--	index IDX_NC_Books_Pages
--ON Books(nr_pages)

select *
from Books
where nr_pages =500

--b)
create nonclustered
	index IDX_NC_Readers_nrBooks
ON Readers(nr_books)

select R.nr_books
from Readers R
where R.nr_books = 50

select R.nr_books
from Readers R
where R.nr_books = 50

--c)

