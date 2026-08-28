# The well — session nine

`schema.sql` builds the table Dale's well was made from, with the same
seven jobs in it. You do not need to run it. It is here so you can see
what "one row per job, one column per fact" actually looks like written
down.

`CLAUDE.md.example` is the house-rules file that sat in the demo folder.
It is worth reading: it tells the assistant where the well is, that it
must show its SQL before the answer, and that money is in US dollars —
that last line went in because, without it, the demo billed Dale in the
wrong currency.

**There is no connection string in here, and there never will be.** That
one line is the key to a well. It lives in a file called `.env.local`
that is listed in `.gitignore`, so the markers from session seven never
pick it up. If you take one habit from session nine, take that one.
