from mylib.bot import scrape
import click


@click.command()
@click.option(
    "--name", prompt="Wikipedia page to scrape", help="web page we want to scrape"
)
def cli(name):
    results = scrape(name)
    click.echo(click.style(f"{results}", bg="red", fg="blue"))


if __name__ == "__main__":
    cli()
