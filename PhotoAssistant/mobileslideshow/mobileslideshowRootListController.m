#include "mobileslideshowRootListController.h"
#include <spawn.h>

extern char **environ;
void run_cmd(char *cmd)
{
	pid_t pid;
	char *argv[] = {"sh", "-c", cmd, NULL};
	int status;

	status = posix_spawn(&pid, "/bin/sh", NULL, NULL, argv, environ);
	if (status == 0)
	{
		if (waitpid(pid, &status, 0) == -1)
		{
			perror("waitpid");
		}
	}
}

@implementation mobileslideshowRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}
- (void)gotoMyPage {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://repo.agricu.cn"]];
}

-(void)killSpringBoard {
	// system("killall SpringBoard");
	run_cmd("killall -9 SpringBoard");
}

- (void)donate {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"cydia://url/https://cydia.saurik.com/api/share#?source=http://repo.agricu.cn"]];
}

- (void)github {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://github.com/Agricu/PhotoAssistant"]];
}
@end
