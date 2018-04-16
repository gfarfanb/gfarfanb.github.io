
# Hot to contribute

I'm really glad you're reading this, thanks.

The following is a set of guidelines for contributing to Way of the Developer. 
Use your best judgment, and feel free to propose changes to this document or 
any other community document in a pull request.

## Code of Conduct

This project and everyone participating in it is governed by the Way of the Developer
[Code of Conduct](./CODE_OF_CONDUCT.md). Please report unacceptable behavior 
to giovanni.fb@hotmail.com.

## Getting started

To start using this repository right away, 
[fork this repository on GitHub](https://github.com/gfarfanb/gfarfanb.github.io/fork).

### How to install it

For a full local installation,
 [download your own copy](https://github.com/gfarfanb/way-of-the-developer/archive/gh-pages.zip) 
 and unzip it into it's own directory. From there, open up your favorite command line tool, 
 and enter `jekyll serve`. Your site should be up and running locally at 
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
[this guide for installing Ruby on Ubuntu](https://gorails.com/setup/ubuntu/14.04) 
(remember choice the best setup based on Ubuntu version using `lsb_release -a`). 
In case that you already have Ruby, the output must be similar to:
```bash
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]
```
* Install Bundler via command line:
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

### Posts

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

Basically you need to put your images under [Wiki's project repository](https://github.com/gfarfanb/gfarfanb.github.io.wiki.git), 
after that the images will be accesible using this root `https://raw.githubusercontent.com/wiki/gfarfanb/gfarfanb.github.io`.
The file `_data/settings.yml` contains a property `assets` with the root path and whatever part
you want to show an image, just put the resource like 
`{{ site.data.settings.assets }}/img/any_image_you_already_push_to_wiki.png`.

### Graphviz images



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

Remember update the post headers with your authro information. Do not forget include
the credits of the image author if apply (is not necessary to include this person 
in the authors file, only in post headers).

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

If you want to include a group of sequential post, please indicate the name of the series
into the post headers as well as the post order in the series. Be careful, for correctly group
by series, the name of the series must be exactly the same (case sensitive) in each post.

```yml
series: 
seriesnumber:
```

### Any other kind of contribution

It is always welcome a big change idea, just propose via pull request.

## Reporting bugs

.github/ISSUE_TEMPLATE.md

Gitter 
Disqus

## Pull Requests

.github/PULL_REQUEST_TEMPLATE.md

[Contribution guidelines for this project](.github/CONTRIBUTING.md)
