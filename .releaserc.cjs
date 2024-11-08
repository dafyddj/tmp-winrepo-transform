const commitTypes = [
	{ breaking: true, release: "major" },
	{ type: "feat", section: "Features" },
	{ type: "fix", section: "Bug Fixes" },
	{ type: "new", section: "New Packages" },
	{ type: "update", section: "Updates" },
	{ type: "del", section: "Removals" },
	{ type: "docs", section: "Documentation" },
	{ type: "test", section: "Testing" },
	{ type: "perf", section: "Performance Improvements" },
	{ type: "revert", section: "Reversions" },
	{ type: "refactor", section: "Code Refactoring" },
	{ type: "style", section: "Style Changes" },
	{ type: "ci", section: "Continuous Integration" },
	{ type: "chore", section: "Maintenance" },
];

const releaseRules = [
	{ type: "update", release: "patch" },
	{ type: "new", release: "minor" },
	{ type: "del", release: "major" },
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
