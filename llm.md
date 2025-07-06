# Personal Website Development Guide

*This file serves as a development context and instruction guide for AI assistants and developers working on Qinsheng Zhang's personal website.*

## Project Overview

**Purpose**: Academic personal website for Qinsheng Zhang, Research Scientist at NVIDIA Deep Imagination Research Group

**Target Audience**: Academic peers, potential collaborators, students, and industry professionals

**Technology Stack**: Jekyll + al-folio theme + GitHub Pages

**Timeline**: Website should be production-ready by July 3, 2025

## Website Structure & Requirements

### Main Layout (Primary Tab)

The website should maintain a clean, professional appearance with the following sections:

1. **Header Section**
   - Profile picture (right-aligned)
   - Name and current position
   - Brief location note

2. **Professional Introduction**
   - Current role and organization
   - Current research focus and contributions
   - Career progression (reverse chronological)
   - Research qualifications and expertise

3. **Selected Publications**
   - Curated list of most impactful papers
   - Auto-generated from bibliography with "selected=true" flag

4. **Student Mentees & Collaborators**
   - Section highlighting collaborative work
   - Recognition of student contributions

5. **Contact Information**
   - Professional email
   - Social media links (GitHub, Twitter, LinkedIn, etc.)

### Secondary Features

- **News Section**: Academic announcements, paper acceptances, awards
- **Blog Tab**: *Currently disabled* - to be enabled when content is available
- **Publications Page**: Complete bibliography
- **Projects Page**: Research projects and code repositories

## Design Philosophy

### Style Guidelines

- **Minimalist**: Clean, uncluttered design focusing on content
- **Professional**: Academic-oriented aesthetic
- **Responsive**: Mobile-friendly layout
- **Fast**: Optimized loading times

### Content Strategy

- **Concise**: Deliver maximum information with minimal text
- **Impactful**: Highlight key achievements and contributions
- **Accessible**: Clear navigation and readable typography
- **Current**: Regular updates with latest achievements

## Inspiration & Examples

### Reference Sites

1. **[Jiaming Song (tsong.me)](https://tsong.me/)**
   - Clear career progression
   - Specific achievements and qualifications
   - Professional but personal tone

2. **[Xun Huang (xunhuang.me)](https://www.xunhuang.me/)**
   - Excellent structure for academic positions
   - Clear research focus statements
   - Good balance of technical and accessible content

## Technical Implementation

### Current Configuration

- **Theme**: al-folio (customized)
- **Jekyll Version**: Latest stable
- **Ruby Version**: 3.0+
- **Deployment**: GitHub Pages with Actions
- **Analytics**: Google Analytics enabled

### Key Features Enabled

- [x] News announcements
- [x] Selected papers
- [x] Social media integration
- [x] Google Analytics
- [x] Responsive design
- [x] Dark mode support (optional)

### Content Management

- **About Page**: `_pages/about.md`
- **Publications**: `_bibliography/papers.bib`
- **News Items**: `_news/*.md`
- **Projects**: `_projects/*.md`
- **Configuration**: `_config.yml`

## Development Notes

### Current Status (January 2024)

- ✅ Basic structure implemented
- ✅ Professional about page created
- ✅ News section populated
- ✅ Publications system configured
- ✅ Deployment pipeline established

### Future Enhancements

- [ ] Blog functionality (when content is ready)
- [ ] Enhanced project showcase
- [ ] Talk/presentation section
- [ ] Teaching materials section
- [ ] Improved mobile optimization

## Content Guidelines

### Writing Style

- **First Person**: Use "I am" rather than "Qinsheng Zhang is"
- **Active Voice**: "I developed" rather than "was developed"
- **Specific**: Include concrete achievements and metrics
- **Professional**: Maintain academic tone while being approachable

### Information Hierarchy

1. **Current Position** (most important)
2. **Key Achievements** (research impact)
3. **Career History** (reverse chronological)
4. **Educational Background**
5. **Contact Information**

## Maintenance & Updates

### Regular Tasks

- Update news items for paper acceptances
- Add new publications to bibliography
- Update current position/role changes
- Refresh profile image periodically

### Version Control

- Use semantic versioning for major updates
- Document changes in commit messages
- Test locally before pushing to production

## Legacy Information

### Previous Setup (2022)

The original setup used Docker with specific Ruby configurations. This has been modernized to use:
- Direct Jekyll installation
- GitHub Actions for deployment
- Updated dependencies and security patches

### Historical Context

- Original theme: al-folio (commit 895063a)
- Inspiration: Multiple academic websites
- Initial focus: PhD student profile
- Current focus: Industry research scientist

---

*This file should be updated whenever significant changes are made to the website structure or requirements.*
