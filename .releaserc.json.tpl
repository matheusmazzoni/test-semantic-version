{
  "branches": [
    "main"
  ],
  "ci": false,
  "plugins": [
    [
      "@semantic-release/commit-analyzer",
      {
        "preset": "conventionalcommits"
      }
    ],
    [
      "@semantic-release/release-notes-generator",
      {
        "preset": "conventionalcommits"
      }
    ],
    [
      "@semantic-release/github",
      {
        "successComment": "This ${issue.pull_request ? 'PR is included' : 'issue has been resolved'} in version module_name_${nextRelease.version} :tada:",
        "labels": false,
        "releasedLabels": false
      }
    ],
    [
      "@semantic-release/changelog",
      {
        "changelogTitle": "# Changelog\n\nAll notable changes to this project will be documented in this file.",
        "changelogFile": "CHANGELOG.md"
        
      }
    ],
    [
      "@semantic-release/git",
      {
        "assets": [
          "CHANGELOG.md"
        ],
        "message": "chore(release): version module_name_${nextRelease.version} [skip ci]\n\n${nextRelease.notes}"
      }
    ]
  ]
}
