# The estimate queue — what I understood

Written before anything was built, in session eight. This is the worked
example from the workshop, kept here so you can see a filled-in map next
to the blank one in `trail-map-template.md`.

## 1. What it is

One short list, on Dale's phone, of estimate requests that cannot move
without him. Nothing else on it. When an estimate is written and sent it
drops off the list — there is nothing to mark as done.

## 2. What it reads, and what it must never touch

Three things already in this folder:

- `inbox/` — the customer emails saved in each morning. This is the work.
- `past-estimates/` — how it knows what has already been done.
- `rate-card.txt` and `notes.txt` — how it tells a job we can price from
  one we cannot. It has to know we do not touch gas.

It does not read email. It does not send anything. It does not write the
estimates. It does not price gas — it flags it and stops.

## 3. What you would actually see

Name, one line on the job, why it is waiting, and what would move it. No
prices; prices belong in the estimate, not the queue.

> **Tanner, 212 Wilbanks Rd** — 4 days
> Gas smell at the stove. We don't price gas. Call him.
> Water heater's separate and quotable if you want it split.

## 4. How you will know it is right

- Tanner is at the top, because gas beats waiting time.
- Alvarez shows as ready to price.
- Nothing already sent appears anywhere on it.
- It fits on a phone screen, read one-handed, without scrolling.

## 5. What I am not sure about

**How it knows a job is finished.** Today the only signal is a file
appearing in `past-estimates/` with the customer's name on it. So if
Alvarez calls again next spring about something else, the old file still
has her name on it and the new email gets counted as already done — a job
silently missing off the list. That is the one failure that actually
costs money, and it is the first thing to fix.

**Who runs it, and when.** The list is only as current as the last run.
If it runs after the morning's emails are saved, it is right. If it runs
before, Dale reads yesterday in the truck.

**Whether the inbox ever gets emptied.** If dealt-with emails are cleared
out, that is a far more reliable "done" signal than matching names, and
it should be used instead.
