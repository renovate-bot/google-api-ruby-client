# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PlacesV1
      
      class GoogleGeoTypeViewport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AddressDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AddressDescriptorArea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AddressDescriptorLandmark
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AuthorAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1Circle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1ContentBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1ContextualContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1ContextualContentJustification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1ContextualContentJustificationReviewJustification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1EvChargeOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1FuelOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1FuelOptionsFuelPrice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1Photo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PhotoMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1Place
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceAccessibilityOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceAddressComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceContainingPlace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceEvChargeAmenitySummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceGenerativeSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceGoogleMapsLinks
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceNeighborhoodSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHours
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceParkingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlacePaymentOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlacePlusCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceReviewSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceSubDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1Polyline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PriceRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1Review
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1RouteModifiers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1RoutingParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1RoutingSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1RoutingSummaryLeg
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchNearbyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchNearbyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchTextRequestEvOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchTextRequestLocationBias
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchTextRequestLocationRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchTextResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeLatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeLocalizedText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeMoney
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypePostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleGeoTypeViewport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high, as: 'high', class: Google::Apis::PlacesV1::GoogleTypeLatLng, decorator: Google::Apis::PlacesV1::GoogleTypeLatLng::Representation
      
          property :low, as: 'low', class: Google::Apis::PlacesV1::GoogleTypeLatLng, decorator: Google::Apis::PlacesV1::GoogleTypeLatLng::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1AddressDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :areas, as: 'areas', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AddressDescriptorArea, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AddressDescriptorArea::Representation
      
          collection :landmarks, as: 'landmarks', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AddressDescriptorLandmark, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AddressDescriptorLandmark::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1AddressDescriptorArea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :containment, as: 'containment'
          property :display_name, as: 'displayName', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :name, as: 'name'
          property :place_id, as: 'placeId'
        end
      end
      
      class GoogleMapsPlacesV1AddressDescriptorLandmark
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :name, as: 'name'
          property :place_id, as: 'placeId'
          property :spatial_relationship, as: 'spatialRelationship'
          property :straight_line_distance_meters, as: 'straightLineDistanceMeters'
          property :travel_distance_meters, as: 'travelDistanceMeters'
          collection :types, as: 'types'
        end
      end
      
      class GoogleMapsPlacesV1AuthorAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :photo_uri, as: 'photoUri'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_pure_service_area_businesses, as: 'includePureServiceAreaBusinesses'
          property :include_query_predictions, as: 'includeQueryPredictions'
          collection :included_primary_types, as: 'includedPrimaryTypes'
          collection :included_region_codes, as: 'includedRegionCodes'
          property :input, as: 'input'
          property :input_offset, as: 'inputOffset'
          property :language_code, as: 'languageCode'
          property :location_bias, as: 'locationBias', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias::Representation
      
          property :location_restriction, as: 'locationRestriction', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction::Representation
      
          property :origin, as: 'origin', class: Google::Apis::PlacesV1::GoogleTypeLatLng, decorator: Google::Apis::PlacesV1::GoogleTypeLatLng::Representation
      
          property :region_code, as: 'regionCode'
          property :session_token, as: 'sessionToken'
        end
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :circle, as: 'circle', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle::Representation
      
          property :rectangle, as: 'rectangle', class: Google::Apis::PlacesV1::GoogleGeoTypeViewport, decorator: Google::Apis::PlacesV1::GoogleGeoTypeViewport::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :circle, as: 'circle', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle::Representation
      
          property :rectangle, as: 'rectangle', class: Google::Apis::PlacesV1::GoogleGeoTypeViewport, decorator: Google::Apis::PlacesV1::GoogleGeoTypeViewport::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :suggestions, as: 'suggestions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :place_prediction, as: 'placePrediction', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction::Representation
      
          property :query_prediction, as: 'queryPrediction', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :matches, as: 'matches', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distance_meters, as: 'distanceMeters'
          property :place, as: 'place'
          property :place_id, as: 'placeId'
          property :structured_format, as: 'structuredFormat', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat::Representation
      
          property :text, as: 'text', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText::Representation
      
          collection :types, as: 'types'
        end
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :structured_format, as: 'structuredFormat', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat::Representation
      
          property :text, as: 'text', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_offset, as: 'endOffset'
          property :start_offset, as: 'startOffset'
        end
      end
      
      class GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :main_text, as: 'mainText', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText::Representation
      
          property :secondary_text, as: 'secondaryText', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1Circle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :center, as: 'center', class: Google::Apis::PlacesV1::GoogleTypeLatLng, decorator: Google::Apis::PlacesV1::GoogleTypeLatLng::Representation
      
          property :radius, as: 'radius'
        end
      end
      
      class GoogleMapsPlacesV1ContentBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          collection :referenced_places, as: 'referencedPlaces'
        end
      end
      
      class GoogleMapsPlacesV1ContextualContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :justifications, as: 'justifications', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustification, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustification::Representation
      
          collection :photos, as: 'photos', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Photo, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Photo::Representation
      
          collection :reviews, as: 'reviews', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Review, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Review::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1ContextualContentJustification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business_availability_attributes_justification, as: 'businessAvailabilityAttributesJustification', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification::Representation
      
          property :review_justification, as: 'reviewJustification', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationReviewJustification, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationReviewJustification::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivery, as: 'delivery'
          property :dine_in, as: 'dineIn'
          property :takeout, as: 'takeout'
        end
      end
      
      class GoogleMapsPlacesV1ContextualContentJustificationReviewJustification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :highlighted_text, as: 'highlightedText', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText::Representation
      
          property :review, as: 'review', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Review, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Review::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :highlighted_text_ranges, as: 'highlightedTextRanges', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          property :start_index, as: 'startIndex'
        end
      end
      
      class GoogleMapsPlacesV1EvChargeOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connector_aggregation, as: 'connectorAggregation', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation::Representation
      
          property :connector_count, as: 'connectorCount'
        end
      end
      
      class GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_last_update_time, as: 'availabilityLastUpdateTime'
          property :available_count, as: 'availableCount'
          property :count, as: 'count'
          property :max_charge_rate_kw, as: 'maxChargeRateKw'
          property :out_of_service_count, as: 'outOfServiceCount'
          property :type, as: 'type'
        end
      end
      
      class GoogleMapsPlacesV1FuelOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fuel_prices, as: 'fuelPrices', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptionsFuelPrice, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptionsFuelPrice::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1FuelOptionsFuelPrice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :price, as: 'price', class: Google::Apis::PlacesV1::GoogleTypeMoney, decorator: Google::Apis::PlacesV1::GoogleTypeMoney::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleMapsPlacesV1Photo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :author_attributions, as: 'authorAttributions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution::Representation
      
          property :flag_content_uri, as: 'flagContentUri'
          property :google_maps_uri, as: 'googleMapsUri'
          property :height_px, as: 'heightPx'
          property :name, as: 'name'
          property :width_px, as: 'widthPx'
        end
      end
      
      class GoogleMapsPlacesV1PhotoMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :photo_uri, as: 'photoUri'
        end
      end
      
      class GoogleMapsPlacesV1Place
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accessibility_options, as: 'accessibilityOptions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAccessibilityOptions, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAccessibilityOptions::Representation
      
          collection :address_components, as: 'addressComponents', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAddressComponent, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAddressComponent::Representation
      
          property :address_descriptor, as: 'addressDescriptor', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AddressDescriptor, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AddressDescriptor::Representation
      
          property :adr_format_address, as: 'adrFormatAddress'
          property :allows_dogs, as: 'allowsDogs'
          collection :attributions, as: 'attributions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAttribution, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAttribution::Representation
      
          property :business_status, as: 'businessStatus'
          collection :containing_places, as: 'containingPlaces', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceContainingPlace, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceContainingPlace::Representation
      
          property :curbside_pickup, as: 'curbsidePickup'
          property :current_opening_hours, as: 'currentOpeningHours', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours::Representation
      
          collection :current_secondary_opening_hours, as: 'currentSecondaryOpeningHours', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours::Representation
      
          property :delivery, as: 'delivery'
          property :dine_in, as: 'dineIn'
          property :display_name, as: 'displayName', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :editorial_summary, as: 'editorialSummary', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :ev_charge_amenity_summary, as: 'evChargeAmenitySummary', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceEvChargeAmenitySummary, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceEvChargeAmenitySummary::Representation
      
          property :ev_charge_options, as: 'evChargeOptions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptions, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptions::Representation
      
          property :formatted_address, as: 'formattedAddress'
          property :fuel_options, as: 'fuelOptions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptions, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptions::Representation
      
          property :generative_summary, as: 'generativeSummary', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceGenerativeSummary, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceGenerativeSummary::Representation
      
          property :good_for_children, as: 'goodForChildren'
          property :good_for_groups, as: 'goodForGroups'
          property :good_for_watching_sports, as: 'goodForWatchingSports'
          property :google_maps_links, as: 'googleMapsLinks', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceGoogleMapsLinks, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceGoogleMapsLinks::Representation
      
          property :google_maps_uri, as: 'googleMapsUri'
          property :icon_background_color, as: 'iconBackgroundColor'
          property :icon_mask_base_uri, as: 'iconMaskBaseUri'
          property :id, as: 'id'
          property :international_phone_number, as: 'internationalPhoneNumber'
          property :live_music, as: 'liveMusic'
          property :location, as: 'location', class: Google::Apis::PlacesV1::GoogleTypeLatLng, decorator: Google::Apis::PlacesV1::GoogleTypeLatLng::Representation
      
          property :menu_for_children, as: 'menuForChildren'
          property :name, as: 'name'
          property :national_phone_number, as: 'nationalPhoneNumber'
          property :neighborhood_summary, as: 'neighborhoodSummary', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceNeighborhoodSummary, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceNeighborhoodSummary::Representation
      
          property :outdoor_seating, as: 'outdoorSeating'
          property :parking_options, as: 'parkingOptions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceParkingOptions, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceParkingOptions::Representation
      
          property :payment_options, as: 'paymentOptions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePaymentOptions, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePaymentOptions::Representation
      
          collection :photos, as: 'photos', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Photo, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Photo::Representation
      
          property :plus_code, as: 'plusCode', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePlusCode, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePlusCode::Representation
      
          property :postal_address, as: 'postalAddress', class: Google::Apis::PlacesV1::GoogleTypePostalAddress, decorator: Google::Apis::PlacesV1::GoogleTypePostalAddress::Representation
      
          property :price_level, as: 'priceLevel'
          property :price_range, as: 'priceRange', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PriceRange, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PriceRange::Representation
      
          property :primary_type, as: 'primaryType'
          property :primary_type_display_name, as: 'primaryTypeDisplayName', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :pure_service_area_business, as: 'pureServiceAreaBusiness'
          property :rating, as: 'rating'
          property :regular_opening_hours, as: 'regularOpeningHours', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours::Representation
      
          collection :regular_secondary_opening_hours, as: 'regularSecondaryOpeningHours', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours::Representation
      
          property :reservable, as: 'reservable'
          property :restroom, as: 'restroom'
          property :review_summary, as: 'reviewSummary', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceReviewSummary, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceReviewSummary::Representation
      
          collection :reviews, as: 'reviews', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Review, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Review::Representation
      
          property :serves_beer, as: 'servesBeer'
          property :serves_breakfast, as: 'servesBreakfast'
          property :serves_brunch, as: 'servesBrunch'
          property :serves_cocktails, as: 'servesCocktails'
          property :serves_coffee, as: 'servesCoffee'
          property :serves_dessert, as: 'servesDessert'
          property :serves_dinner, as: 'servesDinner'
          property :serves_lunch, as: 'servesLunch'
          property :serves_vegetarian_food, as: 'servesVegetarianFood'
          property :serves_wine, as: 'servesWine'
          property :short_formatted_address, as: 'shortFormattedAddress'
          collection :sub_destinations, as: 'subDestinations', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceSubDestination, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceSubDestination::Representation
      
          property :takeout, as: 'takeout'
          property :time_zone, as: 'timeZone', class: Google::Apis::PlacesV1::GoogleTypeTimeZone, decorator: Google::Apis::PlacesV1::GoogleTypeTimeZone::Representation
      
          collection :types, as: 'types'
          property :user_rating_count, as: 'userRatingCount'
          property :utc_offset_minutes, as: 'utcOffsetMinutes'
          property :viewport, as: 'viewport', class: Google::Apis::PlacesV1::GoogleGeoTypeViewport, decorator: Google::Apis::PlacesV1::GoogleGeoTypeViewport::Representation
      
          property :website_uri, as: 'websiteUri'
        end
      end
      
      class GoogleMapsPlacesV1PlaceAccessibilityOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :wheelchair_accessible_entrance, as: 'wheelchairAccessibleEntrance'
          property :wheelchair_accessible_parking, as: 'wheelchairAccessibleParking'
          property :wheelchair_accessible_restroom, as: 'wheelchairAccessibleRestroom'
          property :wheelchair_accessible_seating, as: 'wheelchairAccessibleSeating'
        end
      end
      
      class GoogleMapsPlacesV1PlaceAddressComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :long_text, as: 'longText'
          property :short_text, as: 'shortText'
          collection :types, as: 'types'
        end
      end
      
      class GoogleMapsPlacesV1PlaceAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provider, as: 'provider'
          property :provider_uri, as: 'providerUri'
        end
      end
      
      class GoogleMapsPlacesV1PlaceContainingPlace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleMapsPlacesV1PlaceEvChargeAmenitySummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coffee, as: 'coffee', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock::Representation
      
          property :disclosure_text, as: 'disclosureText', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :flag_content_uri, as: 'flagContentUri'
          property :overview, as: 'overview', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock::Representation
      
          property :restaurant, as: 'restaurant', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock::Representation
      
          property :store, as: 'store', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1PlaceGenerativeSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disclosure_text, as: 'disclosureText', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :overview, as: 'overview', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :overview_flag_content_uri, as: 'overviewFlagContentUri'
        end
      end
      
      class GoogleMapsPlacesV1PlaceGoogleMapsLinks
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :directions_uri, as: 'directionsUri'
          property :photos_uri, as: 'photosUri'
          property :place_uri, as: 'placeUri'
          property :reviews_uri, as: 'reviewsUri'
          property :write_a_review_uri, as: 'writeAReviewUri'
        end
      end
      
      class GoogleMapsPlacesV1PlaceNeighborhoodSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock::Representation
      
          property :disclosure_text, as: 'disclosureText', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :flag_content_uri, as: 'flagContentUri'
          property :overview, as: 'overview', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContentBlock::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHours
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_close_time, as: 'nextCloseTime'
          property :next_open_time, as: 'nextOpenTime'
          property :open_now, as: 'openNow'
          collection :periods, as: 'periods', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriod, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriod::Representation
      
          property :secondary_hours_type, as: 'secondaryHoursType'
          collection :special_days, as: 'specialDays', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay::Representation
      
          collection :weekday_descriptions, as: 'weekdayDescriptions'
        end
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :close, as: 'close', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint::Representation
      
          property :open, as: 'open', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::PlacesV1::GoogleTypeDate, decorator: Google::Apis::PlacesV1::GoogleTypeDate::Representation
      
          property :day, as: 'day'
          property :hour, as: 'hour'
          property :minute, as: 'minute'
          property :truncated, as: 'truncated'
        end
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::PlacesV1::GoogleTypeDate, decorator: Google::Apis::PlacesV1::GoogleTypeDate::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1PlaceParkingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free_garage_parking, as: 'freeGarageParking'
          property :free_parking_lot, as: 'freeParkingLot'
          property :free_street_parking, as: 'freeStreetParking'
          property :paid_garage_parking, as: 'paidGarageParking'
          property :paid_parking_lot, as: 'paidParkingLot'
          property :paid_street_parking, as: 'paidStreetParking'
          property :valet_parking, as: 'valetParking'
        end
      end
      
      class GoogleMapsPlacesV1PlacePaymentOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accepts_cash_only, as: 'acceptsCashOnly'
          property :accepts_credit_cards, as: 'acceptsCreditCards'
          property :accepts_debit_cards, as: 'acceptsDebitCards'
          property :accepts_nfc, as: 'acceptsNfc'
        end
      end
      
      class GoogleMapsPlacesV1PlacePlusCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compound_code, as: 'compoundCode'
          property :global_code, as: 'globalCode'
        end
      end
      
      class GoogleMapsPlacesV1PlaceReviewSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disclosure_text, as: 'disclosureText', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :flag_content_uri, as: 'flagContentUri'
          property :reviews_uri, as: 'reviewsUri'
          property :text, as: 'text', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1PlaceSubDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleMapsPlacesV1Polyline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoded_polyline, as: 'encodedPolyline'
        end
      end
      
      class GoogleMapsPlacesV1PriceRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_price, as: 'endPrice', class: Google::Apis::PlacesV1::GoogleTypeMoney, decorator: Google::Apis::PlacesV1::GoogleTypeMoney::Representation
      
          property :start_price, as: 'startPrice', class: Google::Apis::PlacesV1::GoogleTypeMoney, decorator: Google::Apis::PlacesV1::GoogleTypeMoney::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1Review
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author_attribution, as: 'authorAttribution', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution::Representation
      
          property :flag_content_uri, as: 'flagContentUri'
          property :google_maps_uri, as: 'googleMapsUri'
          property :name, as: 'name'
          property :original_text, as: 'originalText', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :publish_time, as: 'publishTime'
          property :rating, as: 'rating'
          property :relative_publish_time_description, as: 'relativePublishTimeDescription'
          property :text, as: 'text', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1RouteModifiers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avoid_ferries, as: 'avoidFerries'
          property :avoid_highways, as: 'avoidHighways'
          property :avoid_indoor, as: 'avoidIndoor'
          property :avoid_tolls, as: 'avoidTolls'
        end
      end
      
      class GoogleMapsPlacesV1RoutingParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :origin, as: 'origin', class: Google::Apis::PlacesV1::GoogleTypeLatLng, decorator: Google::Apis::PlacesV1::GoogleTypeLatLng::Representation
      
          property :route_modifiers, as: 'routeModifiers', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1RouteModifiers, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1RouteModifiers::Representation
      
          property :routing_preference, as: 'routingPreference'
          property :travel_mode, as: 'travelMode'
        end
      end
      
      class GoogleMapsPlacesV1RoutingSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :directions_uri, as: 'directionsUri'
          collection :legs, as: 'legs', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingSummaryLeg, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingSummaryLeg::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1RoutingSummaryLeg
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distance_meters, as: 'distanceMeters'
          property :duration, as: 'duration'
        end
      end
      
      class GoogleMapsPlacesV1SearchNearbyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_primary_types, as: 'excludedPrimaryTypes'
          collection :excluded_types, as: 'excludedTypes'
          collection :included_primary_types, as: 'includedPrimaryTypes'
          collection :included_types, as: 'includedTypes'
          property :language_code, as: 'languageCode'
          property :location_restriction, as: 'locationRestriction', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction::Representation
      
          property :max_result_count, as: 'maxResultCount'
          property :rank_preference, as: 'rankPreference'
          property :region_code, as: 'regionCode'
          property :routing_parameters, as: 'routingParameters', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingParameters, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingParameters::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :circle, as: 'circle', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1SearchNearbyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :places, as: 'places', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Place, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Place::Representation
      
          collection :routing_summaries, as: 'routingSummaries', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingSummary, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingSummary::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1SearchTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ev_options, as: 'evOptions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestEvOptions, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestEvOptions::Representation
      
          property :include_pure_service_area_businesses, as: 'includePureServiceAreaBusinesses'
          property :included_type, as: 'includedType'
          property :language_code, as: 'languageCode'
          property :location_bias, as: 'locationBias', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationBias, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationBias::Representation
      
          property :location_restriction, as: 'locationRestriction', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationRestriction, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationRestriction::Representation
      
          property :max_result_count, as: 'maxResultCount'
          property :min_rating, as: 'minRating'
          property :open_now, as: 'openNow'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          collection :price_levels, as: 'priceLevels'
          property :rank_preference, as: 'rankPreference'
          property :region_code, as: 'regionCode'
          property :routing_parameters, as: 'routingParameters', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingParameters, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingParameters::Representation
      
          property :search_along_route_parameters, as: 'searchAlongRouteParameters', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters::Representation
      
          property :strict_type_filtering, as: 'strictTypeFiltering'
          property :text_query, as: 'textQuery'
        end
      end
      
      class GoogleMapsPlacesV1SearchTextRequestEvOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connector_types, as: 'connectorTypes'
          property :minimum_charging_rate_kw, as: 'minimumChargingRateKw'
        end
      end
      
      class GoogleMapsPlacesV1SearchTextRequestLocationBias
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :circle, as: 'circle', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle::Representation
      
          property :rectangle, as: 'rectangle', class: Google::Apis::PlacesV1::GoogleGeoTypeViewport, decorator: Google::Apis::PlacesV1::GoogleGeoTypeViewport::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1SearchTextRequestLocationRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rectangle, as: 'rectangle', class: Google::Apis::PlacesV1::GoogleGeoTypeViewport, decorator: Google::Apis::PlacesV1::GoogleGeoTypeViewport::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :polyline, as: 'polyline', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Polyline, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Polyline::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1SearchTextResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contextual_contents, as: 'contextualContents', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContent, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1ContextualContent::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :places, as: 'places', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Place, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Place::Representation
      
          collection :routing_summaries, as: 'routingSummaries', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingSummary, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1RoutingSummary::Representation
      
          property :search_uri, as: 'searchUri'
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeLatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class GoogleTypeLocalizedText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :text, as: 'text'
        end
      end
      
      class GoogleTypeMoney
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class GoogleTypePostalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_lines, as: 'addressLines'
          property :administrative_area, as: 'administrativeArea'
          property :language_code, as: 'languageCode'
          property :locality, as: 'locality'
          property :organization, as: 'organization'
          property :postal_code, as: 'postalCode'
          collection :recipients, as: 'recipients'
          property :region_code, as: 'regionCode'
          property :revision, as: 'revision'
          property :sorting_code, as: 'sortingCode'
          property :sublocality, as: 'sublocality'
        end
      end
      
      class GoogleTypeTimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
    end
  end
end
