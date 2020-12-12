

import UIKit

class PlanetDetailViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetDiameterLabel: UILabel!
    @IBOutlet weak var planetMaxDistanceFromSunLabel: UILabel!
    @IBOutlet weak var planetDayLengthLabel: UILabel!

    //MARK: - Properties
    /// Landing pad for the `Planet` object being handed off from the `PlanetListViewController`'s `prepare(forSegue:)` method
    var planet: Planet?

    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }

    //MARK: - Methods
    func updateViews() {
        loadViewIfNeeded()
        /// Unwrap the landing pad to make sure a `Planet` object was successfully handed off, otherwise exit the function
        guard let planet = planet else { return }
        /// Assign the views of the `PlanetDetailViewController` to the various properties on the unwrapped `Planet` object
        planetNameLabel.text = planet.planetName
        planetImageView.image = UIImage(named: planet.imageName)
        planetDiameterLabel.text = "\(planet.diameter) 張"
        planetMaxDistanceFromSunLabel.text = "\(planet.millionKMsFromSun) 萬元"
        planetDayLengthLabel.text = "\(planet.dayLength) 次"
    }
}
