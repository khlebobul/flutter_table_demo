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

## Important info
>[!NOTE]
>In the process, I noticed that there is also a difference in the startup method between debug and release modes. Therefore, for the sake of purity, the demo is available at the link

- How to deploy flutter web app to [Vercel](https://vercel.com/home) -> [Guide link](https://medium.com/@ekrajghimire/deploy-flutter-web-app-to-vercel-591aa3cc073a)

    Build command
    ```
    flutter/bin/flutter build web --release
    ```
    
    Output directory
    ```
    build/web
    ```

    Install command
    ```
    if cd flutter; then git pull && cd .. ; else git clone https://github.com/flutter/flutter.git; fi && ls && flutter/bin/flutter doctor && flutter/bin/flutter clean && flutter/bin/flutter config --enable-web
    ```

## Usage
- Select the number of rows in the `DropdownButton`.
- Choose the table type.
- Evaluate the rendering and performance of different tables.

## Conclusion
- `Standard Table` is best for small data volumes.
- `Two Dimensional Scrollables` is suitable for complex tables requiring horizontal scrolling.
- `DataTable2` is the best choice for handling large data sets.



