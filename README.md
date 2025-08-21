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

### Docker Development (Recommended)

Using Docker provides a consistent development environment:

#### Option 1: Docker Compose (Easiest)

1. **Build and start the development server:**
   ```bash
   docker-compose up
   ```

2. **View the website:**
   Open your browser and go to `http://localhost:4000`

3. **Stop the server:**
   ```bash
   docker-compose down
   ```

#### Option 2: Docker Only

1. **Build the Docker image:**
   ```bash
   docker build -t jekyll-site .
   ```

2. **Run the development server:**
   ```bash
   docker run --rm -it -p 4000:4000 -p 35729:35729 -v $(pwd):/srv/jekyll jekyll-site
   ```

3. **For production build:**
   ```bash
   docker run --rm -v $(pwd):/srv/jekyll jekyll-site bundle exec jekyll build
   ```

#### Features
- **Live reload**: Changes to files automatically refresh the browser
- **Volume mounting**: Your local files are synced with the container
- **Consistent environment**: Same Ruby version and dependencies everywhere

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

## Docker Troubleshooting

### Common Docker Issues

1. **Port already in use:**
   ```bash
   # Kill any process using port 4000
   sudo lsof -t -i:4000 | xargs kill -9
   ```

2. **Permission issues with volume mounting:**
   ```bash
   # Fix ownership issues
   docker-compose run --rm jekyll chown -R $(id -u):$(id -g) /srv/jekyll
   ```

3. **Bundle install issues:**
   ```bash
   # Clean and rebuild
   docker-compose down
   docker system prune -f
   docker-compose build --no-cache
   ```

4. **Live reload not working:**
   - Ensure both ports 4000 and 35729 are exposed
   - Check if your firewall is blocking the ports
   - Use `--force_polling` flag for file system watching issues

### Alternative: Manual Docker Setup

If you prefer manual control or are having issues with the above methods:

```shell
# Install dependencies inside container
docker run --rm -it -v $(pwd):/srv/jekyll -w /srv/jekyll ruby:3.1-slim bash
apt-get update && apt-get install -y build-essential git
bundle install
bundle exec jekyll serve --host 0.0.0.0
```

Useful commands are also contained in `bin/deploy`
## Reference and Resources

- The site is based on [al-folio commit](https://github.com/alshedivat/al-folio/tree/895063a6251cf8ec553064748db68398456a800f)
- [Liquid grammar](https://jumpseller.com/support/liquid-sandbox/)
- [Zhepei web](http://zhepeiw.com/)
- [Design alshedivat](https://maruan.alshedivat.com/publications/)
