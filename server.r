shinyServer(function(input, output, session){
  output$cetak_data <- renderDT({
    
    dapatkan_file <- input$text1
    
    if (is.null(dapatkan_file))
      return(NULL)
    
    read.csv(dapatkan_file$datapath, sep = input$pemisah)
  })
  data_ku <- reactive({
    
    dapatkan_file <- input$text1
    
    if (is.null(dapatkan_file))
      return(NULL)
    
    read.csv(dapatkan_file$datapath, sep = input$pemisah)
  })
  
  # Create boxplot
  ADE.boxPlot <- function(){
    dat <- data_ku()
    boxplot(dat[,1], las=1, xlab = "Variabel 1",
            ylab = "Nilai", col = "purple")
  }
  
  output$ADE.boxPlot <- renderPlot({
    print(ADE.boxPlot())
  })
  
  # Create boxplot1
  ADE.boxPlot1 <- function(){
    dat <- data_ku()
    boxplot(dat[,2], las=1, xlab = "Variabel 2",
            ylab = "Nilai", col = "purple4")
  }
  
  output$ADE.boxPlot1 <- renderPlot({
    print(ADE.boxPlot1())
  })
  
  # Create histogram
  ADE.histogram <- function(){
    dat <- data_ku()
    hist(dat[,1], las=1, xlab = "Variabel 1",
              ylab = "Nilai", col = "yellow")
  }
  
  output$ADE.histogram <- renderPlot({
    print(ADE.histogram())
  })
  
  # Create histogram1
  ADE.histogram1 <- function(){
    dat <- data_ku()
    hist(dat[,2], las=1, xlab = "Variabel 2",
         ylab = "Nilai", col = "gold2")
  }
  
  output$ADE.histogram1 <- renderPlot({
    print(ADE.histogram1())
  })
  
  # Create QQ
  ADE.QQ <- function(){
    dat <- data_ku()
    sorted_data <- sort(dat[,1])
    theoretical_quantiles <- qnorm(ppoints(length(sorted_data)))
    plot(theoretical_quantiles, sorted_data, main = "QQ-Plot", xlab = "Quantile Teoritis", ylab = "Quantile Data", col = "lightblue")
  }
  
  output$ADE.QQ <- renderPlot({
    print(ADE.QQ())
  })
  
  # Create QQ1
  ADE.QQ1 <- function(){
    dat <- data_ku()
    sorted_data <- sort(dat[,2])
    theoretical_quantiles <- qnorm(ppoints(length(sorted_data)))
    plot(theoretical_quantiles, sorted_data, main = "QQ-Plot", xlab = "Quantile Teoritis", ylab = "Quantile Data", col = "darkblue")
  }
  
  output$ADE.QQ1 <- renderPlot({
    print(ADE.QQ1())
  })
  
  # Create Density
  ADE.density <- function(){
    dat <- data_ku()
    dens <- density(dat[,1])
    plot(dens, main = "Density Plot", xlab = "Variabel 1", ylab = "Density", col = "green")
  }
  
  output$ADE.density <- renderPlot({
    print(ADE.density())
  })
  
  # Create Density1
  ADE.density1 <- function(){
    dat <- data_ku()
    dens <- density(dat[,2])
    plot(dens, main = "Density Plot", xlab = "Variabel 2", ylab = "Density", col = "darkgreen")
  }
  
  output$ADE.density1 <- renderPlot({
    print(ADE.density1())
  })
  
  # Create Scatter Plot
  ADE.scatterplot <- function(){
    dat <- data_ku()
    plot(dat[,1], dat[,2], main = "Scatter Plot", xlab = "Variabel 1", ylab = "Variabel 2", col = "darkred")
  }
  
  output$ADE.scatterplot <- renderPlot({
    print(ADE.scatterplot())
  })
})
