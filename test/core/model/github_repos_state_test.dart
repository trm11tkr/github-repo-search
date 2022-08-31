import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_search/core/model/github_repos_state.dart';

/// GithubReposStateクラスはその他のレスポンスクラスのルートにあたるので、
/// GithubReposStateクラスのfromJsonのテストのみで、デコードが機能していることを確認できる。

void main() {
  // https://api.github.com/search/repositories?q=dtrupenn/Tetris
  const jsonData = '''
{
  "total_count": 1,
  "incomplete_results": false,
  "items": [
    {
      "id": 3081286,
      "node_id": "MDEwOlJlcG9zaXRvcnkzMDgxMjg2",
      "name": "Tetris",
      "full_name": "dtrupenn/Tetris",
      "private": false,
      "owner": {
        "login": "dtrupenn",
        "id": 872147,
        "node_id": "MDQ6VXNlcjg3MjE0Nw==",
        "avatar_url": "https://avatars.githubusercontent.com/u/872147?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/dtrupenn",
        "html_url": "https://github.com/dtrupenn",
        "followers_url": "https://api.github.com/users/dtrupenn/followers",
        "following_url": "https://api.github.com/users/dtrupenn/following{/other_user}",
        "gists_url": "https://api.github.com/users/dtrupenn/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/dtrupenn/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/dtrupenn/subscriptions",
        "organizations_url": "https://api.github.com/users/dtrupenn/orgs",
        "repos_url": "https://api.github.com/users/dtrupenn/repos",
        "events_url": "https://api.github.com/users/dtrupenn/events{/privacy}",
        "received_events_url": "https://api.github.com/users/dtrupenn/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/dtrupenn/Tetris",
      "description": "A C implementation of Tetris using Pennsim through LC4",
      "fork": false,
      "url": "https://api.github.com/repos/dtrupenn/Tetris",
      "forks_url": "https://api.github.com/repos/dtrupenn/Tetris/forks",
      "keys_url": "https://api.github.com/repos/dtrupenn/Tetris/keys{/key_id}",
      "collaborators_url": "https://api.github.com/repos/dtrupenn/Tetris/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/dtrupenn/Tetris/teams",
      "hooks_url": "https://api.github.com/repos/dtrupenn/Tetris/hooks",
      "issue_events_url": "https://api.github.com/repos/dtrupenn/Tetris/issues/events{/number}",
      "events_url": "https://api.github.com/repos/dtrupenn/Tetris/events",
      "assignees_url": "https://api.github.com/repos/dtrupenn/Tetris/assignees{/user}",
      "branches_url": "https://api.github.com/repos/dtrupenn/Tetris/branches{/branch}",
      "tags_url": "https://api.github.com/repos/dtrupenn/Tetris/tags",
      "blobs_url": "https://api.github.com/repos/dtrupenn/Tetris/git/blobs{/sha}",
      "git_tags_url": "https://api.github.com/repos/dtrupenn/Tetris/git/tags{/sha}",
      "git_refs_url": "https://api.github.com/repos/dtrupenn/Tetris/git/refs{/sha}",
      "trees_url": "https://api.github.com/repos/dtrupenn/Tetris/git/trees{/sha}",
      "statuses_url": "https://api.github.com/repos/dtrupenn/Tetris/statuses/{sha}",
      "languages_url": "https://api.github.com/repos/dtrupenn/Tetris/languages",
      "stargazers_url": "https://api.github.com/repos/dtrupenn/Tetris/stargazers",
      "contributors_url": "https://api.github.com/repos/dtrupenn/Tetris/contributors",
      "subscribers_url": "https://api.github.com/repos/dtrupenn/Tetris/subscribers",
      "subscription_url": "https://api.github.com/repos/dtrupenn/Tetris/subscription",
      "commits_url": "https://api.github.com/repos/dtrupenn/Tetris/commits{/sha}",
      "git_commits_url": "https://api.github.com/repos/dtrupenn/Tetris/git/commits{/sha}",
      "comments_url": "https://api.github.com/repos/dtrupenn/Tetris/comments{/number}",
      "issue_comment_url": "https://api.github.com/repos/dtrupenn/Tetris/issues/comments{/number}",
      "contents_url": "https://api.github.com/repos/dtrupenn/Tetris/contents/{+path}",
      "compare_url": "https://api.github.com/repos/dtrupenn/Tetris/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/dtrupenn/Tetris/merges",
      "archive_url": "https://api.github.com/repos/dtrupenn/Tetris/{archive_format}{/ref}",
      "downloads_url": "https://api.github.com/repos/dtrupenn/Tetris/downloads",
      "issues_url": "https://api.github.com/repos/dtrupenn/Tetris/issues{/number}",
      "pulls_url": "https://api.github.com/repos/dtrupenn/Tetris/pulls{/number}",
      "milestones_url": "https://api.github.com/repos/dtrupenn/Tetris/milestones{/number}",
      "notifications_url": "https://api.github.com/repos/dtrupenn/Tetris/notifications{?since,all,participating}",
      "labels_url": "https://api.github.com/repos/dtrupenn/Tetris/labels{/name}",
      "releases_url": "https://api.github.com/repos/dtrupenn/Tetris/releases{/id}",
      "deployments_url": "https://api.github.com/repos/dtrupenn/Tetris/deployments",
      "created_at": "2012-01-01T00:31:50Z",
      "updated_at": "2022-05-29T18:30:51Z",
      "pushed_at": "2012-01-01T00:37:02Z",
      "git_url": "git://github.com/dtrupenn/Tetris.git",
      "ssh_url": "git@github.com:dtrupenn/Tetris.git",
      "clone_url": "https://github.com/dtrupenn/Tetris.git",
      "svn_url": "https://github.com/dtrupenn/Tetris",
      "homepage": "",
      "size": 496,
      "stargazers_count": 6,
      "watchers_count": 6,
      "language": "Assembly",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 2,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "web_commit_signoff_required": false,
      "topics": [
      ],
      "visibility": "public",
      "forks": 2,
      "open_issues": 0,
      "watchers": 6,
      "default_branch": "master",
      "score": 1.0
    }
  ]
}
''';

  test('fromJson test of GitHub search Api', () {
    final data = json.decode(jsonData) as Map<String, dynamic>;
    final result = GithubReposState.fromJson(data);

    final totalCount = result.totalCount;
    final repositories = result.items;

    expect(totalCount, 1);

    // 実際に取得するデータのみを抜粋してテスト
    expect(repositories[0].id, 3081286);
    expect(repositories[0].name, 'Tetris');
    expect(repositories[0].fullName, 'dtrupenn/Tetris');
    expect(repositories[0].owner.login, 'dtrupenn');
    expect(
      repositories[0].owner.avatarUrl,
      'https://avatars.githubusercontent.com/u/872147?v=4',
    );
    expect(
      repositories[0].description,
      'A C implementation of Tetris using Pennsim through LC4',
    );
    expect(repositories[0].stargazersCount, 6);
    expect(repositories[0].watchersCount, 6);
    expect(repositories[0].language, 'Assembly');
    expect(repositories[0].forksCount, 2);
    expect(repositories[0].openIssuesCount, 0);
  });
}
