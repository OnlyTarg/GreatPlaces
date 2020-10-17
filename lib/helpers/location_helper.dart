const GOOGLE_API_KEY = 'AIzaSyDKZzuvHTdGykmFFw_lyiVwlooXbHp4X_E';

class LocationHelper {
  static String genereteLocationPreviewImage(
      {double latitude, double longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=13&size=600x300&maptype=roadmap&markers=color:black%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }
}
