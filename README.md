# Elixir: Unexpected Process Termination in Enum.each

This repository demonstrates a subtle error that can occur when using `Enum.each` with `Process.exit` in Elixir.  The code in `bug.exs` prematurely terminates the process, preventing the enumeration from completing. The solution in `bugSolution.exs` shows a correct approach using a more robust solution.

## Problem

The primary issue lies in using `Process.exit` within `Enum.each`. When the condition `x == 3` is met, the entire process immediately terminates, not just the iteration. This behaviour can be unexpected and difficult to debug.

## Solution

The solution uses a different approach, illustrating a safer way to handle scenarios where an iteration needs to be stopped early.
