library("googledrive")
library("readxl")
library("tidyverse")

googledrive::drive_auth_configure()
drive_download("Weight", overwrite = TRUE)
df = read_excel("Weight.xlsx")

df %>%
  ggplot(aes(x = Date, y = `Weight (kg)`)) +
  geom_point() + 
  geom_smooth() + 
  geom_hline(yintercept = 65, colour = "red", lty = 2) +
  theme_minimal() +
  ylim(60, 80) 



