library('plotly')
p <- plot_ly(
  data = iris,
  x = ~Sepal.Length,
  y = ~Sepal.Width,
  color = ~Species,
  colors = c("Red","Blue","Yellow"),
  type = "scatter",
  mode = "markers"
) %>% 
  layout(
    legend = list(title = list(text = "Species")),
    xaxis = list(title = "Sepal Length"),
    yaxis = list(title = "Sepal width")
  )
p

# Adding modebar buttons
p %>% 
  config(
    modeBarButtonsToAdd = 'toggleSpike'
  )
p %>% 
  config(
    modeBarButtonsToAdd = list(
      'drawline',
      'drawrect',
      'drawcircle',
      'drawpenpath',
      'drawclosepath',
      'eraseshape'
    )
  )
# Removing modebar buttons
p %>% 
  config(
    modeBarButtonsToRemove = list(
      'toImage',
      'zoom',
      'pan'
    )
  )
# Remove plotly logo
p %>% 
  config(
    displaylogo = FALSE
  )