# ARCHMIND — Site Execution Module

## What is included

- A dedicated construction and site execution workspace with 12 phases and activity-specific general guidance.
- Project-linked checklists, reusable templates, IR, daily site reports, RFI, material submittals, method statement drafts, NCR, and WBS progress records.
- A separate Site Engineer chat that uses the current project, stage, site records, and checklist context.
- Chat attachments for PNG, JPEG, WebP, PDF, TXT, Markdown, CSV, and JSON. Up to four attachments and 6 MB total per message.
- Arabic and English interface, AI response language, explanation levels, and HTML exports in Arabic, English, or bilingual form.

## Run locally

1. Install Node.js 20 or newer.
2. Copy `.env.example` to `.env` and configure the server-side AI provider and authentication/email settings you intend to use. Never put provider keys in browser code or share `.env`.
3. Run `npm install` once. For the supplied Windows launcher, double-click `START-ARCHMIND.bat`; it starts the local server on port 3001. Do not open `index.html` directly when you need account features.
4. Open `http://localhost:3001` and create an account. Local development activates the account immediately; production deployments require SMTP email confirmation. Project records are saved on the server.

The Site Engineer uses the same server-side OpenAI, Claude, Gemini, or Ollama provider configuration as the rest of ARCHMIND. For a public deployment, configure a cloud provider and its key in the hosting environment; a visitor's own computer does not need to run Ollama.

## Free Render preview

The included `render.yaml` uses Render's Free web-service plan and does not request a paid persistent disk. This is suitable for a public preview without adding a payment method. Free instances can sleep while idle, and their local files are temporary: user accounts and project records stored by this app can be lost after a restart, spin-down, or redeploy. Production signup also requires email confirmation, so configure a supported email delivery service before expecting visitors to create accounts. AI tools require a provider API key in Render's environment variables.

## Important review boundary

Activity guidance and AI output are drafts/general references. They do not replace approved project drawings, specifications, method statements, ITPs, permits, authority conditions, or the responsible engineer. The AI must not be treated as an inspection approval, code check, or site instruction.

## Scroll experience

The workflow uses a full-screen architectural image, a black blueprint field, then the light ARCHMIND workspace. Scroll position drives the 15-stage project journey and updates the current architectural AI stage. The provided design reference describes this visual rhythm; it does not include the frame-locked video assets needed for an identical continuous 3D camera flight.
