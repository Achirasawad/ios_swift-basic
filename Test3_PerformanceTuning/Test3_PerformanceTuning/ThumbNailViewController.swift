
import UIKit

class ThumbNailViewController: UITableViewController {
    
    @IBOutlet var thumbNailTableView: UITableView!
    
    let datasourceList: [String] = TestData.datasourceList
    let counts = 10
    var firstImage = UIImage()
    var secondImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thumbNailTableView.delegate = self
        thumbNailTableView.dataSource = self
        setupImage()
    }
    
    func setupImage(){
        firstImage = base64Image(imageString: datasourceList[0])!
        secondImage = base64Image(imageString: datasourceList[1])!
    }

    func base64Image(imageString: String) -> UIImage?{
        if let data = Data(base64Encoded: imageString) {
            if let image = UIImage(data: data) {
                return image
            }
        }
        return nil
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return datasourceList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return counts
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ThumbNailCell
        cell.selectionStyle = .none
        cell.firstImageView.image = firstImage
        cell.secondImageView.image = secondImage
        return cell
    }
}
