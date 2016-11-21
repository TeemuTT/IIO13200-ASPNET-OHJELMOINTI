namespace VRJunatiedot
{
    public class Junatiedot
    {
        // http://rata.digitraffic.fi/api/v1/live-trains?station= + Asema.stationShortCode
        public int trainNumber { get; set; }
        public bool cancelled { get; set; }
        public string departureDate { get; set; }
    }
}