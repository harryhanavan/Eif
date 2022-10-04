
     GPointsArray points = new GPointsArray();
    int row = 0;
    while (row < BroadwayIn.getRowCount()){
      points.add(BroadwayIn.getInt(row,0),BroadwayIn.getInt(row,1));
      row++;
      }
        // Create a new plot and set its position on the screen

  GPlot plot = new GPlot(this, 25, 25);

  // Set the plot title and the axis labels
  plot.setTitleText("Broadway In");
  plot.getXAxis().setAxisLabelText("x axis");
  plot.getYAxis().setAxisLabelText("y axis");

  // Add the points
  plot.setPoints(points);

  // Draw it!
  plot.defaultDraw();
    


  
