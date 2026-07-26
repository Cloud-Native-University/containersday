/**
 * Webhook receiver for Sessionize → GitHub Actions trigger
 * Deploy to: Vercel, Replit, or any Node.js host
 *
 * Receives Sessionize webhooks and triggers GitHub Actions rebuild
 */

const https = require('https');

module.exports = (req, res) => {
    // Verify webhook secret (set in env var)
    const secret = process.env.SESSIONIZE_WEBHOOK_SECRET;
    const signature = req.headers['x-sessionize-signature'];

    if (secret && signature !== secret) {
        console.log('Invalid webhook signature');
        res.status(401).json({ error: 'Unauthorized' });
        return;
    }

    // Only rebuild on session/speaker changes
    const { eventType } = req.body;
    if (!['session.accepted', 'session.declined', 'speaker.created'].includes(eventType)) {
        res.status(200).json({ message: 'Event ignored' });
        return;
    }

    console.log('Sessionize webhook received:', eventType);

    // Trigger GitHub Actions
    const owner = 'Cloud-Native-University';
    const repo = 'containersday';
    const token = process.env.GITHUB_TOKEN;

    const data = JSON.stringify({
        event_type: 'sessionize-update',
        client_payload: { event: eventType }
    });

    const options = {
        hostname: 'api.github.com',
        path: `/repos/${owner}/${repo}/dispatches`,
        method: 'POST',
        headers: {
            'Authorization': `token ${token}`,
            'Accept': 'application/vnd.github.v3+json',
            'Content-Type': 'application/json',
            'Content-Length': data.length,
            'User-Agent': 'Sessionize-Webhook'
        }
    };

    const request = https.request(options, (response) => {
        console.log(`GitHub API status: ${response.statusCode}`);
        res.status(response.statusCode).json({ message: 'Build triggered' });
    });

    request.on('error', (error) => {
        console.error('GitHub API error:', error);
        res.status(500).json({ error: 'Failed to trigger build' });
    });

    request.write(data);
    request.end();
};
