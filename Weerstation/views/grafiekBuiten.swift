import UIKit
import Charts

class chartView: UIViewController {
    
    @IBOutlet weak var tempBuitenLineChart: LineChartView!
    @IBOutlet weak var tempBinnenLinechart: LineChartView!
    
    var data: dataModel = dataModel.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateView()
    }
    
    func updateView()
    {
        let start = CFAbsoluteTimeGetCurrent()
        let data = dataModel.init()
        drawLineChart(chartName: tempBuitenLineChart, chartTitle: "Temperatuur Buiten", dataSource: data.tempBuitenChartData, legendSource: data.tempBuitenChartDataHours)
        drawLineChart(chartName: tempBinnenLinechart, chartTitle: "Temperatuur Binnen", dataSource: data.tempBinnenChartData, legendSource: data.tempBinnenChartDataHours)
        let end = CFAbsoluteTimeGetCurrent()
        let elapsed = end - start
        print("elapsed grafiek: ", elapsed)
    }
       
    func drawLineChart(chartName: LineChartView, chartTitle: String, dataSource: String, legendSource: String)
    {
        let set = LineChartDataSet(values: createData(dataSource: dataSource), label: chartTitle)
        formatSet(set: set)
        formatLegend(chartView: chartName, legendSource: legendSource)
        chartName.data = LineChartData(dataSets: [set])
        chartName.dragEnabled = false
        chartName.pinchZoomEnabled = false
    }
    
    func createData(dataSource: String) -> [ChartDataEntry]
    {
        let startHour: Int = Calendar.current.component(.hour, from: Date()) - 17
        var counter: Double = startHour.doubleValue
        let stringChart = String(dataSource)
        let array = stringChart.components(separatedBy: ";")
        var values: [ChartDataEntry] = [ChartDataEntry].init()
        
        for item in array
        {
  
            values.append(ChartDataEntry(x: counter, y: (item as NSString).doubleValue, data: item as AnyObject))
            counter+=1
        }
        
        values.remove(at: 18)
        return values
    }
    
    func formatSet(set: LineChartDataSet)
    {
        set.lineWidth = 2
        set.setColor(.black)
        set.circleRadius = 3
        set.setCircleColors(.black)
        set.drawCircleHoleEnabled = false
        set.valueFont = UIFont(name: "Staatliches-Regular", size: 15)!
        set.valueTextColor = UIColor.black
        set.mode = .cubicBezier
        
        let gradientColors = [ChartColorTemplates.colorFromString("#20264142").cgColor, ChartColorTemplates.colorFromString("#FF7A9D96").cgColor]
        let gradient = CGGradient(colorsSpace: nil, colors: gradientColors as CFArray, locations: nil)!
        
        set.fillAlpha = 1
        set.fill = LinearGradientFill(gradient: gradient, angle: 90)
        set.drawFilledEnabled = true
        set.axisDependency = .left
    }
  
    func formatLegend(chartView: LineChartView, legendSource: String)
    {
        let chartViewLegend = chartView.legend
        chartViewLegend.enabled = true
        let xAxis = chartView.xAxis
 
        let chartLabels = legendSource.components(separatedBy: ";")
        print(chartLabels)
        
        xAxis.avoidFirstLastClippingEnabled = false
        
        xAxis.labelFont = UIFont(name: "Staatliches-Regular", size: 10)!
        xAxis.labelCount = 9
        xAxis.avoidFirstLastClippingEnabled = true
        xAxis.valueFormatter = IndexAxisValueFormatter(values: chartLabels)
               
        let leftAxis = chartView.leftAxis
        let rightAxis = chartView.rightAxis
        
        leftAxis.axisMinimum = -5
        leftAxis.axisMaximum = 30
        
        leftAxis.drawGridLinesEnabled = true
        leftAxis.granularityEnabled = true
       
        leftAxis.enabled = false
        rightAxis.enabled = false
    }
}

extension Int {
  var doubleValue: Double {
    return Double(self)
  }
}

extension Int {
  var stringValue: String {
    return String(self)
  }
}
