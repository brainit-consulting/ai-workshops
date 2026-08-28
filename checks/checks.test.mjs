// The four things that must always be true about Dale's page.
//
// These are not clever. They are the "how I will know it is right"
// lines from the map in session eight, written so a machine can
// re-check them every single time, forever.
//
// Run them with:   node --test

import { test } from 'node:test'
import assert from 'node:assert'
import { readFileSync } from 'node:fs'

const page = readFileSync(new URL('./index.html', import.meta.url), 'utf8')

test('the three waiting jobs are all on the page', () => {
  for (const customer of ['Tanner', 'Brody', 'Alvarez']) {
    assert.ok(page.includes(customer), `${customer} is missing from the page`)
  }
})

test('the gas job says we do not price gas', () => {
  assert.match(page, /don't price gas/i,
    'the gas warning has gone - that is the one that must never disappear')
})

test('nothing marked DRAFT ever reaches a customer', () => {
  assert.ok(!/DRAFT/i.test(page),
    'a draft version got as far as the checks')
})

test('there is no price anywhere on this page', () => {
  assert.ok(!/\$\d/.test(page),
    'prices belong in the estimate, never on the waiting list')
})
