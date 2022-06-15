#include "StepNumber.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
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



@implementation StepNumber

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}


self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"注销" style:UIBarButtonItemStylePlain target:self action:@selector(exitApp)];




	return _specifiers;
}


- (void)exitApp {


 //创建对象 
UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"修改步数不需要注销设备\n仅在出现错误的情况下使用注销" message:@"" preferredStyle:UIAlertControllerStyleAlert];

//添加取消类型按钮
[alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    NSLog(@"点击取消");
}]];

//添加常规类型按钮
[alertController addAction:[UIAlertAction actionWithTitle:@"注销" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    NSLog(@"点击确认");

run_cmd("killall -9 SpringBoard");

}]];

//显示
[self presentViewController:alertController animated:YES completion:nil];

}


@end
