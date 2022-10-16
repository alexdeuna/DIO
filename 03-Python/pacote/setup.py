from setuptools import setup, find_packages

with open("README.md", "r") as f:
    page_description = f.read()

with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup(
    name="ola_mundo",
    version="0.0.1",
    author="AlexDeUna",
    author_email="alexdeuna@gmail.com",
    description="Meu primeiro pacote - Olá Mundo!",
    long_description=page_description,
    long_description_content_type="text/markdown",
    url="https://github.com/alexdeuna/DIO/tree/master/03-Python/pacote",
    packages=find_packages(),
    install_requires=requirements,
    python_requires='>=3.8',
)