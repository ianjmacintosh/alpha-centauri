# Alpha Centauri

This project is designed as a starting point for Vite projects hosted on Cloudflare

## Benefits

- Dev container immediately ready to build and deploy anywhere; all your project's stuff isolated from your personal system
- React with TypeScript immediately available
- Vite already configured with Cloudflare plugin
- HMR dev server running in a container, reachable from the container's host machine
- Instantly ready for end-to-end testing (Playwright), Chrome already installed
- Formatting, linting, and type checking all available locally and baked into GitHub Actions for all new pull requests
- Automatic preview environments deployed via Cloudflare

> **Take notes as you go through these steps. When you complete the steps, you can return to this repo (ianjmacintosh/alpha-centauri) to smooth out those rough edges. But do that later. Right now, build something great.**

## Quick Start

Your quick start steps will be split up logically by platform concern:

- GitHub
- Cloudflare
- More GitHub setup
- Application code

## Quick Start: GitHub

### Create a new repository

- Pick a name
- Start with a template: `alpha-centauri`
- Do not include all branches

### Update GitHub extension permission

In your GitHub user settings, you'll find an extension for Cloudflare

**Step-by-Step Instructions**

1. Go to your GitHub [user settings](https://github.com/settings/profile)
2. [Applications](https://github.com/settings/installations)
3. Next to "Cloudflare Workers and Pages" click **Configure**

- You may need to authenticate with GitHub with MFA

4. Repository access > Only select repositories > Pick your new repo
5. Save

### Block PR's from random people

- In your repo: Settings
- Features > Pull requests > Pull request permissions "Creation allowed by: Collaborators only"

## Quick Start: Cloudflare

1. Create a new Cloudflare "Workers & Pages" Application ([details](#create-a-new-cloudflare-application))
2. Hook up to your custom domain ([details](#hook-up-your-custom-domain))
3. Optional: If you bought a domain for this, point WWW to apex ([details](#point-www-to-apex))
4. Disable web analytics ([details](#disable-web-analytics))
5. Point HTTP to HTTPS ([details](#point-http-to-https))
6. Create preview environments for PR's ([details](#create-preview-environments))

### Create a New Cloudflare Application

In the Cloudflare web UI:

- Build > Compute > Workers & Pages
- Create Application
- Continue with GitHub
- Select your repository you just created
- Set up your application
  - Ensure "Builds for non-production branches" is checked
  - Advanced: Create new build API token
- Ensure the app loads

### Hook up your custom domain

In your new application's "Domains" tab:

- Under "Custom Domains and Routes", click "+ Add Domain"
- Add your domain

### Point WWW to apex

This step is optional and only makes sense if you bought a domain name.

### Disable web analytics

Follow the instructions in [my article](https://www.ianjmacintosh.com/articles/disabling-cloudflare-web-analytics/).

If you are running in a subdomain on a domain where this has already been done, you don't need to do it again.

### Point HTTP to HTTPS

Write something. Anything. Read it when using it. Edit these instructions to make them better before moving onto the next step.

### Create Preview Environments

Write something. Anything. Read it when using it. Edit these instructions to make them better before moving onto the next step.

### Set Default Merge Strategy to "Squash & Merge"

You'll have to do this manually when you merge your first PR, but there may be a GitHub config file?

## Quick Start: Application Code

1. Prepare to work in a dev container; probably following instructions from [my article](https://www.ianjmacintosh.com/articles/make-a-dev-container/).
2. Switch to a new branch named something like "initialize-project": `git checkout -b init-project`
3. Install dependencies: `npm install`

- You may get a vulnerability warning after running this command. `npm update` may fix some of these. Commit and push `package-lock.json` if so.

4. Authenticate with GitHub CLI: `gh auth login` and follow on-screen instructions
5. Authenticate with Claude: `claude` and follow on-screen instructions
6. Verify Matt Pocock's skills are installed. In Claude, try `/grilling`
7. Find all `text-alpha-centauri` and replace with your application name
8. Update `src/index.html` metadata/OpenGraph data with better shareables
9. Add analytics using Simple Analytics
10. Open a Pull Request and ensure tests pass
11. Merge your change (set default merge strategy to "Squash & Merge")

12. Get to "Hello World" deployed; Cloudflare setup, GitHub setup, CI, dev container
13. Style guide created
14. Pick fonts: 1 heading font, 1 body text font
15. Pick color scheme relying on one of the main four brands
16. Define primitive design elements like buttons, links, headings
17. If a motif arises, use it

## Development

### Start a dev server

```bash
npm run dev
```

### Build the app

```bash
npm run build
```

## Deployment

### Deploying to Preview Environments

This project was intended to work with GitHub and Cloudflare to deploy each branch associated with a pull request to `main` to a new preview environment

### Deploying to Production

This project was intended to work with GitHub and Cloudflare to deploy all changes merged to `main` to production
