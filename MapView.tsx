import {requireNativeComponent} from 'react-native';

const RNTMap = requireNativeComponent('RNTMap');

type RegionChangeEvent = {
    nativeEvent: {
      latitude: number;
      longitude: number;
      latitudeDelta: number;
      longitudeDelta: number;
    };
  };

export default function MapView(props: {
    /**
     * The region to be displayed by the map.
     *
     * The region is defined by the center coordinates and the span of
     * coordinates to display.
     */
    region?: {
        /**
         * Coordinates for the center of the map.
         */
        latitude: number;
        longitude: number;

        /**
         * Distance between the minimum and the maximum latitude/longitude
         * to be displayed.
         */
        latitudeDelta: number;
        longitudeDelta: number;
    };
    /**
     * Whether the user may use pinch gestures to zoom in and out.
     */
    zoomEnabled?: boolean;

    onRegionChange: (event: RegionChangeEvent) => unknown;
  }) {
    return <RNTMap {...props} />;
  }