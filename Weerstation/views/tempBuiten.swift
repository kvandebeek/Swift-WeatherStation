import UIKit

class tempBuiten: UIViewController {    
    
    @IBOutlet weak var stackView: UIStackView!
    
    lazy var lblTempBuitenTitle = titleLabel()
    lazy var lblTempBuitenMaxTitle = titleLabel()
    lazy var lblTempBuitenMinTitle = titleLabel()
    
    lazy var lblTempBuiten = valueLabel()
    lazy var lblTempBuitenMax = valueLabel()
    lazy var lblTempBuitenMin = valueLabel()
    
    lazy var lblTempBuitenDate = datetimeLabel()
    lazy var lblTempBuitenMaxDate = datetimeLabel()
    lazy var lblTempBuitenMinDate = datetimeLabel()
    
    lazy var lblSpacer1 = spacerLabel()
    lazy var lblSpacer2 = spacerLabel()
    lazy var lblSpacer3 = spacerLabel()
    
    var meting: Meting = Meting.init()
    var data: dataLoad = dataLoad()
    var help: helper = helper()
    
    override func viewDidLoad() {
        super.viewDidLoad();        
        updateViews()
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
        print("elapsed buiten: ", elapsed)
    }
    
    func createViews()
    {
        buildView(titleLabel: lblTempBuitenTitle,
                  valueLabel: lblTempBuiten,
                  datetimeLabel: lblTempBuitenDate,
                  spacerLabel: lblSpacer1,
                  titleLabelText: "Temperatuur Buiten",
                  valueLabelText: self.meting.metingen.buiten.meting,
                  datetimeLabelText: self.meting.metingen.buiten.datum)
        
        buildView(titleLabel: lblTempBuitenMinTitle,
                  valueLabel: lblTempBuitenMin,
                  datetimeLabel: lblTempBuitenMinDate,
                  spacerLabel: lblSpacer2,
                  titleLabelText: "Temperatuur Buiten Minimum",
                  valueLabelText: meting.metingen.buitenmin.meting,
                  datetimeLabelText: meting.metingen.buitenmin.datum)
        
        buildView(titleLabel: lblTempBuitenMaxTitle,
                  valueLabel: lblTempBuitenMax,
                  datetimeLabel: lblTempBuitenMaxDate,
                  spacerLabel: lblSpacer3,
                  titleLabelText: "Temperatuur Buiten Maximum",
                  valueLabelText: meting.metingen.buitenmax.meting,
                  datetimeLabelText: meting.metingen.buitenmax.datum)
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
