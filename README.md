# task-git.sh

`task-git.sh` is a wrapper around Taskwarrior's `task` that places the task
database in version control, and generates commits each time the `task` database
is altered.

## Usage

Add `alias task=/path/to/task-git/task-git.sh` to your `.bashrc` or
`.profile`, and run `chmod +x /path/to/task-git/task-git.sh`.

Backups are generated alongside the existing `.task` database in a new directory
called `.task.bak`.

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

