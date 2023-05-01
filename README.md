# GunViolence_US

## Goal

The aim of this study is to visualize the gun violence data collected for the year 2021 and highlight what I think are the most important Factors contributing to gun violence.

## Data

The Data was collected through web-parsing wikipedia tables and other suitable table found on reputable webistes. The data collected is mostly from the year 2020 and 2019. The data is classified as high gun violence and low gun violence based the % gun death rate.

## Analysis

The data collected from websites are cleaned and feed into PostgreSQL database. Different tables are then merged. The merged table is used for analysis, which is unsupervised machine learning model to create clusters of high-rate violence and low rated violence.
Data for US territories were collected in the year 2015 or before and was considered unsatisfactory for our study.

## Observations

**Gun Related Death - % calculated per 100,000 population**

**Comparison Between States with Highest and Lowest Gun Violence Deaths:**

1. The state with the lowest death is Rhode Island wuth 3.28% death and Gun Law Strictness grade of 90.
2. It is observed that Rhode Island has a lower Poverty Rate, population diversity, lower number of Families, higher population density and higher median family income compared to Mississippi, the state with the higher % of gun related deaths (22.81%).
3. These observations are also reflected when comparing data between states classified as high gun Violence and Low Gun-Violence

![Gun1](https://user-images.githubusercontent.com/100053788/235381271-c84fd330-ffd2-481e-9e9a-f7512b0c356a.png)


![image](https://user-images.githubusercontent.com/100053788/235382074-6736990d-66cd-49d1-a004-6f96dc6fd6f7.png)


![Gun3](https://user-images.githubusercontent.com/100053788/235381859-3a0ea983-1bf6-470b-b94e-5cc32e6b437b.png)


![Gun4](https://user-images.githubusercontent.com/100053788/235381875-3027437c-f3c0-4237-b0fa-a13b70a71dec.png)
      

**State of Alaska**

1. Alaska has high median income, and high government expenditure on social welfare, all factors which point towards low gun related violence. However that is not the case as it is one of the highest with 20.74%.


## Conclusion

1. The trend observed is that states with higher density have higher income and lower poverty rates, with lower gun related deaths.
2. Religious factors and happiness index can also be considered into the study to improve the clusters.

![image](https://user-images.githubusercontent.com/100053788/235393621-3762bc69-6e5a-4d00-8d94-55d85ab0b55e.png)

3. The elbow curve for K-means cluster gives us a value of 4.
4. On creating 4 clusters we observe that the algorithm grouped Alaska and Hawaii into one cluster, preferably for being outliers to the data collected and analyzed. Area, denisty, population and income statistics do not follow the trend observed in the rest of the states.
