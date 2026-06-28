shinyUI(fluidPage(
  headerPanel("Analisis Data Eksploratif"),
  mainPanel(
    tabsetPanel(type = "tabs",
                tabPanel("Informasi",
                         h1("Definisi Analisis Data Eksploratif", style="color: #1D428B; text-align:center"),
                         p('Analisis data eksploratif (Exploratory Data Analysis – EDA) merupakan metode eksplorasi data dengan menggunakan teknik aritmatika sederhana dan teknik grafis dalam meringkas data pengamatan. Kontribusi utama dari pendekatan analisis data secara eksploratif terletak pada penyajian seluruh ringkasan statistik secara visual.'),
                         br(),
                         h2("Penyajian Data Secara Grafis"),
                         p('Terdapat beberapa teknik untuk meringkas dan mempelajari karakteristik dan distribusi data di mana data dapat digambarkan secara grafis. Diantaranya yang akan dibahas disini yakni Boxplot, Histogram, QQ-Plot, Density Plot, dan Scatter PLot.'),
                         h3("1. Boxplot"),
                         p('Boxplot merupakan ringkasan distribusi sampel yang disajikan secara grafis, dengan boxplot kita dapat melihat nilai minimum, Q1 (kuartil terendah), Q2 (median), Q3 (kuartil tertinggi), nilai maksimum, ada tidaknya nilai outlier dan nilai ekstrim dari data pengamatan.'),
                         h3("2. Histogram"),
                         p('Histogram merupakan tampilan bentuk grafis untuk menunjukkan distribusi data secara visual atau seberapa sering suatu nilai yang berbeda itu terjadi dalam suatu kumpulan data.'),
                         h3("3. QQ-Plot"),
                         p('QQ-Plot data digunakan untuk mengecek apakah data yang kita miliki berdistribusi normal atau tidak.'),
                         h3("4. Density Plot"),
                         p('Density plot memecahkan masalah yang dimiliki histogram dalam melihat grafik dengan menyajikan data bukan dari jumlah kejadian atau observasi, namun data disajikan berdasarkan frekuensi relatif data (density) yang digambarkan dalam bentuk smooth curve.'),
                         h3("5. Scatter Plot"),
                         p('Scatter Plot sering juga disebut dengan grafik sebar, adalah penggunaan titik-titik untuk mewakili nilai untuk dua variabel numerik yang berbeda. Posisi setiap titik pada sumbu horizontal dan vertikal menunjukkan nilai untuk titik data individual. Scatter plot digunakan untuk mengamati hubungan antar variabel.'),
                         br(),
                         p('Aplikasi ini dibuat untuk dapat melihat sebaran masing-masing variabel dari data dengan mengeluarkan plot yang disebutkan di atas baik secara individu maupun korelasinya.'),
                         br()),
                
                tabPanel("Data",
                                        
                         fluidRow(
                           column(
                             width = 12,
                             h1("Data", style = "color: #1D428B; text-align:center;"),
                           )
                         ),
                         fluidRow(
                           column(
                             width = 12,
                             h3("Pada bagian ini anda dapat memasukkan data yang akan dieksplorasi sebarannya. Data yang digunakan merupakan sepasang data numerik yang disimpan dalam file berbentuk csv. ", style = "text-align:left"),
                           )
                         ),
                         fluidRow(
                           column(
                             width = 12,
                             h2("Upload Data", style = "color: #1D428B; text-align:left;")
                           )
                         ),
                         fluidRow(
                           column(
                             width = 12,
                             fileInput("text1", "Choose CSV file",
                                       accept = c(
                                         "text/csv",
                                         "text/comma-separated-values,text/plain",
                                         ".csv")
                             )
                           )
                         ),
                         fluidRow(
                           column(
                             width = 12,
                             radioButtons("pemisah", "Separator",
                                          choices = c(Comma = ",",
                                                      Semicolon = ";",
                                                      Tab = "\t"),
                                          selected = ",", inline = TRUE)
                           )
                         ),
                         fluidRow(
                           column(
                             width = 12,
                             h2("Tabel Data", style = "color: #1D428B; text-align: left;")
                           )
                         ),
                         fluidRow(
                           column(
                             width = 12,
                             DTOutput("cetak_data")
                           )
                         )
                ),
                tabPanel("Plot Variabel 1",
                         fluidRow(
                           column(
                             width = 12,
                             h2("Variabel 1", style = "color: #1D428B; text-align:left;"),
                             h2("Box Plot"),    
                             plotOutput("ADE.boxPlot"),
                             h2("Histogram"),    
                             plotOutput("ADE.histogram"),
                             h2("QQ Plot"),    
                             plotOutput("ADE.QQ"),
                             h2("Density Plot"),
                             plotOutput("ADE.density"),
                           )
                         )
                ),
                tabPanel("Plot Variabel 2",
                         fluidRow(
                           column(
                             width = 12,
                             h4("Variabel 2", style = "color: #1D428B; text-align:left;"),
                             h2("Box Plot"),    
                             plotOutput("ADE.boxPlot1"),
                             h2("Histogram"),    
                             plotOutput("ADE.histogram1"),
                             h2("QQ Plot"),    
                             plotOutput("ADE.QQ1"),
                             h2("Density Plot"),
                             plotOutput("ADE.density1"),
                           )
                         )
                ),
                tabPanel("Plot Korelasi",
                         fluidRow(
                           column(
                             width = 12,
                             h4("Korelasi", style = "color: #1D428B; text-align:left;"),
                             h2("Scatter Plot"),    
                             plotOutput("ADE.scatterplot"),
                           )
                         )
                )
    )
  )
))
