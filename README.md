## Myanmar Jewellery Converter

### Introduction
This library provides functionalities to manipulate and convert mass measurements in the Myanmar traditional measurement system. It includes classes for representing mass units and gold states, as well as methods for conversion between different units.

### MyanmarMass
- Represents a unit of mass in the Myanmar traditional measurement system.
- Provides methods for conversion between Kyat, Pae, and Yawe units, as well as to standard metric units like grams, kilograms, ounces, and pounds.
- Supports arithmetic operations such as multiplication, division, addition, and subtraction.

### GoldStateInfo
- Represents information about different states of gold, including ID, name, numerator, and denominator.
- Allows conversion from a map for easy data initialization.
- Provides a string representation for debugging and logging.

### GoldStates
- An abstract class containing static constants for various gold states, such as A0, AC, B0, etc.
- Provides a list of all gold states for easy access and iteration.

### MyanmarGoldMass
- Represents the mass of gold in the Myanmar traditional measurement system.
- Combines a GoldStateInfo object with a MyanmarMass object to represent the state and mass of gold together.
- Provides methods to convert the gold state of the mass to different states.

## Functionalities
- Conversion between different units of mass in the Myanmar traditional system.
- Conversion between Myanmar mass units and standard metric units.
- Conversion between different states of gold.
- Arithmetic operations on mass objects.
- Initialization of gold state information from a map.
- Easy access to predefined gold state constants.

## Example Usage
```dart
// Create a MyanmarMass object
final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);

// Convert mass to grams
final grams = mass.asGrams;

// Create a MyanmarGoldMass object
final goldMass = MyanmarGoldMass(state: GoldStates.A0, mass: mass);

// Convert gold state to 16 Pae Yay gold state
final new16PaeYayGoldMass = goldMass.as16PaeYayGoldState();

// Convert gold state from 16 Pae Yay to any gold State  gold state (e.g: 8 Pae Yay)
final new16PaeYayGoldMass = goldMass.covertGoldState(GoldStates.A0);
```
## Caution
While this library aims to accurately represent mass measurements, it's important to note that the correctness of the calculations may vary based on factors such as implementation details, rounding errors, and variations in measurement standards.

Therefore, it's recommended that users thoroughly test the library in their specific use cases before relying on it for commercial production purposes. Community testing and contributions over time can help improve the accuracy and reliability of the library. Enjoy coding! 🍔🍕🚀

