# yale_marcxml_export_plugin
An Archives Space plugin to export resource and item level records to marcxml.  Forked from NYU: (https://github.com/NYULibraries/nyu_marcxml_export_plugin)

## Scope
This plugin modifies and extends the default MARCXML mapping very minimally.  Most transformations will be handled outside of ArchivesSpace.

## Behavior
The way to override the default functionality is to find the method/model where the functionality has been coded and copy that to the plugin and change it to implement the new requirements.

## Plugin Organization
* backend:
    * plugin_init.rb: file that contains calls to the files being used in the plugin
    * model:
        * nyu_custom_model_marc21.rb: This file overrides and extends the default behavior of the marc21 model. This contains changes to the default marc mappings.
    * lib:
       * aspace_extensions.rb: extension of the marc export helper. It adds top containers to the marcxml. It uses the solr schema to grab the top containers which speeds up the function considerably. This interacts with the json models of all the data models in ASpace.
       * marc_custom_field_serialize.rb: the core of the extra plugin marc mapping functionality lives here. It references a custom class that is defined in the file below.
       * nyu_custom_tag.rb: custom class created for this plugin. It creates data structures for the marc fields and subfields.
       * nyu_custom_serializer_marc21.rb: had to tweak the default functionality of this code since the plugin was adding extra controlfields. The default functionality had hardcoded the controlfields
