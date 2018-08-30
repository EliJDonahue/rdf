# Query Definition to RDF/XML Sample Code

## How It Works

The sample code contains a server method that executes a Query Definition and uses the [dotNetRDF library](http://www.dotnetrdf.org/) to convert the output to RDF/XML. For demo purposes, the sample code can be executed via the included client action or directly via AML. 

As it's written, the method writes the RDF output to a file on the server, however it could easily be updated to pass the output to a service.

## Installation

#### Important!

**Always back up your code tree and database before applying an import package or code tree patch!**

### Pre-requisites

1. Aras Innovator installed (version 11.0 SP12)
2. Aras Package Import Utility
3. aras.labs.poc.RDF import package
4. RDF POC code tree overlay

### Install Steps

#### The Database

1. Backup your database and store the BAK file in a safe place.
2. Open up the Aras Package Import tool.
3. Enter your login credentials and click **Login**
    * _Note: You must login as root for the package import to succeed!_
4. Enter the package name in the TargetRelease field.
    * Optional: Enter a description in the Description field.
5. Enter the path to your local `..\RDF\Import\imports.mf` file in the Manifest File field.
6. Select **aras.labs.poc.RDF** in the Available for Import field.
7. Select Type = **Merge** and Mode = **Thorough Mode**.
8. Click **Import** in the top left corner.
9. Close the Aras Package Import tool.

#### The Code Tree

1. Backup your code tree and store the copy in a safe place.
2. Copy the Innovator folder from `..\RDF\CodeTree`.
3. Paste the Innovator folder into the root installation directory for your Aras installation. This is the location of the `InnovatorServerConfig.xml` file.

> Note: If you have made any customizations to the `Innovator\Server\method_config.xml` file, you will need to manually merge these changes with your customizations. You may have a customized method_config.xml file if you have certain Aras applications installed or you have modified it to use third party DLLs.

## Usage 

### Client Method

1. Log in to Innovator as admin.
2. Navigate to **Administraton > Configuration > Query Definitions** in the TOC.
3. Open the *RDF Part Query* Query Definition item.
4. From the Actions menu, select **Convert to RDF**.
5. Enter values for the Fetch and Offset fields. 
    * Fetch: The maximum number of results you would like returned.
    * Offset: The offset for the query execution. 
    * Output Type: Choose from RDF/XML, CSV, Turtle, and JSON-LD.
    * Compact: If JSON-LD is selected, you can choose to retrieve a compact result.
6. Click **Begin Export**.

A success dialog will appear when the export is complete. The exported RDF is logged in `C:\temp\RDF\` on the server.

### Nash

1. Navigate to http://localhost/InnovatorServer/Client/Scripts/nash.aspx
2. Login as admin
3. Set the action to **ApplyItem**
4. Enter the following AML:
```(XML)
<AML>
    <Item type="qry_QueryDefinition" action="QD2RDF">
        <qd_id>467143F3250D42CF9D2F6F880ABD3999</qd_id>
        <offset>0</offset>
        <fetch>1</fetch>
    </Item>
</AML>
```
5. Click **Submit**.

The resulting RDF/XML is displayed in the result pane and is logged in `C:\temp\RDF\` on the server. This same AML can be used in a generic SOAP call or an ApplyAML() call.

> Note: If the above AML is executed in Nash using the **ApplyAML** action, the server-side code will execute but the <Result> tag in the SOAP response will be empty.