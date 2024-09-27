# Android Boilerplate

This is a boilerplate Android project. It’s based on that produced by the Android Studio wizard when
Empty Activity is selected, but it has the following features:

- updated dependencies
- minimal sample code
- consistent formatting and no lint warnings
- an updated root `.gitignore` file

After cloning the repository, run the included `setup.sh` script, which

- resets the repository state;
- updates the package and app names; and
- removes `README.md`, `LICENSE`, and itself.

```sh
chmod +x setup.sh
./setup.sh com.example.example "Example App"
```
