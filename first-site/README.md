# Your first site — session ten

One file. That is genuinely all a website has to be.

`index.html` is the page from the demo: Dale's three waiting jobs. The
name matters — `index.html` is what a web address opens by default, so a
folder with that file in it is a website and a folder without one is not.

## To put it on the internet

**The easy way.** Vercel dashboard, *Add New* then *Project*, and drag
this folder onto the deploy area. About forty seconds. You get an address
ending `.vercel.app`. Open it on your phone.

**The way you will end up using.** Put the folder on GitHub, then import
that repository on Vercel. From then on every push publishes itself — a
preview for every marker, production for your main trail.

## Then change something

Edit a line, deploy again, and look at the *preview* address before you
promote it. Those long preview addresses are private: send one to somebody
outside your account and they get a login screen, not your page. Only the
short address is public. Worth proving to yourself once.

## Nothing secret goes in here

Anything in a web page can be read by anyone who opens it. No passwords,
no keys, no connection strings — the one from session nine especially.
Those live on the server as environment variables and never travel to the
browser.
