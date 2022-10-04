import grafica.*;


GPlot plot;

void setup() {
  size(800, 410);


  Table table = loadTable("Broadway.csv");


  // Save the data in GPointsArrays
  GPointsArray points = new GPointsArray();


  for (int row = 0; row < table.getRowCount(); row++) {

    int Count = table.getInt(row, 1);
    int Time = table.getInt(row, 0);

    points.add(Time, Count);

  }

  // Create the plot
  plot = new GPlot(this);
  plot.setDim(700, 300);
  plot.setTitleText("Oktoberfest vs. Bundestagwahl Google search history");
  plot.getXAxis().setAxisLabelText("Year");
  plot.getYAxis().setAxisLabelText("Google normalized searches");
  plot.getXAxis().setNTicks(10);
  plot.setPoints(points);
  plot.setLineColor(color(100, 100, 100));

  plot.activatePointLabels();
}

void draw() {
  background(255);

  // Draw the plot  
  plot.beginDraw();
  plot.drawBox();
  plot.drawXAxis();
  plot.drawYAxis();
  plot.drawTitle();
  plot.drawGridLines(GPlot.VERTICAL);
  plot.drawFilledContours(GPlot.HORIZONTAL, 0);
  plot.drawLegend(new String[] {"Oktoberfest", "Bundestagswahl"}, new float[] {0.07, 0.22}, 
                  new float[] {0.92, 0.92});
  plot.drawLabels();
  plot.endDraw();
}  
