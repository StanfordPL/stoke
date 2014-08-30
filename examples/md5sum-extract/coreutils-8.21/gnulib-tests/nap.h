/* Assist in file system timestamp tests.
   Copyright (C) 2009-2013 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* Written by Eric Blake <ebb9@byu.net>, 2009.  */

#ifndef GLTEST_NAP_H
# define GLTEST_NAP_H

static int
lt_mtime (struct stat const *a, struct stat const *b)
{
  time_t as = a->st_mtime;
  time_t bs = b->st_mtime;
  int ans = get_stat_mtime_ns (a);
  int bns = get_stat_mtime_ns (b);

  return as < bs || (as == bs && ans < bns);
}

static void
get_mtime (int fd, struct stat *st, int do_write)
{
  if (do_write)
    ASSERT (write (fd, "\n", 1) == 1);
  ASSERT (fstat (fd, st) == 0);
}

/* Given a file whose descriptor is FD, see whether delaying by DELAY
   microseconds causes a change in a file's time stamp.  If the time
   stamps differ, repeat the test one more time, in case we crossed a
   quantization boundary on a file system with lower resolution.  *ST
   is the file's status, recently gotten.  Update *ST to reflect the
   latest status gotten.  */
static int
nap_works (int fd, int delay, struct stat *st)
{
  struct stat old_st;
  old_st = *st;
  usleep (delay);
  get_mtime (fd, st, 1);
  if (! lt_mtime (&old_st, st))
    return 0;
  old_st = *st;
  usleep (delay);
  get_mtime (fd, st, 1);
  return lt_mtime (&old_st, st);
}

static int
guess_delay (void)
{
  /* Try a 1-microsecond sleep first, for speed.  If that doesn't
     work, try a 1 ms sleep; that should work with ext.  If it doesn't
     work, try a 20 ms sleep.  xfs has a quantization of about 10
     milliseconds, even though it has a granularity of 1 nanosecond,
     and NTFS has a default quantization of 15.25 milliseconds, even
     though it has a granularity of 100 nanoseconds, so 20 ms is a
     good quantization to try.  If that doesn't work, try 1 second.
     The worst case is 2 seconds, needed for FAT.  */
  static int const delaytab[] = {1, 1000, 20000, 1000000 };
  int fd = creat (BASE "tmp", 0600);
  int i;
  int delay = 2000000;
  struct stat st;
  ASSERT (0 <= fd);
  get_mtime (fd, &st, 0);
  for (i = 0; i < sizeof delaytab / sizeof delaytab[0]; i++)
    if (nap_works (fd, delaytab[i], &st))
      {
        delay = delaytab[i];
        break;
      }
  ASSERT (close (fd) == 0);
  ASSERT (unlink (BASE "tmp") == 0);
  return delay;
}

/* Sleep long enough to notice a timestamp difference on the file
   system in the current directory.  Assumes that BASE is defined,
   and requires that the test module depends on usleep.  */
static void
nap (void)
{
  static int delay;
  if (!delay)
    delay = guess_delay ();
  usleep (delay);
}

#endif /* GLTEST_NAP_H */
