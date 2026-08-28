-- The well from session nine, in full.
--
-- One table. One row per job. One column per fact worth keeping.
-- Run this against any Postgres database and you have what Dale has.
--
-- Note what is NOT here: there is no column for the date an estimate was
-- SENT. That gap is deliberate, and it is the point of chapter three --
-- a column you never kept is a question you cannot ask.

DROP TABLE IF EXISTS jobs;

CREATE TABLE jobs (
  id         serial PRIMARY KEY,
  customer   text NOT NULL,          -- surname, the way Dale says it
  address    text,                   -- where the job is, if we know
  job        text NOT NULL,          -- one line describing the work
  status     text NOT NULL,          -- 'ready to price', 'stopped', 'sent'
  waiting_on text,                   -- who the ball is with; blank if nobody
  received   date NOT NULL,          -- the day the request came in
  total      numeric(10,2)           -- what it was billed at; blank until sent
);

INSERT INTO jobs (customer, address, job, status, waiting_on, received, total) VALUES
('Alvarez','48 Chestnut Ln','Leaking trap under bathroom sink','ready to price',NULL,'2026-08-24',NULL),
('Tanner','212 Wilbanks Rd','Water heater rumbling, plus gas smell at stove','stopped','Dale - gas, do not price','2026-08-21',NULL),
('Brody','address not given','Disposal jammed and humming, toilet running','stopped','customer - model number and address','2026-08-22',NULL),
('Smith','9 Overlook Dr','Kitchen faucet replacement, corroded shut-offs','sent',NULL,'2026-07-06',486.25),
('Hollis','131 Barrett Rd','Water heater replacement, 40 gal electric','sent',NULL,'2026-07-14',1104.50),
('Pace','77 Mill Creek Rd','Saturday call-out, burst pipe in crawl space','sent',NULL,'2026-07-19',612.75),
('Dawkins','5 Ridge Ct','Two shut-off valves replaced','sent',NULL,'2026-07-28',241.00);

-- The two questions from the demo:

-- which jobs are still waiting on me?
--   SELECT customer, job, waiting_on, received
--   FROM jobs WHERE waiting_on ILIKE '%dale%' ORDER BY received;

-- what did we bill in July?
--   SELECT count(*), sum(total) FROM jobs
--   WHERE received >= '2026-07-01' AND received < '2026-08-01' AND total IS NOT NULL;
