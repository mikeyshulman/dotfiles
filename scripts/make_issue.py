import click
import os


PRIVATE_TOKEN = os.environ.get('PRIVATE_TOKEN')
URL = os.environ.get('GITLAB_URL', 'https://gitlab.kensho.com')
DEFAULT_PROJECT = os.environ.get('PROJECT', 'notes')




def get_client(private_token=PRIVATE_TOKEN, url=URL):
    import gitlab as g
    gl = g.Gitlab(url, private_token)
    gl.auth()
    return gl


def get_projects(gl=None):
    if gl is None:
        gl = get_client()
    return {p.name: p for p in gl.projects.list()}


def get_default_project():
    return get_projects()[DEFAULT_PROJECT]


def create_issue(title, project=None, **kwargs):
    if project is None:
        project = get_default_project()
    params = dict(title=title)
    params.update(**kwargs)
    issue = project.issues.create(params)
    return issue


def get_issues(project=None):
    if project is None:
        project = get_default_project()
    return {p.title: p for p in project.issues.list()}


def delete_issue(title, project=None, **kwargs):
    raise NotImplementedError
    if project is None:
        project = get_default_project()
    return project.issues.delete(title, **kwargs)


@click.command()
@click.argument('name')
@click.option('--delete', is_flag=True, default=False)
def run(name, delete):
    if delete:
        delete_issue(name)
    create_issue(name)


if __name__ == '__main__':
    run()
