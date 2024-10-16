# Elixir-Git-Phoenix

## Running Elixir Application Through Dev-Container

## Setup

Technologies/Software Support Required

1. VS Code Editor for Windows/Mac/Linux
2. Docker Desktop Application

Steps to Run the Elixir Application

1. Navigate to the Folder
2. Open the folder containing your Elixir application using VS Code.
3. Before starting or restarting the dev-container, ensure that Docker Desktop is up and running.

Bulilding and opening the local file in container

1. Press F1 or navigate to the command palette in VS Code.
2. Select the option "Dev-Containers: Rebuild and Reopen In Container."
3. If this option is not available, please recheck if you have downloaded the "Dev Containers" extension from the Extensions tab.
4. Once the option is selected, the Elixir application should start working under dev-container mode.
5. If you encounter any issues or errors at this stage, please recheck the web part in your docker-compose.yml file. Ensure it is uncommented for execution.

## Running Elixir application through devcontainer

Now that you have rebuilt the container and opened the local files under devcontainer mode, here is how you start with running the application

1. The terminal will ask to close it with any key being entered and you will be prompted with blank new terminal.
2. Enter the command mentioned below to start the application.

```
iex -S mix phx.server
```

Once you have entered the command the application would start and you can check and verify it at 'http://localhost:4001'

## Common issues encountered while running the Elixir application

One of the common issues you would encounter is trouble to connect with the database locally :

To troubleshoot the issue, ensure the points in the checklist below:

1. Make sure the details of database at pgadmin/postico/dbeaver are appropriate and verify it with dockercompose file in your local folder.
2. Re-check the connection port number at both ends it should be either 54321 or 5432 at both sides.
