const completion: Fig.Spec = {
  name: "ya",
  description: "Yazi command-line interface",
  subcommands: [
    {
      name: "emit",
      description: "Emit a command to be executed by the current instance",
      options: [
        {
          name: ["-h", "--help"],
          description: "Print help",
        },
      ],
      args: [
        {
          name: "name",
        },
        {
          name: "args",
          isVariadic: true,
          isOptional: true,
        },
      ]
    },
    {
      name: "emit-to",
      description: "Emit a command to be executed by the specified instance",
      options: [
        {
          name: ["-h", "--help"],
          description: "Print help",
        },
      ],
      args: [
        {
          name: "receiver",
        },
        {
          name: "name",
        },
        {
          name: "args",
          isVariadic: true,
          isOptional: true,
        },
      ]
    },
    {
      name: "pkg",
      description: "Manage packages",
      subcommands: [
        {
          name: "add",
          description: "Add packages",
          options: [
            {
              name: ["-h", "--help"],
              description: "Print help",
            },
          ],
          args: {
            name: "ids",
            isVariadic: true,
            isOptional: true,
          },
        },
        {
          name: "delete",
          description: "Delete packages",
          options: [
            {
              name: ["-h", "--help"],
              description: "Print help",
            },
          ],
          args: {
            name: "ids",
            isVariadic: true,
            isOptional: true,
          },
        },
        {
          name: "install",
          description: "Install all packages",
          options: [
            {
              name: ["-h", "--help"],
              description: "Print help",
            },
          ],
        },
        {
          name: "list",
          description: "List all packages",
          options: [
            {
              name: ["-h", "--help"],
              description: "Print help",
            },
          ],
        },
        {
          name: "upgrade",
          description: "Upgrade all packages",
          options: [
            {
              name: ["-h", "--help"],
              description: "Print help",
            },
          ],
        },
        {
          name: "help",
          description: "Print this message or the help of the given subcommand(s)",
          subcommands: [
            {
              name: "add",
              description: "Add packages",
            },
            {
              name: "delete",
              description: "Delete packages",
            },
            {
              name: "install",
              description: "Install all packages",
            },
            {
              name: "list",
              description: "List all packages",
            },
            {
              name: "upgrade",
              description: "Upgrade all packages",
            },
            {
              name: "help",
              description: "Print this message or the help of the given subcommand(s)",
            },
          ],
        },
      ],
      options: [
        {
          name: ["-h", "--help"],
          description: "Print help",
        },
      ],
    },
    {
      name: "pack",
      description: "Manage packages",
      hidden: true,
      options: [
        {
          name: ["-a", "--add"],
          description: "Add packages",
          isRepeatable: true,
          args: {
            name: "add",
            isVariadic: true,
            isOptional: true,
          },
        },
        {
          name: ["-d", "--delete"],
          description: "Delete packages",
          isRepeatable: true,
          args: {
            name: "delete",
            isVariadic: true,
            isOptional: true,
          },
        },
        {
          name: ["-i", "--install"],
          description: "Install all packages",
        },
        {
          name: ["-l", "--list"],
          description: "List all packages",
        },
        {
          name: ["-u", "--upgrade"],
          description: "Upgrade all packages",
        },
        {
          name: ["-h", "--help"],
          description: "Print help",
        },
      ],
    },
    {
      name: "pub",
      description: "Publish a message to the current instance",
      options: [
        {
          name: "--str",
          description: "Send the message with a string body",
          isRepeatable: true,
          args: {
            name: "str",
            isOptional: true,
          },
        },
        {
          name: "--json",
          description: "Send the message with a JSON body",
          isRepeatable: true,
          args: {
            name: "json",
            isOptional: true,
          },
        },
        {
          name: "--list",
          description: "Send the message as a list of strings",
          isRepeatable: true,
          args: {
            name: "list",
            isVariadic: true,
            isOptional: true,
          },
        },
        {
          name: ["-h", "--help"],
          description: "Print help",
        },
      ],
      args: {
        name: "kind",
      },
    },
    {
      name: "pub-to",
      description: "Publish a message to the specified instance",
      options: [
        {
          name: "--str",
          description: "Send the message with a string body",
          isRepeatable: true,
          args: {
            name: "str",
            isOptional: true,
          },
        },
        {
          name: "--json",
          description: "Send the message with a JSON body",
          isRepeatable: true,
          args: {
            name: "json",
            isOptional: true,
          },
        },
        {
          name: "--list",
          description: "Send the message as a list of strings",
          isRepeatable: true,
          args: {
            name: "list",
            isVariadic: true,
            isOptional: true,
          },
        },
        {
          name: ["-h", "--help"],
          description: "Print help",
        },
      ],
      args: [
        {
          name: "receiver",
        },
        {
          name: "kind",
        },
      ]
    },
    {
      name: "sub",
      description: "Subscribe to messages from all remote instances",
      options: [
        {
          name: ["-h", "--help"],
          description: "Print help",
        },
      ],
      args: {
        name: "kinds",
      },
    },
    {
      name: "help",
      description: "Print this message or the help of the given subcommand(s)",
      subcommands: [
        {
          name: "emit",
          description: "Emit a command to be executed by the current instance",
        },
        {
          name: "emit-to",
          description: "Emit a command to be executed by the specified instance",
        },
        {
          name: "pkg",
          description: "Manage packages",
          subcommands: [
            {
              name: "add",
              description: "Add packages",
            },
            {
              name: "delete",
              description: "Delete packages",
            },
            {
              name: "install",
              description: "Install all packages",
            },
            {
              name: "list",
              description: "List all packages",
            },
            {
              name: "upgrade",
              description: "Upgrade all packages",
            },
          ],
        },
        {
          name: "pack",
          description: "Manage packages",
          hidden: true,
        },
        {
          name: "pub",
          description: "Publish a message to the current instance",
        },
        {
          name: "pub-to",
          description: "Publish a message to the specified instance",
        },
        {
          name: "sub",
          description: "Subscribe to messages from all remote instances",
        },
        {
          name: "help",
          description: "Print this message or the help of the given subcommand(s)",
        },
      ],
    },
  ],
  options: [
    {
      name: ["-V", "--version"],
      description: "Print version",
    },
    {
      name: ["-h", "--help"],
      description: "Print help",
    },
  ],
};

export default completion;
