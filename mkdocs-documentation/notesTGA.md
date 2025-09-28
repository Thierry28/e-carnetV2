
## 20250927

Summary of the Permission Fix

The Root Cause: The directory and files had restrictive Access Control Lists (ACLs) that were denying write operations, even though the standard Unix permissions looked correct.

What was fixed:

1. Files had ACL: group:everyone deny write,delete,append,writeattr,writeextattr,chown
2. Directories had ACL: group:everyone deny add_file,delete,add_subdirectory,delete_child,writeattr,writeextattr,chown

The solution:
1. Removed all ACLs from files: find /Users/thierryg/Documents/PROJETS/e-carnetV2/ -type f -exec chmod -N {} +
2. Removed all ACLs from directories: find /Users/thierryg/Documents/PROJETS/e-carnetV2/ -type d -exec chmod -N {} +
3. Set proper permissions: 
◦  Files: 644 (read/write for owner, read for others)
◦  Directories: 755 (full access for owner, read/execute for others)
