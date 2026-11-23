
# Connect the Local LLM to Other Agents

LattePanda Sigma 2 comes with a pre-installed local LLM and OpenClaw AI assistant. In addition to OpenClaw, you can connect the local model to other AI agents using the OpenAI-compatible API provided by OVMS (OpenVINO Model Server).

This guide demonstrates how to configure **OpenCode, Pi, Hermes Agent, and Reasonix**, and verify their file operations and memory capabilities.

## Preparation

1. Boot into the pre-installed Ubuntu OS.

2. Double-click the **🔮 Start OVMS API** shortcut on the desktop. For details, see [Start the OVMS API Only](local_ai_getting_started.md#start-the-ovms-api-only).

3. Open a terminal with `Ctrl + Alt + T` and verify that the model is available:

    ```bash
    curl http://localhost:8080/v3/models
    ```

    The response should include `qwen`.

The following settings will be used throughout this guide:

| Item | Value |
| :--- | :--- |
| Base URL | `http://localhost:8080/v3` |
| API Format | OpenAI-compatible Chat Completions |
| Model Name | `qwen` |
| API Key | Not required |

!!! note
    An Internet connection is required to install the agents. Once configured, model inference runs locally through OVMS. Agent features that use external services may still require Internet access.

## OpenCode

[OpenCode](https://opencode.ai/) is an AI coding agent that can read and edit files, execute terminal commands, and assist with software development.

### Install OpenCode

Open a terminal and run:

```bash
curl -fsSL https://opencode.ai/v2/install | bash
```

Verify the installation:

```bash
opencode --version
```

### Configure the Local Model

Create the configuration file:

```bash
mkdir -p ~/.config/opencode
nano ~/.config/opencode/opencode.json
```

Add the following content:

```json
{
  "$schema": "https://opencode.ai/config.json",
  "model": "sigma2/qwen",
  "providers": {
    "sigma2": {
      "name": "LattePanda Sigma 2",
      "package": "@opencode/ai/providers/openai-compatible",
      "settings": {
        "baseURL": "http://localhost:8080/v3"
      },
      "models": {
        "qwen": {
          "name": "Sigma 2 Local Qwen",
          "modelID": "qwen"
        }
      }
    }
  }
}
```

Press `Ctrl + O`, then `Enter` to save. Press `Ctrl + X` to exit.

### Run and Test OpenCode

Create a working folder on the desktop and launch OpenCode:

```bash
mkdir -p ~/Desktop/OpenCodeTest
cd ~/Desktop/OpenCodeTest
opencode
```

Confirm that `sigma2/qwen` is selected. You can use `/models` to select it manually.

Make sure you are using the **Build** agent for file operations.

Enter the following prompt:

> Check my Ubuntu version and current local time using terminal commands. Create a Markdown file named `AgentDemo.md` in the current folder. Include the system information and a Chinese translation of "Local AI runs on this device." Read the file again to verify the content.

OpenCode should execute terminal and file operations to complete the task.

Press `Ctrl + D` to exit OpenCode.

Open the `OpenCodeTest` folder on the desktop and check `AgentDemo.md`.

<!-- Screenshot: OpenCode tool execution and the generated Markdown file. -->

### Test Persistent Instructions

OpenCode supports persistent project instructions through `AGENTS.md`.

Launch OpenCode again:

```bash
cd ~/Desktop/OpenCodeTest
opencode
```

Enter:

> For future tasks in this folder, remember that I prefer concise explanations and Markdown documentation. Save these preferences in `AGENTS.md`.

Verify that `AGENTS.md` has been created.

Start a **new session** in the same folder and ask:

> What are my preferences for explanations and documentation?

OpenCode should load the instructions from `AGENTS.md` and answer accordingly.

!!! note
    This verifies persistent project instructions, not automatic long-term memory. OpenCode also supports saved sessions, which can be resumed to recover previous conversations.

## Pi

[Pi](https://pi.dev/) is a lightweight terminal AI coding agent with file operations, shell tools, and customizable project instructions.

### Install Pi

Run:

```bash
curl -fsSL https://pi.dev/install.sh | sh
```

Verify the installation:

```bash
pi --version
```

### Configure the Local Model

Create the configuration file:

```bash
mkdir -p ~/.pi/agent
nano ~/.pi/agent/models.json
```

Add the following content:

```json
{
  "$schema": "https://pi.dev/schemas/models.schema.json",
  "providers": {
    "sigma2": {
      "baseUrl": "http://localhost:8080/v3",
      "api": "openai-completions",
      "apiKey": "local",
      "models": [
        {
          "id": "qwen",
          "name": "Sigma 2 Local Qwen"
        }
      ]
    }
  }
}
```

The `local` key is a placeholder used by Pi. OVMS does not require authentication.

Save and close the configuration file.

### Run and Test Pi

Run:

```bash
mkdir -p ~/Desktop/PiTest
cd ~/Desktop/PiTest
pi
```

Enter `/model` and select `sigma2/qwen`.

Enter:

> Check my Ubuntu version and current local time using terminal commands. Create a Markdown file named `AgentDemo.md` in the current folder. Include the system information and a Chinese translation of "Local AI runs on this device." Read the file again to verify the content.

Confirm that Pi uses the required tools and generates the Markdown file.

Enter `/quit` to exit Pi, then open the `PiTest` folder on the desktop to verify the file.

<!-- Screenshot: Pi tool execution and the generated Markdown file. -->

### Test Persistent Instructions

Launch Pi again in the same folder:

```bash
cd ~/Desktop/PiTest
pi
```

Enter:

> For future tasks in this folder, remember that I prefer concise explanations and Markdown documentation. Save these preferences in `AGENTS.md`.

After the file is created, enter `/new` to start a new session.

Ask:

> What are my preferences for explanations and documentation?

Pi should follow the saved instructions.

!!! note
    Pi loads `AGENTS.md` as persistent project context. This is different from automatic long-term memory. To resume a previous conversation instead, use `pi --continue`.

## Hermes Agent

[Hermes Agent](https://hermes-agent.nousresearch.com/) supports terminal operations, file management, and persistent memory across sessions.

### Install Hermes Agent

Run:

```bash
curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash
source ~/.bashrc
```

Verify the installation:

```bash
hermes --version
```

### Configure the Local Model

Run:

```bash
hermes model
```

Select **Custom Endpoint** and configure:

| Setting | Value |
| :--- | :--- |
| Base URL | `http://localhost:8080/v3` |
| Model Name | `qwen` |
| API Key | Leave empty |
| API Format | OpenAI-compatible Chat Completions |

Follow the wizard to save the configuration. Hermes stores its model settings in `~/.hermes/config.yaml`.

!!! note
    Hermes requires a context window of at least 64K tokens. The local inference configuration must support this requirement. If a context-length error occurs, verify the actual OVMS model configuration.

### Run and Test Hermes

Run:

```bash
mkdir -p ~/Desktop/HermesTest
cd ~/Desktop/HermesTest
hermes
```

Enter:

> Check my Ubuntu version and current local time using terminal commands. Create a Markdown file named `AgentDemo.md` in the current folder. Include the system information and a Chinese translation of "Local AI runs on this device." Read the file again to verify the content.

Confirm that Hermes executes the required operations and creates the file.

Enter `/quit` or press `Ctrl + D` to exit Hermes.

Open the `HermesTest` folder on the desktop to verify the generated file.

<!-- Screenshot: Hermes tool execution and the generated Markdown file. -->

### Test Persistent Memory

Launch Hermes again:

```bash
cd ~/Desktop/HermesTest
hermes
```

Enter:

> Please remember that I prefer concise technical explanations and Markdown documentation. Use your persistent memory tool to save this preference for future sessions.

Wait for the memory operation to finish, then exit Hermes.

Check the saved user preferences in a terminal:

```bash
cat ~/.hermes/memories/USER.md
```

The preferences should be present in the file.

Start a new Hermes session:

```bash
hermes
```

Ask:

> What are my preferences for explanations and documentation?

Hermes should recall the saved preferences without relying on the previous conversation.

<!-- Optional screenshot: Hermes persistent memory and recall result. -->

## Reasonix

[Reasonix](https://github.com/loserbcc/reasonix) is an AI coding agent that supports custom API providers, terminal operations, and persistent memory.

### Install Reasonix

Make sure Node.js and npm are available. Then run:

```bash
npm install -g reasonix
```

Verify the installation:

```bash
reasonix --version
```

### Configure the Local Model

Run:

```bash
reasonix setup
```

Add an **OpenAI-compatible** provider:

| Setting | Value |
| :--- | :--- |
| Provider Name | `sigma2-local` |
| API Type | OpenAI-compatible |
| Base URL | `http://localhost:8080/v3` |
| Model Name | `qwen` |
| API Key | Leave empty |
| Default Model | `sigma2-local` |

Select **Save and exit** to apply the configuration.

The corresponding provider settings in `~/.reasonix/config.toml` are:

```toml
default_model = "sigma2-local"

[[providers]]
name = "sigma2-local"
kind = "openai"
base_url = "http://localhost:8080/v3"
model = "qwen"
```

### Run and Test Reasonix

Run:

```bash
mkdir -p ~/Desktop/ReasonixTest
cd ~/Desktop/ReasonixTest
reasonix
```

Confirm that the local model is selected.

Enter:

> Check my Ubuntu version and current local time using terminal commands. Create a Markdown file named `AgentDemo.md` in the current folder. Include the system information and a Chinese translation of "Local AI runs on this device." Read the file again to verify the content.

Approve the required tool operations when prompted.

Press `Ctrl + D` to exit Reasonix, then verify `AgentDemo.md` in the desktop folder.

<!-- Screenshot: Reasonix tool execution and the generated Markdown file. -->

### Test Persistent Memory

Launch Reasonix again:

```bash
cd ~/Desktop/ReasonixTest
reasonix
```

Enter:

> Please remember that I prefer concise technical explanations and Markdown documentation. Save this preference to persistent memory for future sessions.

Confirm the memory write if prompted.

Enter:

```text
/memory
```

Check whether the preference has been saved.

Press `Ctrl + D` to exit, then launch Reasonix again without resuming the previous session:

```bash
reasonix
```

Ask:

> What are my preferences for explanations and documentation?

Reasonix should retrieve the previously saved preference.

Use `/memory recall` to inspect the memory retrieval results.

<!-- Optional screenshot: Reasonix memory retrieval and recall result. -->

## Troubleshooting

| Issue | Solution |
| :--- | :--- |
| Unable to connect to the local model | Check whether OVMS is running with `curl http://localhost:8080/v3/models`. |
| Agent can chat but cannot execute tools | Check tool permissions and whether the local model supports tool calling through OVMS. |
| The generated Markdown file is missing | Check the current working folder and confirm that the agent actually executed a file-writing operation. |
| Agent does not remember preferences | Check whether the memory or instruction file was saved, and start a new session to verify. |

## Stopping the Service

Exiting an agent closes its interactive terminal interface but does not stop OVMS.

When you finish using the local model, double-click the **💤 Stop AI Assistant** shortcut on the desktop to stop the local AI services.

## References

- [OpenCode Documentation](https://opencode.ai/docs/)
- [Pi Documentation](https://docs.pi.dev/latest/quickstart)
- [Hermes Agent Documentation](https://hermes-agent.nousresearch.com/docs/getting-started/quickstart)
- [Reasonix Documentation](https://github.com/loserbcc/reasonix/blob/main-v2/docs/GUIDE.md)

------

[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }
