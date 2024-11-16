![Jupyter](https://img.shields.io/badge/Jupyter-F37626.svg?&style=for-the-badge&logo=Jupyter&logoColor=white)
![Markdown](https://img.shields.io/badge/Markdown-000000?style=for-the-badge&logo=markdown&logoColor=white)
![NumPy](https://img.shields.io/badge/numpy-%23013243.svg?style=for-the-badge&logo=numpy&logoColor=white)
![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)
![scikit-learn](https://img.shields.io/badge/scikit--learn-%23F7931E.svg?style=for-the-badge&logo=scikit-learn&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)

# Estimating Spectroscopic Parameters from Photometric Observations from the SDSS Database
This project employs Machine Learning to approximate spectroscopic parameters of stars using photometric observations from the **[Sloan Digital Sky Survey (SDSS)](https://www.sdss.org/)** Data Release 18.

Spectroscopic parameters encode valuable information about the celestial body, such as age, mass, and chemical composition. Still, they are difficult to obtain due to light degradation over long distances.

For this project, we use photometric parameters - which are easier to obtain but contain less information - to approximate some popular spectroscopic parameters.

## Query
This project uses the SDSS DR18 database to query the training data. The query uses the **PhotoObj** View and the **SppParams** tables from the database to extract both photometric and spectroscopic data from the data release.

The SQL query can be found at [`query.sql`](query.sql)

The raw training data includes the following attributes
| Name | Data Type | Description | Table/View |
| :--: | :--: | :--: | :--: |
| `u` | real | magnitude | PhotoObj |
| `g` | real | magnitude | PhotoObj |
| `r` | real | magnitude | PhotoObj |
| `i` | real | magnitude | PhotoObj |
| `z` | real | magnitude | PhotoObj |
| `type` | smallint | Type classification of the object (star, galaxy, cosmic ray, etc.) | PhotoObj |
| `mode` | tinyint | 1: primary, 2: secondary, 3: other | PhotoObj |
| `flag` | varchar | Flag with combination of four letters among BCdDEgGhHlnNSV, n=normal | SppParams |
| `fehadop` | real | Adopted \[Fe/H\], bi-weigth average of estimators with indicator variable of 2 | SppParams |
| `teffadop` | real | Adopted Teff, bi-weigth average of estimators with indicator variable of 1 | SppParams |
| `loggadop` | real | Adopted log g, bi-weigth average of estimators with indicator variable of 2 | SppParams |

## Team Members
| Name | Section |
| :--: | :--:|
| Rik Ghosh | 50565 |
| Rodrigo Brandao | 50565 |
| Sidharth Srinivas | 50560 |
| Pranav Srinivasan | 50555 |
