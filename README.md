# Typst Resume

A modern, clean resume template built with [Typst](https://typst.app/), featuring automatic PDF generation through GitHub Actions.

## Features

- Clean and professional design
- Automated builds via GitHub Actions
- Custom typography and layout
- Responsive section layouts
- Icon support for contact information
- Easy to maintain and update

## Requirements

To build this resume locally, you'll need:

- [Typst](https://github.com/typst/typst) - The typesetting system
- Git - For version control

## Building the Resume

### Automated Builds (GitHub Actions)

The resume automatically builds and creates a release when:
1. A new tag is pushed to the repository
2. The workflow is manually triggered from the Actions tab

### Local Development

1. Clone the repository:
```bash
git clone https://github.com/pornmanut/resume.git
cd resume
```

2. Install Typst following the [official installation guide](https://github.com/typst/typst#installation)

3. Build the resume:
```bash
typst compile resume.typ resume.pdf
```

Or use the provided build script:
```bash
./build.sh
```

## Project Structure

```
.
├── assets/         # Icons and other assets
├── components/     # Reusable template components
├── resume.typ     # Main resume content
├── template.typ   # Resume template definition
└── build.sh       # Build script
```

## Customization

1. Edit `resume.typ` to update your personal information and content
2. Modify `template.typ` to adjust the layout and styling
3. Update components in the `components/` directory to change specific section layouts

---
*This documentation was generated with the assistance of Claude 3.5 Sonnet.*
