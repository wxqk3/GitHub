/**
 * snhqm9.c
 * Copyright © 2017 Samuel Holland <samuel@sholland.org>
 * Placed in the public domain, or otherwise licensed under the CC0.
 * vim: ft=c:noexpandtab:sts=4:sw=4:ts=4:tw=100
 */

#include <ctype.h>
#include <pwd.h>
#include <stdio.h>
#include <string.h>
#include <sys/utsname.h>
#include <unistd.h>

void
snhqm9_sentence1()
{
	struct passwd *pwd;
	struct utsname un;

	if ((pwd = getpwuid(getuid())) && islower(pwd->pw_name[0]))
		pwd->pw_name[0] -= 0x20;
	if (uname(&un))
		strcpy(un.sysname, "shiny new Macintosh");
	printf("It all started one rainy evening as %s was banging away at their %s computer's "
	       "keyboard. ",
	       pwd ? pwd->pw_name : "our subject", un.sysname);
}

void
snhqm9_sentence2()
{
	printf("You would never guess what happened next.");
}
