# How to contribute

I'm really glad you're reading this, thanks.

The following is a set of guidelines for contributing to Way of the Developer. 
Use your best judgment, and feel free to propose changes to this document or 
any other community document in a pull request.


## Code of Conduct

This project and everyone participating in it is governed by the Way of the Developer
[Code of Conduct](./CODE_OF_CONDUCT.md). Please report any unacceptable behavior 
to @gfarfanb.


## Getting started

To start using this repository right away, 
[fork this repository on GitHub](https://github.com/gfarfanb/gfarfanb.github.io/fork).


### How to install it

For a full local installation,
 [download your own copy](https://github.com/gfarfanb/way-of-the-developer/archive/gh-pages.zip) 
 and unzip it into its own directory. From there, open up your favorite command line tool, 
 and enter `jekyll serve`. Your site should be up and run locally at 
 [http://localhost:4000](http://localhost:4000). If you do not have installed `jekyll` command 
 follow the next instructions:


#### Windows approach

* Check Ruby installation in command line `ruby --version`. If you do not have Ruby then download 
and install it using [RubyInstaller](https://rubyinstaller.org/) (in this case *rubyinstaller-2.4.1-2-x64.exe* 
was selected).  In case that you already have Ruby, the output must be similar to:
```bash
ruby 2.4.1p111 (2017-03-22 revision 58053) [x64-mingw32]
```
* Install Bundler via command line (maybe you need to **run as Administrator** mode):
```bash
gem install bundler
```
* Install Jekyll and all dependencies.
```bash
bundle install
```
* Check Jekyll installation in command line `jekyll --version`, output must be similar to:
```bash
jekyll 3.5.2
```
* Jekyll is already to use.


#### Ubuntu approach

* Check Ruby installation in command line `ruby --version`. If you do not have Ruby you can follow 
[this guide for installing Ruby on Ubuntu](https://gorails.com/setup/ubuntu/16.04) 
(remember choice the best setup based on Ubuntu version using `lsb_release -a`). 
In case that you already have Ruby, the output must be similar to:
```bash
ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]
```
* Install Bundler via command line:
```bash
gem install bundler
```
* Install Jekyll and all dependencies.
```bash
bundle install
```
* Check Jekyll installation in command line `bundle exec jekyll --version`, output must be similar to:
```bash
jekyll 3.8.6
```
* Jekyll is already to use.


#### Docker approach
Pull [gfarfanb.github.io Docker image](https://hub.docker.com/repository/docker/gfarfanb/gfarfanb.github.io):
```
docker pull gfarfanb/gfarfanb.github.io:[version]
docker image ls
```

Run container with downloaded image:
```
docker run -it -d -p 4000:4000 --name [custom-container-name] -v [/local/gfarfanb.github.io/path]:/usr/src/app gfarfanb/gfarfanb.github.io:[version]
```

Now you have access to enter the container:
```
docker ps -a
docker exec -it [container-id] bash
```

Run server:
```
bundle exec jekyll serve --host 0.0.0.0 --port 4000
```

Open it in a browser as [http://localhost:4000](http://localhost:4000). The code changes are not automatically updated so it is necessary to re-run the Jekyll server.


#### Codenvy configuration

Create a new *Run* command in the *Manage commands* panel:

Field | Value
--- | ---
Name | jekyll-server (or whatever makes sense)
Command Line | `cd ${current.project.path} && USER_HOME/.rbenv/shims/bundle exec jekyll serve --host 0.0.0.0 --port ADDED_SERVER_PORT`
Preview URL | `http://${server.port.ADDED_SERVER_PORT}`

> * `ADDED_SERVER_PORT` Port selected in the *Command Macros*, previously added in the workspace configuration as new server
> * `USER_HOME` User home in the VM


## Posts contribution

### Generating a post

Head over to the `_posts` directory to view all the posts that are currently on the website, 
and to see examples of what post files generally look like. You can simply just duplicate the 
template post and start adding your own content. You can rebuild the site in many different ways, 
but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates 
your site when a file is updated.

Making an easy way to generate posts, it was created a set of scripts:

- You can generate a new draft file by running
```bash
_scripts/newdraft.rb "Title of your post"
```

- After pass all post reviews, you can promote your draft to post by running
```bash
_scripts/publishdraft.rb _draft/Title-of-your-post.md
```

- If you are going to write a coffee post, you can generate a new post by running
```bash
_scripts/newpost.rb "Title of your post"
```

### Posting images

Basically, you need to put your images under [Wiki's project repository](https://github.com/gfarfanb/gfarfanb.github.io.wiki.git), 
after that the images will be accessible using this root `https://raw.githubusercontent.com/wiki/gfarfanb/gfarfanb.github.io`.
The file `_data/settings.yml` contains a `assets` property with the root path and whatever part
you want to show an image, just put the resource like 
`{{ site.data.settings.assets }}/img/any_image_you_already_push_to_wiki.png`.

If you prefer to make your own graphs using Graphviz, 
follow [this page](https://github.com/gfarfanb/gfarfanb.github.io/wiki/Graphviz-Image-Generation).


### Authors

Your contact information edit in the `_data/authors.yml` (name, email, Twitter and GitHub, 
or whatever you need to include). Please do not edit the `primary` author information.

```yml
<author-reference>:
  name: <author-name>
  email: <author-email>
  envelope: <author-email>
  keybase: <author-keybase-username>
  github: <author-github-username>
  twitter: <author-twitter-username>
  linkedin: <author-linkedin-username>
  facebook: <author-facebook-username>
  google-plus: <author-google-plus-community-username>
  stack-overflow: <author-stackoverflow-username>
```

Remember to update the post headers with your author information. Do not forget to 
include the credits of the image author if apply (it is not necessary to include 
this person in the authors file, only in post headers).

```yml
author: 
authorlink:
```
```yml
image:
  feature: 
  credit: 
  creditlink: 
```


### Categories and Tags

Feel free to organize your post by categories (affinity or their natural relationship) 
or adding tags (to indicate the key words people find out in the content of the post).

```yml
categories: category
tags: [tag,"tag-name-with-spaces"]
```

### Series

If you want to include a group of sequential posts, please indicate the name of the series
into the post headers as well as the post order in the series. Be careful, for grouping
by series, the name of the series must be exactly the same (case sensitive) in each post.

```yml
series: 
seriesnumber:
```

## How can I contribute in a different way?

### Reporting bugs

- Fill the [required template](./ISSUE_TEMPLATE/bug_report.md).
- Make sure you are correctly following the checklist section.
- The description must be concise.
- It is important the indicate environment you are testing.
- Do not make support questions or comments, there are specific
channels for [this chat room](https://gitter.im/way-of-the-developer/blog)
or post discussion (at the end of posts).
- Include screenshots and animated GIFs in your pull request whenever possible.


### Suggesting enhancements

It is always welcome a new change idea, refactoring, design, features,
new pages (not only posts), just propose it via [feature requests](./ISSUE_TEMPLATE/feature_request.md)
or if consider better via pull requests. 


## Pull Requests

- Fill the [required template](./PULL_REQUEST_TEMPLATE.md).
- Include screenshots and animated GIFs in your pull request whenever possible.
- Describe every change you made in a new bullet.
- End all files with a newline.
- Do not forget to list the contributors.
- Every pull request must have one review, must be up to date and must have
verified signatures, so wait and process the feeback.

Once your pull request is ready to be merged, the repository maintainers 
will integrate it. There is no additional action required from pull request 
contributors at this point.


## Copyright

Way of the Developer is licensed under 
[Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)][cc_by-sa-4.0], 
with a few exceptions like pure executable code which uses [MIT License][mit_license]. 
We consider all contributions as [CC BY-SA][cc_by-sa-4.0] or [MIT][mit_license] unless
it's explicitly stated otherwise. Any-incompatible code contributions will be rejected.
Contributions under Any-compatible licenses may be also rejected if they are not ultimately
necessary.

[cc_by-sa-4.0]: https://creativecommons.org/licenses/by-sa/4.0/
[mit_license]: https://opensource.org/licenses/MIT
