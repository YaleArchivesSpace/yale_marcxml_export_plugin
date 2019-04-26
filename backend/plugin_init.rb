require_relative 'lib/aspace_extension'
require_relative 'lib/custom_serializer_marc21'
require_relative 'lib/custom_tag'
require_relative 'lib/marc_custom_field_serializer'

MARCSerializer.add_decorator(MARCCustomFieldSerializer)
