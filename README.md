# evil maid detector
This is a windows (95 to 10) based batch script that can trust / check / restore specific sectors of a windows machine that has its hard drive fully encrypted.
Generally it can be used with any other hard drive encryption systems.
For this tool to work the user has to have [Sector Inspector](https://www.microsoft.com/en-us/download/details.aspx?id=19470) Installed.

It has three parameters:
- trust: to make a trust point when the user initially encrypts the system drive.
- check: to check if the system drive integrity is compromised.
- recover: to put back the system in trusted form.

