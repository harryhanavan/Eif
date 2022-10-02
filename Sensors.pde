int f24 = 00;
int fMinute = 00;
int fSecond = 01;
  
//change csv in eif1 to hc for utc time
String eif1 = "https://eif-research.feit.uts.edu.au/api/csv/?";
String eif2 = "&rFamily=people_sh&rSensor=";
String BrSensor = "CB11.PC02.14.Broadway&rSubSensor=CB11.02.Broadway.East+";
String WaSensor = "CB11.PC00.06.West&rSubSensor=CB11.00.Wattle+";
String JoSensor = "CB11.PC02.16.JonesStEast&rSubSensor=CB11.02.JonesSt+";
//String InOut = "In";
String eif3 = "#collaspeOne";
  
  
  void eif(String Year, String Month, String Day, String t24, String tMinute,String tSecond){
    String FromDate = "rFromDate=" + Year + "-" + Month + "-" + Day + "T" + f24 + "%3A" + fMinute + "%3A" + fSecond + "&";
    String ToDate = "rToDate=" + Year + "-" + Month + "-" + Day + "T" + t24 + "%3A" + tMinute + "%3A" + tSecond;
    //String eifFull = eif1 + FromDate + ToDate + eif2 + Sensor + InOut + eif3;
  
    BrIn = eif1 + FromDate + ToDate + eif2 + BrSensor + "In" + eif3;
    BrOut = eif1 + FromDate + ToDate + eif2 + BrSensor + "Out" + eif3;
    JoIn = eif1 + FromDate + ToDate + eif2 + JoSensor + "In" + eif3;
    JoOut = eif1 + FromDate + ToDate + eif2 + JoSensor + "Out" + eif3;
    WaIn = eif1 + FromDate + ToDate + eif2 + WaSensor + "In" + eif3;
    WaOut = eif1 + FromDate + ToDate + eif2 + WaSensor + "Out" + eif3;
    loadTables();

  //return eifFull;
}

void loadTables(){
  Table BroadwayIn = loadTable(BrIn, "csv");
  int n = 0;
  while (n < BroadwayIn.getRowCount()){
  
  }
  Table BroadwayOut = loadTable(BrOut, "csv");
  
  Table JonesIn = loadTable(JoIn, "csv");
  Table JonesOut =loadTable(JoOut, "csv");
  
  Table WattleIn = loadTable(WaIn, "csv");
  Table WattleOut = loadTable(WaOut, "csv");
  
  print(BroadwayIn.getString(0,1));
}
