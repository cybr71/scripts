# Scripts for getting deployment name and resources limit
This script first checks whether the user has provided a namespace as an argument. If not, it prints a usage message and exits.

Then, it uses kubectl to get the names of all deployments in the specified namespace, and stores them in a file called deployment-name.

Next, it reads each line from the deployment-name file, and for each deployment, it uses kubectl to get the deployment's name, resource limits, and replica count, and prints them to the console.

Finally, the script removes the deployment-name file.
