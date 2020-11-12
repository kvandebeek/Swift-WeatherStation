import Foundation

// MARK: - Meting
struct Meting: Codable {
    let metingen: Metingen
    
    init()
    {
        metingen = Metingen.init()
    }
}

// MARK: - Metingen
struct Metingen: Codable {
    let keuken, berging, zolder, buiten, buitenmax, buitenmin: Detail
    
    init()
    {
        keuken = Detail.init()
        berging = Detail.init()
        zolder = Detail.init()
        buiten = Detail.init()
        buitenmax = Detail.init()
        buitenmin = Detail.init()
    }    
}

// MARK: - Berging
struct Detail: Codable {
    let meting, datum: String
    
    init()
    {
        meting = "1"
        datum = "2"
    }
}




