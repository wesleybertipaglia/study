# Reactjs
React is an open-source framework to create user interfaces. It's most famous for creating web applications. But React can be used to create mobile or desktop applications through React Native. React focuses on the View in Model-View-Controller. So you can use other libraries for routing, state management, and accessing APIs.

## JSX
React uses a special syntax known as JavaScript XML (JSX). JSX allows you to integrate both HTML (or custom components you might create) and JavaScript into a single file or even single line of code. By using JSX, you can rely on JavaScript syntax for logic. Visual Studio Code provides IntelliSense for JSX files, so it's a useful tool when you're working with React.

## The build process
Browsers don't natively support JSX. So JavaScript and HTML must be generated from the JSX files to be rendered by a browser. Several bundlers and other tools can perform the necessary tasks. These tools include Webpack, Parcel, and Snowpack. We'll use Snowpack because it doesn't require code or extra scripting.

## Components
React development is based on components. Components are self-contained units of both display and work. They can be reused in your application. Use them to logically break down your application into smaller chunks (or components).