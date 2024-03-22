# Prettier

Prettier is a popular code formatter that automatically formats your code to ensure consistency in style and formatting across your project.

**Instalation**

```shell
npm i -D prettier
```

**Usage**

- Configuration:

  .prettierrc.json

  ```json
  {
    "trailingComma": "es5",
    "tabWidth": 2,
    "semi": false,
    "singleQuote": true
  }
  ```

- Scripts:

  package.json

  ```json
  "scripts": {
  "lint": "prettier --check .",
  "format": "prettier --write ."
  }
  ```

- Ignore:

  .prettierignore

  ```.
    .git*
    node_modules/
    package-lock.json
  ```

**Resources**

- [website](https://prettier.io/)
- [repository](https://github.com/prettier/prettier)
- [documentation](https://prettier.io/docs/)

## Git Hooks

Git hooks are scripts that Git executes at specific points in the version control process. These scripts allow you to customize and automate various actions before or after certain Git events. Git hooks are stored in the .git/hooks directory of your Git repository, and they are not shared between repositories.

You can use Prettier with a git hook tool. This can re-format your files in some point off your version control.

Here are some common Git hooks:

- pre-commit
- pre-receive
- post-receive
- pre-push
- post-merge
- post-checkout
- pre-rebase

### Husky

Husky is a popular tool that makes it easy to set up and manage Git hooks within your project.

It allows you to define scripts to run at specific points in your Git workflow, such as before commits, pushes, or merges.

This enables you to automate tasks like code linting, formatting, testing, or any custom actions you want to perform.

**Instalation:**

```shell
npm i -D husky
```

**Usage:**

- Init:

  ```shell
  npx husky init
  ```

- Scripts:

  .husky/pre-commit

  ```
  npm run format && git add .
  ```

**Resources:**

- [website](https://typicode.github.io/husky/)
- [repository](https://github.com/typicode/husky)
- [documentation](https://typicode.github.io/husky/get-started.html)

### Lint Staged

**Instalation**

```shell
npm i -D lint-staged
```

**Usage**

- Configuration

  package.json

  ```json
    "lint-staged": {
        "*.{js,jsx,ts,tsx,json,css,scss,html}": [
            "prettier --write"
        ]
    }
  ```

- Scripts:

  .husky/pre-commit

  ```
  npm run lint-staged
  ```

- [repository](https://github.com/lint-staged/lint-staged)
