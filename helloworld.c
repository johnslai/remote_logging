/*
 * =====================================================================================
 *
 *       Filename:  helloworld.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  11/02/2014 04:56:41 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *        Company:  
 *
 * =====================================================================================
 */
#include <syslog.h>
#include <unistd.h>
#include <sys/types.h>


int main()
{
  setlogmask (LOG_UPTO (LOG_NOTICE));

  openlog ("exampleprog", LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL1);

  syslog (LOG_NOTICE, "Program started by User %d", getuid ());
  syslog (LOG_INFO, "A tree falls in a forest");

  closelog ();
  return 0;
}

