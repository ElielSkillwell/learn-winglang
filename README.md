# Learning repo for WingLang

I am learning WingLang Cloud Object oriented Programming Language based on Javascript. Git repo is [here](https://github.com/winglang/wing/tree/main).

## Resources
- [Winglang website](https://www.winglang.io/)
- [Winglang Workshops](https://www.youtube.com/watch?v=LMDnTCRXzJU&list=PL-P8v-FRassYkSA4smpkbjq6s5FlVgHkb&ab_channel=WingProgrammingLanguage)
- [Winglang Examples](https://github.com/winglang/examples/tree/main)
- [React Workshop](https://github.com/winglang/workshop-react)
- [Bedrock Workshop](https://github.com/winglang/workshop-bedrock)

## Commands

#### AWS configuration
```bash
npm install -g aws-cdk
export AWS_PROFILE="aws-profile"
```

#### Make empty project:
```bash
wing new empty
Installing dependencies...

Created a new empty project in the current directory! 🎉

Not sure where to get started? In your Wing application folder, try running:

  wing compile - build your project
  wing it - simulate your app in the Wing Console
  wing test - run all tests

Visit the docs for examples and tutorials: https://winglang.io/docs

🧪 This is an early pre-release of the Wing Programming Language.

We are working hard to make this a great tool, but there's still a pretty good
chance you'll encounter missing pieces, rough edges, performance issues and even,
god forbid, bugs 🐞.

Please don't hesitate to ping us at https://t.winglang.io/slack or file an issue at
https://github.com/winglang/wing. We promise to do our best to respond quickly and help out.

To help us identify issues early, we are collecting anonymous analytics.
To turn this off, set WING_DISABLE_ANALYTICS=1.
For more information see https://winglang.io/docs/analytics
(This message will self-destruct after the first run)
```

#### To get AWS CDK working, do these commands:

```bash
cd winglang-directory
export CDK_STACK_NAME="stack-name"
wing compile --platform @winglang/platform-awscdk main.w
cdk bootstap --app target/main.awscdk
cdk deploy --app target/main.awscdk
```

#### Get cloudformation YAML of the app stack
```bash
cd winglang-directory
export CDK_STACK_NAME="stack-name"
wing compile --platform @winglang/platform-awscdk main.w
cdk synth -a target/main.awscdk > template.yaml
```