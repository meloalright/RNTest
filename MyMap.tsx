import { useCallback } from 'react';
import MapView from './MapView.tsx';

export default function MyApp() {
    const region = {
        latitude: 37.48,
        longitude: -122.16,
        latitudeDelta: 0.1,
        longitudeDelta: 0.1,
    };

    const onRegionChange = useCallback(event => {
        const {region} = event.nativeEvent;
        // Do something with `region.latitude`, etc.
    }, []);
    return <MapView 
        region={region} 
        style={{ flex: 1 }}
        zoomEnabled={false} 
     />;
}