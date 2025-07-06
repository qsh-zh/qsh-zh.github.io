# Qinsheng Zhang's Personal Website

A clean, professional personal website for researcher Qinsheng Zhang, built with Jekyll and the al-folio theme.

## Overview

This website serves as a professional portfolio and academic presence for Qinsheng Zhang, a research scientist at NVIDIA Deep Imagination Research Group. The site features:

- Professional introduction with research background
- Selected publications and papers
- News and announcements
- Student mentees and collaborators
- Clean, responsive design optimized for academic profiles

## Quick Start

### Prerequisites

- Ruby 2.7+ (recommended: Ruby 3.0+)
- Bundler gem
- Git

### Local Development

1. **Clone the repository:**
   ```bash
   git clone https://github.com/qsh-zh/qsh-zh.github.io.git
   cd qsh-zh.github.io
   ```

2. **Install dependencies:**
   ```bash
   bundle install
   ```

3. **Run the development server:**
   ```bash
   bundle exec jekyll serve
   ```

4. **View the website:**
   Open your browser and go to `http://localhost:4000`

### Docker Development (Alternative)

If you prefer using Docker:

1. **Build and run with Docker:**
   ```bash
   docker run --rm -it -p 4000:4000 -v $(pwd):/srv/jekyll jekyll/jekyll:latest bash
   docker run -it --rm --name web --mount type=bind,source=/etc/passwd,target=/etc/passwd,readonly --mount type=bind,source=/etc/group,target=/etc/group,readonly -u $(id -u $USER):$(id -g $USER) -p 4001:4001 -v $(pwd):/home/dev ubuntu /bin/bash
   ```

2. **Inside the container:**
   ```bash
   bundle install
   bundle exec jekyll serve --host 0.0.0.0
   ```

## Deployment

### GitHub Pages (Recommended)

The website is configured to deploy automatically to GitHub Pages:

1. **Push to main branch:**
   ```bash
   git add .
   git commit -m "Update website"
   git push origin main
   ```

2. **GitHub Actions will automatically build and deploy the site**

### Manual Deployment

To deploy manually:

1. **Build the site:**
   ```bash
   bundle exec jekyll build
   ```

2. **Deploy the `_site` directory to your web server**

## Configuration

### Site Configuration

Edit `_config.yml` to customize:

- Site title and description
- Social media links
- Google Analytics
- Contact information
- Blog settings

### Content Management

- **About page**: Edit `_pages/about.md`
- **Publications**: Add to `_bibliography/papers.bib`
- **News**: Add markdown files to `_news/`
- **Projects**: Add markdown files to `_projects/`
- **Blog posts**: Add markdown files to `_posts/`

### Images and Assets

- **Profile image**: Place in `assets/img/` and update `_pages/about.md`
- **Other images**: Store in `assets/img/`
- **PDFs**: Store in `assets/pdf/`

## Customization

### Adding New Pages

1. Create a new markdown file in `_pages/`
2. Add appropriate front matter
3. Update navigation in `_config.yml` if needed

### Styling

- **Custom CSS**: Edit files in `_sass/`
- **Layouts**: Modify files in `_layouts/`
- **Includes**: Edit files in `_includes/`

## Troubleshooting

### Common Issues

1. **Ruby version conflicts**: Use rbenv or rvm to manage Ruby versions
2. **Bundler issues**: Run `bundle clean` and `bundle install`
3. **Jekyll build errors**: Check for syntax errors in markdown files
4. **Local server not accessible**: Ensure you're using `--host 0.0.0.0` for Docker

### Performance Tips

- Optimize images before uploading
- Use compressed PDFs for publications
- Minimize custom CSS for faster loading

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test locally
5. Submit a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Built with [Jekyll](https://jekyllrb.com/)
- Based on the [al-folio](https://github.com/alshedivat/al-folio) theme
- Hosted on [GitHub Pages](https://pages.github.com/)

## Support

For issues or questions:
- Open an issue on GitHub
- Contact: qsh.zh27@gmail.com

---

*Last updated: January 2024*

## TODO:

- [ ] Add a news seperate page, like blogs. 

## Run in docker

> Assume in starting docker with `jam-dk` and set up x-server correctly
```shell
sudo apt-get install rubygems
sudo gem install ruby
sudo gem install bundler
sudo apt-get update --fix-missing
sudo apt install ruby2.7-dev # missing can cause error
bundle install
jekyll serve
```

Useful command also contained in `bin/deploy`
## Reference and Resources

- The site is based on [al-folio commit](https://github.com/alshedivat/al-folio/tree/895063a6251cf8ec553064748db68398456a800f)
- [Liquid grammar](https://jumpseller.com/support/liquid-sandbox/)
- [Zhepei web](http://zhepeiw.com/)
- [Design alshedivat](https://maruan.alshedivat.com/publications/)
