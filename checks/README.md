# The round — session eleven

Four checks. Nothing installed, nothing configured.

```
cd checks
node --test
```

Four green. Now break the page on purpose — open `index.html` and delete
`We don't price gas. ` from the Tanner line, the way anybody tidying up
would — and run it again.

Two red, and the reason is a sentence somebody wrote on purpose:

> the gas warning has gone — that is the one that must never disappear

That is the whole idea. Open `checks.test.mjs` and read the four test
names. You do not need to read anything below them.

## Where these came from

They are Dale's "how I will know it is right" list from the map in
session eight, word for word. You wrote a list like that too. This is what
it was for.

## Writing your own

Four sentences about your own page. Each one either true or false. Then:

> Write me checks for these four sentences, and keep my wording in the
> failure messages.

That last clause is the one that makes them useful in six months, when
something goes red and you have forgotten why you cared.
