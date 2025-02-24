# Flutter Table Demo

## Description
The application demonstrates three types of table rendering in Flutter:
1. **Standard Table** – standard `DataTable` implementation.
2. **Two Dimensional Scrollables** – a table with both horizontal and vertical scrolling.
3. **DataTable2** – an enhanced version of `DataTable`, offering improved rendering and adaptability.

It also allows selecting the number of rows (from 10 to 3000) to test performance.

## Rendering and Performance Comparison
| Table Type                   | Performance        | Flexibility | Display Convenience |
|------------------------------|--------------------|-------------|----------------------|
| **Standard Table**           | Suitable for small data volumes | Limited      | Does not support scrolling |
| **Two Dimensional Scrollables** | Medium (may lag on large volumes) | High         | Supports both horizontal and vertical scrolling |
| **DataTable2**               | Optimized for large data sets | High         | Improved display and adaptability |

## Dependencies
- [Flutter DataTable](https://api.flutter.dev/flutter/material/DataTable-class.html)
- [DataTable2](https://pub.dev/packages/data_table_2)

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/flutter-table-demo.git
   ```
2. Navigate to the project folder:
   ```sh
   cd flutter-table-demo
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the application:
   ```sh
   flutter run
   ```

## Usage
- Select the number of rows in the `DropdownButton`.
- Choose the table type.
- Evaluate the rendering and performance of different tables.

## Conclusion
- `Standard Table` is best for small data volumes.
- `Two Dimensional Scrollables` is suitable for complex tables requiring horizontal scrolling.
- `DataTable2` is the best choice for handling large data sets.



