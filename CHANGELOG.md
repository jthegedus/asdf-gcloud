# Changelog

## [1.2.0](https://www.github.com/jthegedus/asdf-gcloud/compare/v1.1.0...v1.2.0) (2022-06-30)


### Features

* support CLOUDSDK_CONFIG env var ([#54](https://www.github.com/jthegedus/asdf-gcloud/issues/54)) ([e1896e1](https://www.github.com/jthegedus/asdf-gcloud/commit/e1896e1283624b1ae4b37907a59d302ac9c12997))

## [1.1.0](https://www.github.com/jthegedus/asdf-gcloud/compare/v1.0.2...v1.1.0) (2021-07-20)


### Features

* support arm builds ([#49](https://www.github.com/jthegedus/asdf-gcloud/issues/49)) ([ed7631b](https://www.github.com/jthegedus/asdf-gcloud/commit/ed7631b5cd38ba5c65691843c28f4c90f5edaff4))

### [1.0.2](https://www.github.com/jthegedus/asdf-gcloud/compare/v1.0.1...v1.0.2) (2021-06-15)


### Bug Fixes

* bump tool versions ([d50910b](https://www.github.com/jthegedus/asdf-gcloud/commit/d50910bd27ec2fe87733da88854cd6475d5b0668))
* release please uses PAT ([bf88bab](https://www.github.com/jthegedus/asdf-gcloud/commit/bf88bab4d3b197870d76f4c714fdf6fe25aa9716))
* rm release-please workflow trigger from build ([38ab6f1](https://www.github.com/jthegedus/asdf-gcloud/commit/38ab6f1087bec950acdcb62ff51a3c9c9de8fb87))
* use custom sort func for portability ([#46](https://www.github.com/jthegedus/asdf-gcloud/issues/46)) ([6002e50](https://www.github.com/jthegedus/asdf-gcloud/commit/6002e50404671ac1617d4ca4326be729152202d0))

### [1.0.1](https://www.github.com/jthegedus/asdf-gcloud/compare/v1.0.0...v1.0.1) (2021-05-31)


### Bug Fixes

* no package name in PR title ([#43](https://www.github.com/jthegedus/asdf-gcloud/issues/43)) ([b950beb](https://www.github.com/jthegedus/asdf-gcloud/commit/b950beb4e3b1891e6519ae41c884301543635b40))

## 1.0.0 (2021-05-31)


### Features

* check dependencies, use pre-remove and post-add scripts ([0d8f298](https://www.github.com/jthegedus/asdf-gcloud/commit/0d8f2986475f6d35396b7fb6dc8f2192e95371fc))
* correctly error when no version found ([44995e1](https://www.github.com/jthegedus/asdf-gcloud/commit/44995e19df67d00954ef09e5af7978a4d51a5600))
* init asdf plugin commands ([c1eb106](https://www.github.com/jthegedus/asdf-gcloud/commit/c1eb10676568560bec0d0c0772fec5f02c626055))
* notify users on uninstall their gcloud proj configs still p… ([#15](https://www.github.com/jthegedus/asdf-gcloud/issues/15)) ([29619a7](https://www.github.com/jthegedus/asdf-gcloud/commit/29619a78966a48f7ae8652dec15295547677f70c))
* robust list-all version fetching ([376d025](https://www.github.com/jthegedus/asdf-gcloud/commit/376d0251f206a5ff6490de67d85074d3365b41b9))
* run shell format on lint ([e7c66a0](https://www.github.com/jthegedus/asdf-gcloud/commit/e7c66a0b08dbe9c354f86a3cfe371013fce1a8ce))
* use asdf exec-env to set CLOUDSDK_PYTHON on each gcloud cmd… ([#14](https://www.github.com/jthegedus/asdf-gcloud/issues/14)) ([0a30972](https://www.github.com/jthegedus/asdf-gcloud/commit/0a309723eb2ffccecfb71720f7e2c59cfb576642))
* working mvp ([dbf95e0](https://www.github.com/jthegedus/asdf-gcloud/commit/dbf95e040be459a3ca3c12a904e22eca4a655979))


### Bug Fixes

* adding line break between multiple requests ([#28](https://www.github.com/jthegedus/asdf-gcloud/issues/28)) ([e148004](https://www.github.com/jthegedus/asdf-gcloud/commit/e1480042427f6a5d8603fdded111b27447185505))
* BASH_SOURCE for plugin directory resolution ([#29](https://www.github.com/jthegedus/asdf-gcloud/issues/29)) ([7cfb499](https://www.github.com/jthegedus/asdf-gcloud/commit/7cfb4993390340b619300fb0eab62d1d4ed1ce7e))
* cicd, remove scheduled cicd runs ([#30](https://www.github.com/jthegedus/asdf-gcloud/issues/30)) ([f6c0524](https://www.github.com/jthegedus/asdf-gcloud/commit/f6c0524877c0a9e8652a87d279491feb9ec26984))
* cleanup logs ([#11](https://www.github.com/jthegedus/asdf-gcloud/issues/11)) ([5341c4c](https://www.github.com/jthegedus/asdf-gcloud/commit/5341c4c8778677f9eaa88f6e84f1c6e55d74ada5))
* convert indent to tabs ([811b4d4](https://www.github.com/jthegedus/asdf-gcloud/commit/811b4d474d03e0959fca6ab04b91809f84480647))
* deps check ([0d8f298](https://www.github.com/jthegedus/asdf-gcloud/commit/0d8f2986475f6d35396b7fb6dc8f2192e95371fc))
* formatting in issue and PR templates ([80aa84b](https://www.github.com/jthegedus/asdf-gcloud/commit/80aa84b59217c26311a8ebd2a5f915ae3c0b2325))
* improve docs ([0d8f298](https://www.github.com/jthegedus/asdf-gcloud/commit/0d8f2986475f6d35396b7fb6dc8f2192e95371fc))
* incorrect git installation command ([f0a7b55](https://www.github.com/jthegedus/asdf-gcloud/commit/f0a7b552b0463d93af35ec063d38ae75af9b4eb3))
* list-all ([#4](https://www.github.com/jthegedus/asdf-gcloud/issues/4)) ([e63974a](https://www.github.com/jthegedus/asdf-gcloud/commit/e63974addb0b28d5620b8df4eebfd73a6707275a))
* PR link text when rendering of badge fails ([025c1c8](https://www.github.com/jthegedus/asdf-gcloud/commit/025c1c85d6b1be2e8921795eef2ef02e706f3dcf))
* relative path sourcing for asdf-direnv compat ([#39](https://www.github.com/jthegedus/asdf-gcloud/issues/39)) ([9b3b917](https://www.github.com/jthegedus/asdf-gcloud/commit/9b3b917bc1df28f457f102bd021b87a1dffc770b))
* shellcheck ([0d8f298](https://www.github.com/jthegedus/asdf-gcloud/commit/0d8f2986475f6d35396b7fb6dc8f2192e95371fc))
* shellcheck ignore asdf env vars ([188f027](https://www.github.com/jthegedus/asdf-gcloud/commit/188f02701eecaa4ad4509c2a9ad9dd4807efa3a3))
* shellcheck installation source URL ([a92239e](https://www.github.com/jthegedus/asdf-gcloud/commit/a92239eadd03f1b8826b511e0d6bf03b137e81e3))
* shfmt in pre-commit hook ([#35](https://www.github.com/jthegedus/asdf-gcloud/issues/35)) ([23a2f04](https://www.github.com/jthegedus/asdf-gcloud/commit/23a2f0456397b292a79cebe9f048f27bb6e7a381))
* shfmt lint ([e2993f4](https://www.github.com/jthegedus/asdf-gcloud/commit/e2993f4ac2f31a5cf611c185f1566c69805a96ef))
* unbound array variable ([0d8f298](https://www.github.com/jthegedus/asdf-gcloud/commit/0d8f2986475f6d35396b7fb6dc8f2192e95371fc))
* uninstall command without using gcloud ([#16](https://www.github.com/jthegedus/asdf-gcloud/issues/16)) ([71180e0](https://www.github.com/jthegedus/asdf-gcloud/commit/71180e0c6037ccff8eb2efdf4b4ee70e8a4028d7))
* urls to repo in package.json ([ad3bbfa](https://www.github.com/jthegedus/asdf-gcloud/commit/ad3bbfaba37c358ca597ffc6b72deaed64e79f7a))
* urls to repo in package.json ([6971f95](https://www.github.com/jthegedus/asdf-gcloud/commit/6971f951cd1e991a12b16a9346e808a0742b5c0f))
