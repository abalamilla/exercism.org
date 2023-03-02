// Package weather allows you to forecast city weather condition.
package weather

// CurrentCondition represents the actual weather condition.
var CurrentCondition string
// CurrentLocation represents the actual city.
var CurrentLocation string

// Forecast returns a string with the the current city and location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
