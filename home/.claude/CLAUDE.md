When in core repo, only put tests in tests/ folder.

For models with SoftDeleteMixin (or it's child) do not add deleted_at filters

## Git workflow
- Use `gt submit` instead of `git push` and `gh pr create` for creating/updating PRs
- For stacked PRs, use `gt track -p <parent-branch>` to set up the stack, then `gt submit --stack`
- Any change over 250 lines (added + removed, excluding generated files / lockfiles / migrations) must be split into stacked PRs. Plan the stack up front so each PR is independently reviewable and stays under the limit.

## Testing
If the tests have issues, always fix the tests first

IMPORTANT: Try to preserve the original code and the logic of the original code as much as possible

## Code style
- No single letter variable names
- Use `attrgetter` from `operator` instead of lambda for attribute access (e.g., `key=attrgetter("created_at")` instead of `key=lambda x: x.created_at`)
