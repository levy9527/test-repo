module.exports = {
  dataSource: "prs",
  prefix: "",
  ignoreLabels: ["duplicate", "help wanted", "invalid", "question", "wontfix"],
  ignoreIssuesWith: [
    "duplicate",
    "help wanted",
    "invalid",
    "question",
    "wontfix"
  ],
  onlyMilestones: false,
  changelogFilename: "CHANGELOG.md",
  template: {
    issue: "- {{name}} [{{text}}]({{url}})",
    group: "\n### {{heading}}\n",
    releaseSeparator: "\n---\n"
  },
  groupBy: {
    "✨ New Features:": ["enhancement"],
    "🐛 Bug Fixes:": ["bug"]
  }
};
