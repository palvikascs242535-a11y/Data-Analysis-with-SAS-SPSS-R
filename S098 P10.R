library(dplyr)

df <- read.csv("global_gaming_esports_2010_2025.csv")

df_clean <- df %>%
  mutate(
    Gaming_Revenue_BillionUSD = ifelse(is.na(Gaming_Revenue_BillionUSD), 0, Gaming_Revenue_BillionUSD),
    Esports_Revenue_MillionUSD = ifelse(is.na(Esports_Revenue_MillionUSD), 0, Esports_Revenue_MillionUSD),
    Avg_Spending_USD = ifelse(is.na(Avg_Spending_USD), 0, Avg_Spending_USD),
    Active_Players_Million = ifelse(is.na(Active_Players_Million), 0, Active_Players_Million)
  )

head(df_clean)

df_calc <- df_clean %>%
  mutate(
    Revenue_Per_Player = Gaming_Revenue_BillionUSD * 1000 / Active_Players_Million,
    Total_Revenue_Million = Gaming_Revenue_BillionUSD * 1000 + Esports_Revenue_MillionUSD
  )

df_calc %>% select(Year, Gaming_Revenue_BillionUSD, Active_Players_Million, Revenue_Per_Player)

df_logic <- df_clean %>%
  mutate(
    Market_Level = ifelse(Gaming_Revenue_BillionUSD > 50, "High", "Medium"),
    Player_Scale = ifelse(Active_Players_Million > 200, "Large", "Normal")
  )

df_logic %>% select(Year, Gaming_Revenue_BillionUSD, Market_Level, Active_Players_Million, Player_Scale)

df_text <- df_clean %>%
  mutate(
    Summary = paste(Country, "has", Gaming_Revenue_BillionUSD, "B USD gaming revenue with", Active_Players_Million, "M active players.")
  )

head(df_text$Summary)

final_df <- df_clean %>%
  mutate(
    Revenue_Per_Player = Gaming_Revenue_BillionUSD * 1000 / Active_Players_Million,
    Influence_Score = round((Internet_Penetration_Percent + Streaming_Influence_Index + AR_VR_Adoption_Index) / 3, 2),
    Region_Report = paste(Region, "-", Top_Genre)
  )

head(final_df)