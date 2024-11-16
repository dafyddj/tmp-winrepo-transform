const commitTypes = [
	{ type: "rem", section: "Removals" },
	{ type: "new", section: "New Packages" },
	{ type: "update", section: "Updates" },
	{ type: "feat", section: "Features" },
	{ type: "fix", section: "Bug Fixes" },
	{ type: "test", section: "Testing" },
	{ type: "ci", section: "Continuous Integration" },
	{ type: "revert", section: "Reversions" },
	{ type: "docs", section: "Documentation" },
	{ type: "perf", section: "Performance Improvements" },
	{ type: "refactor", section: "Code Refactoring" },
	{ type: "style", section: "Style Changes" },
	{ type: "chore", section: "Maintenance" },
];

<<<<<<< before updating
// Default rules can be found in `lib/default-release-rules.js` that cover
// feat, fix, perf and breaking
const releaseRules = [
	{ type: "update", release: "patch" },
	{ type: "new", release: "minor" },
	{ type: "rem", release: "major" },
=======
// Default rules can be found in `github.com/semantic-release/commit-analyzer/lib/default-release-rules.js`
// that cover feat, fix, perf and breaking
const releaseRules = [
	{ type: "rem", release: "major" },
	{ type: "new", release: "minor" },
	{ type: "update", release: "patch" },
>>>>>>> after updating
];

const config = {
	plugins: [
		["@semantic-release/commit-analyzer", { releaseRules: releaseRules }],
		"@semantic-release/release-notes-generator",
		"@semantic-release/github",
	],
	preset: "conventionalcommits",
	presetConfig: {
		types: commitTypes,
	},
};

module.exports = config;
