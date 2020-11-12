import UIKit

class tempBinnen: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    
    lazy var lblTempKeukenTitle = titleLabel()
    lazy var lblTempBergingTitle = titleLabel()
    lazy var lblTempZolderTitle = titleLabel()
   
    lazy var lblTempKeuken = valueLabel()
    lazy var lblTempBerging = valueLabel()
    lazy var lblTempZolder = valueLabel()

    lazy var lblTempKeukenDate = datetimeLabel()
    lazy var lblTempBergingDate = datetimeLabel()
    lazy var lblTempZolderDate = datetimeLabel()
    
    lazy var lblSpacer1 = spacerLabel()
    lazy var lblSpacer2 = spacerLabel()
    lazy var lblSpacer3 = spacerLabel()
    
    var meting: Meting = Meting.init()
    var data: dataLoad = dataLoad()
    var help: helper = helper()
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateViews()
    }
    
    func updateViews()
    {   let start = CFAbsoluteTimeGetCurrent()
        let JSON = data.loadText(url: "https://realtime.fookus.be/realtime/php/output/metingen.json")
        let jsonData = JSON.data(using: .utf8)!
        meting = try! JSONDecoder().decode(Meting.self, from: jsonData)
        createViews()
        let end = CFAbsoluteTimeGetCurrent()
        let elapsed = end - start
        print("elapsed binnen: ", elapsed)
    }
       
    func createViews()
    {        
        buildView(titleLabel: lblTempKeukenTitle,
                  valueLabel: lblTempKeuken,
                  datetimeLabel: lblTempKeukenDate,
                  spacerLabel: lblSpacer1,
                  titleLabelText: "Temperatuur Keuken",
                  valueLabelText: self.meting.metingen.keuken.meting,
                  datetimeLabelText: self.meting.metingen.keuken.datum)
       
        buildView(titleLabel: lblTempBergingTitle,
                  valueLabel: lblTempBerging,
                  datetimeLabel: lblTempBergingDate,
                  spacerLabel: lblSpacer2,
                  titleLabelText: "Temperatuur Berging",
                  valueLabelText: self.meting.metingen.berging.meting,
                  datetimeLabelText:self.meting.metingen.berging.datum)
        
        buildView(titleLabel: lblTempZolderTitle,
                  valueLabel: lblTempZolder,
                  datetimeLabel: lblTempZolderDate,
                  spacerLabel: lblSpacer3,
                  titleLabelText: "Temperatuur Zolder",
                  valueLabelText: self.meting.metingen.zolder.meting,
                  datetimeLabelText: self.meting.metingen.berging.datum)
    }
    
    func buildView(titleLabel: titleLabel, valueLabel: valueLabel, datetimeLabel: datetimeLabel, spacerLabel: spacerLabel, titleLabelText: String, valueLabelText: String, datetimeLabelText: String)
    {
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(valueLabel)
        stackView.addArrangedSubview(datetimeLabel)
        stackView.addArrangedSubview(spacerLabel)
        
        titleLabel.text = titleLabelText
        valueLabel.text = valueLabelText
        datetimeLabel.text = datetimeLabelText
    }
}
