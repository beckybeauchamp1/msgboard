For a message board I know what is needed is:


User,
User ID,
Password,

Message,
Message ID,
Title,
Name of poster

Comment,
Comment ID,
Message ID,
User ID who is commenting,
Date Posted

I'll need a registration page that sends the username/pass/email/whatever other reg values to the database. I'll need a login page that will check against these values in the database. I'll need a basic post function, but then you'll also need checks to see if the user is logged in, or what permissions they have (if I have different access levels for different users).

Future:
I'll need an admin control panel so the admin can add/remove forums...


Features that would be missing from this forum:
A graphical skin
Search
Thread subscriptions
Private messaging
Session-type data (last login, current users browsing)
Some sort of coded post formatting
Board permissions
Avatars or other user profile options
Password changes, name changes, or advanced admin functions

I went through a phase where I thought I could write everything myself and it would be great and extensible and amazing. I now realize that while I might have been right, I'd never find out because writing everything myself was such a time sink that I never finished anything. That said, for the purposes of studying forum security from a theoretical standpoint, there's no substitute for writing your own very simple.
