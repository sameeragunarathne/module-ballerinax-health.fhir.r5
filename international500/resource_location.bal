// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.

import ballerinax/health.fhir.r5;

public const string PROFILE_BASE_LOCATION = "http://hl7.org/fhir/StructureDefinition/Location";
public const RESOURCE_NAME_LOCATION = "Location";

# FHIR Location resource record.
#
# + resourceType - The type of the resource describes
# + operationalStatus - The operational status covers operation values most relevant to beds (but can also apply to rooms/units/chairs/etc. such as an isolation unit/dialysis chair). This typically covers concepts such as contamination, housekeeping, and other activities like maintenance.
# + partOf - Another Location of which this Location is physically a part of.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + virtualService - Connection details of a virtual service (e.g. shared conference call facility with dedicated number/details).
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - Description of the Location, which helps in finding or referencing the place.
# + hoursOfOperation - What days/times during a week is this location usually open, and any exceptions where the location is not available.
# + language - The base language in which the resource is written.
# + 'type - Indicates the type of function performed at the location.
# + characteristic - Collection of characteristics (attributes).
# + mode - Indicates whether a resource instance represents a specific location or a class of locations.
# + endpoint - Technical endpoints providing access to services operated for the location.
# + contact - The contact details of communication devices available at the location. This can include addresses, phone numbers, fax numbers, mobile numbers, email addresses and web sites.
# + alias - A list of alternate names that the location is known as, or was known as, in the past.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + identifier - Unique code or number identifying the location to its users.
# + address - Physical location.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + managingOrganization - The organization responsible for the provisioning and upkeep of the location.
# + form - Physical form of the location, e.g. building, room, vehicle, road, virtual.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + name - Name of the location as used by humans. Does not need to be unique.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + position - The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system used in KML).
# + status - The status property covers the general availability of the resource, not the current value which may be covered by the operationStatus, or by a schedule/slots if they are configured for the location.
@r5:ResourceDefinition {
    resourceType: "Location",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Location",
    elements: {
        "operationalStatus" : {
            name: "operationalStatus",
            dataType: r5:Coding,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.operationalStatus",
            valueSet: "http://terminology.hl7.org/ValueSet/v2-0116"
        },
        "partOf" : {
            name: "partOf",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.partOf"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Location.extension"
        },
        "virtualService" : {
            name: "virtualService",
            dataType: r5:VirtualServiceDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Location.virtualService"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Location.modifierExtension"
        },
        "description" : {
            name: "description",
            dataType: r5:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.description"
        },
        "hoursOfOperation" : {
            name: "hoursOfOperation",
            dataType: r5:Availability,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Location.hoursOfOperation"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "type" : {
            name: "type",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Location.type",
            valueSet: "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"
        },
        "characteristic" : {
            name: "characteristic",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Location.characteristic",
            valueSet: "http://hl7.org/fhir/ValueSet/location-characteristic"
        },
        "mode" : {
            name: "mode",
            dataType: LocationMode,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.mode",
            valueSet: "http://hl7.org/fhir/ValueSet/location-mode|5.0.0"
        },
        "endpoint" : {
            name: "endpoint",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Location.endpoint"
        },
        "contact" : {
            name: "contact",
            dataType: r5:ExtendedContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Location.contact"
        },
        "alias" : {
            name: "alias",
            dataType: string,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Location.alias"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.text"
        },
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Location.identifier"
        },
        "address" : {
            name: "address",
            dataType: r5:Address,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.address"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Location.contained"
        },
        "managingOrganization" : {
            name: "managingOrganization",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.managingOrganization"
        },
        "form" : {
            name: "form",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.form",
            valueSet: "http://hl7.org/fhir/ValueSet/location-form"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.meta"
        },
        "name" : {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.name"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.implicitRules"
        },
        "position" : {
            name: "position",
            dataType: LocationPosition,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.position"
        },
        "status" : {
            name: "status",
            dataType: LocationStatus,
            min: 0,
            max: 1,
            isArray: false,
            path: "Location.status",
            valueSet: "http://hl7.org/fhir/ValueSet/location-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type Location record {|
    *r5:DomainResource;

    RESOURCE_NAME_LOCATION resourceType = RESOURCE_NAME_LOCATION;

    r5:Coding operationalStatus?;
    r5:Reference partOf?;
    r5:Extension[] extension?;
    r5:VirtualServiceDetail[] virtualService?;
    r5:Extension[] modifierExtension?;
    r5:markdown description?;
    r5:Availability[] hoursOfOperation?;
    r5:code language?;
    r5:CodeableConcept[] 'type?;
    r5:CodeableConcept[] characteristic?;
    LocationMode mode?;
    r5:Reference[] endpoint?;
    r5:ExtendedContactDetail[] contact?;
    string[] alias?;
    string id?;
    r5:Narrative text?;
    r5:Identifier[] identifier?;
    r5:Address address?;
    r5:Resource[] contained?;
    r5:Reference managingOrganization?;
    r5:CodeableConcept form?;
    r5:Meta meta?;
    string name?;
    r5:uri implicitRules?;
    LocationPosition position?;
    LocationStatus status?;
    r5:Element ...;
|};

# LocationMode enum
public enum LocationMode {
   CODE_MODE_INSTANCE = "instance",
   CODE_MODE_KIND = "kind"
}

# FHIR LocationPosition datatype record.
#
# + altitude - Altitude. The value domain and the interpretation are the same as for the text of the altitude element in KML (see notes on Location main page).
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + latitude - Latitude. The value domain and the interpretation are the same as for the text of the latitude element in KML (see notes on Location main page).
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + longitude - Longitude. The value domain and the interpretation are the same as for the text of the longitude element in KML (see notes on Location main page).
@r5:DataTypeDefinition {
    name: "LocationPosition",
    baseType: (),
    elements: {
        "altitude": {
            name: "altitude",
            dataType: decimal,
            min: 0,
            max: 1,
            isArray: false,
            description: "Altitude. The value domain and the interpretation are the same as for the text of the altitude element in KML (see notes on Location main page).",
            path: "Location.position.altitude"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Location.position.extension"
        },
        "latitude": {
            name: "latitude",
            dataType: decimal,
            min: 1,
            max: 1,
            isArray: false,
            description: "Latitude. The value domain and the interpretation are the same as for the text of the latitude element in KML (see notes on Location main page).",
            path: "Location.position.latitude"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Location.position.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Location.position.id"
        },
        "longitude": {
            name: "longitude",
            dataType: decimal,
            min: 1,
            max: 1,
            isArray: false,
            description: "Longitude. The value domain and the interpretation are the same as for the text of the longitude element in KML (see notes on Location main page).",
            path: "Location.position.longitude"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type LocationPosition record {|
    *r5:BackboneElement;

    decimal altitude?;
    r5:Extension[] extension?;
    decimal latitude;
    r5:Extension[] modifierExtension?;
    string id?;
    decimal longitude;
|};

# LocationStatus enum
public enum LocationStatus {
   CODE_STATUS_INACTIVE = "inactive",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_SUSPENDED = "suspended"
}

