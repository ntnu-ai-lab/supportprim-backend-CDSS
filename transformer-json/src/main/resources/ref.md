
https://docs.opinum.com/articles/master_data/json/template_transformation.html

https://github.com/amida-tech/jsonapter

https://github.com/SelectTransform/st.js


https://stackoverflow.com/questions/1618038/xslt-equivalent-for-json

XSLT equivalents for JSON - a list of candidates (tools and specs)

Tools
XSLT
You can use XSLT for JSON with the aim of fn:json-to-xml.

This section describes facilities allowing JSON data to be processed using XSLT.

jq
jq is like sed for JSON data - you can use it to slice and filter and map and transform structured data with the same ease that sed, awk, grep and friends let you play with text. There are install packages for different OS.

jj
JJ is a command line utility that provides a fast and simple way to retrieve or update values from JSON documents. It's powered by GJSON and SJSON under the hood.

fx
Command-line JSON processing tool

Don't need to learn new syntax
Plain JavaScript
Formatting and highlighting
Standalone binary
jl
jl ("JSON lambda") is a tiny functional language for querying and manipulating JSON.

JOLT
JSON to JSON transformation library written in Java where the "specification" for the transform is itself a JSON document.

gron
Make JSON greppable! gron transforms JSON into discrete assignments to make it easier to grep for what you want and see the absolute 'path' to it. It eases the exploration of APIs that return large blobs of JSON but have terrible documentation.

json
json is a fast CLI tool for working with JSON. It is a single-file node.js script with no external deps (other than node.js itself).

json-e
JSON-e is a data-structure parameterization system for embedding context in JSON objects. The central idea is to treat a data structure as a "template" and transform it, using another data structure as context, to produce an output data structure.

JSLT
JSLT is a complete query and transformation language for JSON. The language design is inspired by jq, XPath, and XQuery.

JSONata
JSONata is a lightweight query and transformation language for JSON data. Inspired by the 'location path' semantics of XPath 3.1, it allows sophisticated queries to be expressed in a compact and intuitive notation.

json-transforms Last Commit Dec 1, 2017
Provides a recursive, pattern-matching approach to transforming JSON data. Transformations are defined as a set of rules which match the structure of a JSON object. When a match occurs, the rule emits the transformed data, optionally recursing to transform child objects.

jsawk Last commit Mar 4, 2015
Jsawk is like awk, but for JSON. You work with an array of JSON objects read from stdin, filter them using JavaScript to produce a results array that is printed to stdout.

yate Last Commit Mar 13, 2017
Tests can be used as docu https://github.com/pasaran/yate/tree/master/tests

jsonpath-object-transform Last Commit Jan 18, 2017
Pulls data from an object literal using JSONPath and generate a new objects based on a template.

Stapling Last Commit Sep 16, 2013
Stapling is a JavaScript library that enables XSLT formatting for JSON objects. Instead of using a JavaScript templating engine and text/html templates, Stapling gives you the opportunity to use XSLT templates - loaded asynchronously with Ajax and then cached client side - to parse your JSON datasources.

Specs:
JsonPointer
JSON Pointer defines a string syntax for identifying a specific value within a JavaScript Object Notation (JSON) document.

JsonPath
JSONPath expressions always refer to a JSON structure in the same way as XPath expression are used in combination with an XML document

JSPath
JSPath for JSON is like XPath for XML."

JSONiq
The main source of inspiration behind JSONiq is XQuery, which has been proven so far a successful and productive query language for semi-structured data