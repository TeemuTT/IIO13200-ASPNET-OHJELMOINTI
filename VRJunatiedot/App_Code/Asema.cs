namespace VRJunatiedot
{
    public class Asema
    {
        // http://rata.digitraffic.fi/api/v1/metadata/stations
        public string stationName { get; set; }
        public string stationShortCode { get; set; }

        public override string ToString()
        {
            return stationName;
        }
    }
}