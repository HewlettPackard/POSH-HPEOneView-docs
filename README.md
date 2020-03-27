## HPE OneView PowerShell Library Documentation

Welcome to the POSH-HPOneView-Docs repository, home of the library documentation and source.

## Repository Structure

This repository serves as the source for the [HPE OneView PowerShell library documentation](https://hpe-docs.gitbook.io/posh-hponeview/).  The following folder structure is required for the docs library:

- [/docs/](https://hpe-docs.gitbook.io/posh-hponeview/) is the source directory for all supported library
   versions.
- [/source](./source) This content is the source of help content to build for both online and offline (`Get-Help`)
   user documentation, in JSON format.
- [tools](./tools) - this folder contains the tooling necessary to build the online help documentation
   (in Markdown format).

## Contributing and feature requests

We actively merge contributions into this repository via
[pull request](https://help.github.com/articles/using-pull-requests/) into the *staging* branch

* If you want to contribute to our code by either fixing a problem or creating a new feature, please open a GitHub pull request.
* If you want to raise an issue such as a defect, an enhancement request or a general issue, please open a GitHub issue.

Before you start to code, we recommend discussing your plans through a GitHub issue, especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.

Note that all patches from all contributors get reviewed.

After a pull request is made, other contributors will offer feedback. If the patch passes review, a maintainer will accept it with a comment.
When a pull request fails review, the author is expected to update the pull request to address the issue until it passes review and the pull request merges successfully.

At least one review from a maintainer is required for all patches.

### Developer's Certificate of Origin

All contributions must include acceptance of the DCO:

> Developer Certificate of Origin Version 1.1
>
> Copyright (C) 2004, 2006 The Linux Foundation and its contributors. 660
> York Street, Suite 102, San Francisco, CA 94110 USA
>
> Everyone is permitted to copy and distribute verbatim copies of this
> license document, but changing it is not allowed.
>
> Developer's Certificate of Origin 1.1
>
> By making a contribution to this project, I certify that:
>
> \(a) The contribution was created in whole or in part by me and I have
> the right to submit it under the open source license indicated in the
> file; or
>
> \(b) The contribution is based upon previous work that, to the best of my
> knowledge, is covered under an appropriate open source license and I
> have the right under that license to submit that work with
> modifications, whether created in whole or in part by me, under the same
> open source license (unless I am permitted to submit under a different
> license), as indicated in the file; or
>
> \(c) The contribution was provided directly to me by some other person
> who certified (a), (b) or (c) and I have not modified it.
>
> \(d) I understand and agree that this project and the contribution are
> public and that a record of the contribution (including all personal
> information I submit with it, including my sign-off) is maintained
> indefinitely and may be redistributed consistent with this project or
> the open source license(s) involved.

### Sign your work

To accept the DCO, simply add this line to each commit message with your
name and email address (git commit -s will do this for you):

    Signed-off-by: Jane Example <jane@example.com>

For legal reasons, no anonymous or pseudonymous contributions are
accepted.

## License

The MIT License applies to the content within this repo.