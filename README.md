# RDF Proof of Concept for Aras Innovator

# 1 - Installation

#### Important!
**Always back up your code tree and database before applying an import package or code tree patch!**

## Pre-requisites

1. Aras Innovator installed (version 11.0 SP12 preferred)
2. Aras Package Import tool
3. RDF import package
4. RDF code tree overlay

## Install Steps

### Code Tree
1. Backup your code tree and store the backup in a safe place.
2. Copy the Innovator folder from the project's CodeTree subdirectory.
3. Paste the Innovator folder into the root directory of your Aras installation.
    * Tip: This is the same directory that contains the InnovatorServerConfig.xml file.

### Database
1. Backup your database and store the BAK file in a safe place.
2. Open up the Aras Package Import tool.
3. Enter your login credentials and click **Login**
    * _Note: You must login as root for the package import to succeed!_
4. Enter the package name in the TargetRelease field.
    * Optional: Enter a description in the Description field.
5. Enter the path to your local `..\RDF\Import\imports.mf` file in the Manifest File field.
6. Select **aras.labs.poc.rdf** in the Available for Import field.
7. Select Type = **Merge** and Mode = **Thorough Mode**.
8. Click **Import** in the top left corner.
9. Close the Aras Package Import tool.

### Web Service
*To Do*

You are now ready to login to Aras and start converting Aras data to RDF.


# 2 - Ontology

[This ontology](./root-ontology.owl) is solely intended as a proof of concept and is not for production use. Work in progress.

Ontology can be referenced via [http://purl.org/aras-poc/base#](http://purl.org/aras-poc/base#).


# 3 - Exporting RDF 

## About the QD2RDF Method
Formerly known as QD2RDFXML, the QD2RDF method executes a query definition and then uses [the dotnetRDF library](https://www.dotnetrdf.org/) to process the results as the specified output type. We can technically support any [output format](https://github.com/dotnetrdf/dotnetrdf/wiki/UserGuide-Writing-RDF) offered by the dotnetRDF library, but currently we have implemented 4 options:

1. RDF/XML
2. CSV Triples
3. Turtle
4. JSON-LD

The converted query result can be returned from the method and/or written to a file on the server for any of these output types.

## QD2RDF Method Parameters

Parameter   | Description | Default | Options
------------|-------------|---------|--------
qd_id       | The id of the Query Definition to be executed. | RDF Part Query id | 
output      | Target format of the conversion | RDF (RDF/XML) | - RDF (RDF/XML)<br/> - CSV (CSV Triples)<br/> - Turtle<br/>- JSON-LD
file_name   | Name of the output file (not including extension) | Timestamp: MMdd-HHmmss | any string
file_path   | Path on the server where the output file is saved, ending with a backslash | C:\temp\RDF\ | any path on the server
compact     | Determines whether to compact JSON-LD output. No effect on other output types | null | - omit this parameter to return expanded JSON-LD<br/>- "true" or "1" to return compact JSON-LD
offset      | Offset value for Query Definition results | 0 | any integer >= 0
fetch       | Number of results returned from Query Definition | 1 | any integer >= 0
write_file  | [Future] Indicate whether to write to file on server. Otherwise, only return result | N/A | N/A

## Examples & Sample Output

### RDF/XML

RDF/XML is the default output type for the QD2RDF method. 

**Sample AML**

```(xml)
<AML>
    <Item type="qry_QueryDefinition" action="QD2RDF">
        <qd_id>22361BF39E244901B861ACAF7689A29F</qd_id>
        <output>RDF</output>
    </Item>
</AML>
```

[Sample AML File](./Samples/RDFXML/RDF-AML.xml]) | [Sample RDF/XML](./Samples/RDFXML/RDF-XML.rdf])

### CSV Triples

The CSV output type returns RDF triples in CSV format. This conversion takes a little longer to complete, and the resulting files are larger than the other output types. 

**Sample AML**

```(xml)
<AML>
    <Item type="qry_QueryDefinition" action="QD2RDF">
        <qd_id>22361BF39E244901B861ACAF7689A29F</qd_id>
        <output>CSV</output>
    </Item>
</AML>
```

[Sample AML File](./Samples/CSV/CSV-AML.xml) | [Sample CSV Triples](./Samples/CSV/CSV-Triples.csv)

### Turtle

Turtle is one of the requested output types. 

**Sample AML**

```(xml)
<AML>
    <Item type="qry_QueryDefinition" action="QD2RDF">
        <qd_id>22361BF39E244901B861ACAF7689A29F</qd_id>
        <output>Turtle</output>
    </Item>
</AML>
```

[Sample AML File](./Samples/Turtle/Turtle-AML.xml) | [Sample Turtle](./Samples/Turtle/Turtle.ttl)

> Note: The dotnetRDF library provides different options for compressing Turtle output. The QD2RDF method doesn't implement any of the options at this time, but they may be added in the future upon request.

### JSON-LD

Returns an expanded JSON-LD result. For a compact result, use the compact_json parameter as shown in the following section.

**Sample AML**

```(xml)
<AML>
    <Item type="qry_QueryDefinition" action="QD2RDF">
        <qd_id>22361BF39E244901B861ACAF7689A29F</qd_id>
        <output>JSON-LD</output>
    </Item>
</AML>
```

[Sample AML File](./Samples/JSON-LD/JSON-AML.xml) | [Sample JSON-LD](./Samples/JSON-LD/JSON-LD.json)

### JSON-LD (Compact)

When the compact_json parameter is passed to QD2RDF, we use the built-in [dotnetRDF compaction algorithm](https://github.com/dotnetrdf/dotnetrdf/wiki/UserGuide-JsonLd-Compaction) to produce JSON-LD with shortened URIs and compressed values.

**Sample AML**

```(xml)
<AML>
    <Item type="qry_QueryDefinition" action="QD2RDF">
        <qd_id>22361BF39E244901B861ACAF7689A29F</qd_id>
        <output>JSON-LD</output>
        <compact_json>1</compact_json>
    </Item>
</AML>
```

[Sample AML File](./Samples/JSON-LD/JSON-AML-compact.xml) | [Sample JSON-LD](./Samples/JSON-LD/JSON-LD-compact.json)

> Note: The context for JSON compacting is currently hardcoded. A future enhancement will make the context configurable.

## Options for Calling the QD2RDF Method

### Using an External Web Service
For this approach, we use an external web service and the QD2RDF server method to execute a query definition and convert the output to the preferred format. [See more info here.](./Samples/RDFXML/RDFXML.md) This works for any version of Aras Innovator that supports Query Builder (11 SP10+).

### Using the Aras RESTful API
This approach requires Aras Innovator 11 SP12 or newer. Taking advantage of the new RESTful API, we can execute the QD2RDF via the built-in OData interface - no external web service required. However, the Aras RESTful API only returns JSON responses. 

If we want to use this approach, we'll need to use a JSON-based output format like JSON-LD. [See more info about this approach here.](./Samples/RDFXML/odata-interface-approach.md)

