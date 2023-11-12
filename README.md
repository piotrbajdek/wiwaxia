# Wiwaxia: Non-Random Trend Detection

The tool ![Wiwaxia](https://github.com/piotrbajdek/wiwaxia) tests whether the relationship between two sequences of numbers can be explained by a random walk. It is effective in identifying trends in a dataset that is largely chaotic, with results above 1.0 indicating the non-randomness of the trend. It operates on periods of 4, 6, and 8. The data file in .csv format should contain two columns of numbers and a minimum of 9 rows.

The program is available under the ![BSD 3-Clause No Military License](https://github.com/piotrbajdek/wiwaxia/blob/main/LICENSE.md).

# Example

![example-1](https://github.com/piotrbajdek/wiwaxia/blob/main/docs/images/example-1.png?raw=true)

The example above analyses the scores of two sports teams. While the result of 1.08 for team A indicates a non-random uptrend, the 0.47 for team B can be explained by a random walk.
