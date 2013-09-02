# task-git.sh

`task-git.sh` is a wrapper around Taskwarrior's `task` that places the task
database in version control, and generates commits each time the `task` database
is altered.

## Usage

1. Navigate to your Taskwarrior data directory (usually in `~/.task`) and type `git init`. If you plan to push to a remote, go ahead and add your remote now.
2. Add `alias task=/path/to/task-git/task-git.sh` to your `.bashrc` or
`.profile`. If you want to push to a remote, then the alias should be `alias task=/path/to/task-git/task-git.sh --task-git-push`. Make sure you source the `.bashrc` or `.profile`.
3. Run `chmod +x /path/to/task-git/task-git.sh`.
4. Use `task` as normal; when run, the Taskwarrior database files will be committed to version control.

It is recommended to use the Taskwarrior database only on one machine, as you will be resolving conflicts if using the same task database on multiple machines.

## License

task-git.sh
Copyright (C) 2013 Kosta Harlan

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

